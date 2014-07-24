class RoomMessagesController < ApplicationController
  # GET /room_messages
  # GET /room_messages.json
  def index
    @room_messages = RoomMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @room_messages }
    end
  end

  # GET /room_messages/1
  # GET /room_messages/1.json
  def show
    @room_message = RoomMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room_message }
    end
  end

  # GET /room_messages/new
  # GET /room_messages/new.json
  def new
    @room_message = RoomMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room_message }
    end
  end

  # GET /room_messages/1/edit
  def edit
    @room_message = RoomMessage.find(params[:id])
  end

  # POST /room_messages
  # POST /room_messages.json
  def create
    @room_message = RoomMessage.new(params[:room_message])

    respond_to do |format|
      if @room_message.save
        format.html { redirect_to @room_message, notice: 'Room message was successfully created.' }
        format.json { render json: @room_message, status: :created, location: @room_message }
      else
        format.html { render action: "new" }
        format.json { render json: @room_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /room_messages/1
  # PUT /room_messages/1.json
  def update
    @room_message = RoomMessage.find(params[:id])

    respond_to do |format|
      if @room_message.update_attributes(params[:room_message])
        format.html { redirect_to @room_message, notice: 'Room message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_messages/1
  # DELETE /room_messages/1.json
  def destroy
    @room_message = RoomMessage.find(params[:id])
    @room_message.destroy

    respond_to do |format|
      format.html { redirect_to room_messages_url }
      format.json { head :no_content }
    end
  end
end
