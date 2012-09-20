class HomeController < ApplicationController
  def index
    @mappings = Mapping.order("before")
    @article = Article.new(:code => '<!-- Paste Your code here -->')
  end
end
