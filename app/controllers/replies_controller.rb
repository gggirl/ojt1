class RepliesController < ApplicationController
	#http_basic_authenticate_with :password =>, :only => :destroy
    #before_action :authenticate_user!

	def create
	    @forum = Forum.find(params[:forum_id])
		
		@reply = @forum.replies.create(params[:reply])
	    redirect_to forum_path(@forum)
	end

	def destroy
		@forum = Forum.find(params[:forum_id])
		@reply = @forum.replies.find(params[:id])
		@reply.destroy
		redirect_to forum_path(@forum)
    end
end
