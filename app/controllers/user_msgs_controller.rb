class UserMsgsController < ApplicationController
  # GET /user_msgs
  # GET /user_msgs.json
  def index
    @user_msgs = UserMsg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_msgs }
    end
  end

  # GET /user_msgs/1
  # GET /user_msgs/1.json
  def show
    @user_msg = UserMsg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_msg }
    end
  end

  # GET /user_msgs/new
  # GET /user_msgs/new.json
  def new
    @user_msg = UserMsg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_msg }
    end
  end

  # GET /user_msgs/1/edit
  def edit
    @user_msg = UserMsg.find(params[:id])
  end

  # POST /user_msgs
  # POST /user_msgs.json
  def create
    @user_msg = UserMsg.new(params[:user_msg])

    respond_to do |format|
      if @user_msg.save
        format.html { redirect_to @user_msg, notice: 'User msg was successfully created.' }
        format.json { render json: @user_msg, status: :created, location: @user_msg }
      else
        format.html { render action: "new" }
        format.json { render json: @user_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_msgs/1
  # PUT /user_msgs/1.json
  def update
    @user_msg = UserMsg.find(params[:id])

    respond_to do |format|
      if @user_msg.update_attributes(params[:user_msg])
        format.html { redirect_to @user_msg, notice: 'User msg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_msgs/1
  # DELETE /user_msgs/1.json
  def destroy
    @user_msg = UserMsg.find(params[:id])
    @user_msg.destroy

    respond_to do |format|
      format.html { redirect_to user_msgs_url }
      format.json { head :no_content }
    end
  end
end
