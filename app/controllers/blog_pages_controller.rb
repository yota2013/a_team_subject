class BlogPagesController < ApplicationController
 
  def home
   @title = "MinBlog"
   @datas = Contribution.all
   @contribution = Contribution.new
  end
  
  def create
      puts "Create"
      #@contribution = User.new(params[:name])
      #@contribution.save
      redirect_to :controller => :blog_pages, :action => :home
  end
      
  def comments
      
  end
end
