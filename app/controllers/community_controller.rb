class CommunityController < ApplicationController
  def create
    @community = Community.new
    @community.title = params[:community_title]
    @community.content = params[:community_content]
    if @community.save
      redirect_to '/community/read'
    else
      render :text => @community.errors.messages
    end
  end
  
  def form
    @one_community = Community.find(params[:community_id])
  end

  def read
    @every_community = Community.all.order(id: :DESC)
  end

  def edit
    @one_community = Community.find(params[:community_id])
    @one_community.title = params[:community_title]
    @one_community.content = params[:community_content]
    @one_community.save
    
    redirect_to "/community/read"
  end

  def destroy
    @one_community = Community.find(params[:community_id])
    @one_community.destroy
    
    redirect_to "/community/read"
  end
  
  def comment
    @reply = Comment.new
    @reply.community_id = params[:community_id]
    @reply.comment = params[:comment]
    if @reply.save
      redirect_to :back
    else
      render :text => @reply.errors.messages
    end
  end
end
