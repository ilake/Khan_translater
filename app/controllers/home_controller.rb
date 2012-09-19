class HomeController < ApplicationController
  def index
    @mappings = Mapping.all
    @article = Article.new(:code => '<!-- Past Your code here -->')
  end
end
