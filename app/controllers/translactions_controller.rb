class TranslactionsController < ApplicationController
  def create
    @mappings = Mapping.all
    @mappings.each do |map|
      params[:code] = params[:code].gsub(map.before, map.after)
    end

    @article = Article.new(:code => params[:code])
    render :template => "home/index"
  end
end
