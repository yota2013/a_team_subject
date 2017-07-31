class BlogPagesController < ApplicationController
 
  def home
   @title = "MinBlog"
   @datas = Contribution.all   
  end

  def comments
  end
end
