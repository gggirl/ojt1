class ChatmsgController < ApplicationController
  def index
  	@chatmsgs = Chatmsg.all
  end

  def create
  	@chatmsg = Chatmsg.create!(params[:chatmsg])
  	if @chatmsg.save
  		flash[:notice] ="Successfully create message."
  		repond_to do |format|
  			format.js
  		end
  end
end
