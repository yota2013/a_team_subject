class BlogPagesController < ApplicationController
 
  def home
   @datas = Contribution.all
   @contribution = Contribution.new
  end
  
  def create
      puts "data"
      puts params[:contribution][:name]
      @newData = Contribution.new(name: params[:contribution][:name].to_s ,thread_link: " ")
      @newData.save
      #TODO:まずDBにURLがいるのかいらないなら消す，saveしないとID取得できないこと
      @newData.update(thread_link: '/comments/'+ @newData.id.to_s)
      redirect_to :controller => :blog_pages, :action => :home
  end
      
  def comments
      puts params[:id]
      
  end
  
  def show
      
  end
end
