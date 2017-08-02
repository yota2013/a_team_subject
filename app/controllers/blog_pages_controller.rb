class BlogPagesController < ApplicationController
 
  def home
   @datas = Contribution.all
   @contribution = Contribution.new
  end
  
  
  #本稿（スレッド）の生成
  def contributionCreate
      puts "data"
      puts params[:contribution][:name]
      @newData = Contribution.new(name: params[:contribution][:name].to_s ,thread_link: " ")
      @newData.save
      #TODO:まずDBにURLがいるのかどうかいらないなら消す，saveしないとIDが取得できない
      @newData.update(thread_link: '/comments/'+ @newData.id.to_s)
      redirect_back(fallback_location: root_path)
  end
  
  def comments
      puts "comments" + params[:id].to_s
      @id = params[:id]
      @contributionData = Contribution.find(@id)
      @commentsDatas = @contributionData.comments.all
      puts @commentsData
      @newComment = Comment.new()
      #html側でデフォルト値を代入している
      @newComment.contribution_id =  @contributionData.id
  end
  
  #コメント生成
  def commentCreate
    puts "commentCreate"
    @params = params[:comment]
    @contributionData = Contribution.find(@params[:contribution_id])
    @newCommentdata = Comment.new(contribution_id: @params[:contribution_id],
    comment_data: @params[:comment_data] )
    @newCommentdata.save
    @contributionData.comments << @newCommentdata
    @contributionData.ncomment  = @contributionData.comments.count
    @contributionData.save 
    redirect_back(fallback_location: root_path) 
  end
      
  #いいねのupdate
  def update
    puts "update"
    puts params[:id]#idを受信可能
    @updateData = Contribution.find(params[:id])
    puts @updateData.favo
    @updateData = @updateData.update_attribute(:favo ,@updateData.favo + 1 )
    redirect_back(fallback_location: root_path) #updateから元のページに戻る
  end
  
  def show
      
  end
end
