class TranslactionsController < ApplicationController
  def create
    @mappings = Mapping.order('before')
    @mappings.each do |map|
      params[:code] = params[:code].gsub(/#{map.before}/i) do |s|
        "#{s}#{map.after}"
      end
    end

    @article = Article.new(:code => params[:code])
    render :template => "home/index"
  end
end
