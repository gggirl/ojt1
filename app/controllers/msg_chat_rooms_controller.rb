class MsgChatRoomsController < ApplicationController
  # GET /msg_chat_rooms
  # GET /msg_chat_rooms.json
  def index
    @msg_chat_rooms = MsgChatRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @msg_chat_rooms }
    end
  end

  # GET /msg_chat_rooms/1
  # GET /msg_chat_rooms/1.json
  def show
    @msg_chat_room = MsgChatRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @msg_chat_room }
    end
  end

  # GET /msg_chat_rooms/new
  # GET /msg_chat_rooms/new.json
  def new
    @msg_chat_room = MsgChatRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @msg_chat_room }
    end
  end

  # GET /msg_chat_rooms/1/edit
  def edit
    @msg_chat_room = MsgChatRoom.find(params[:id])
  end

  # POST /msg_chat_rooms
  # POST /msg_chat_rooms.json
  def create
    @msg_chat_room = MsgChatRoom.new(params[:msg_chat_room])

    respond_to do |format|
      if @msg_chat_room.save
        format.html { redirect_to @msg_chat_room, notice: 'Msg chat room was successfully created.' }
        format.json { render json: @msg_chat_room, status: :created, location: @msg_chat_room }
      else
        format.html { render action: "new" }
        format.json { render json: @msg_chat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /msg_chat_rooms/1
  # PUT /msg_chat_rooms/1.json
  def update
    @msg_chat_room = MsgChatRoom.find(params[:id])

    respond_to do |format|
      if @msg_chat_room.update_attributes(params[:msg_chat_room])
        format.html { redirect_to @msg_chat_room, notice: 'Msg chat room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @msg_chat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /msg_chat_rooms/1
  # DELETE /msg_chat_rooms/1.json
  def destroy
    @msg_chat_room = MsgChatRoom.find(params[:id])
    @msg_chat_room.destroy

    respond_to do |format|
      format.html { redirect_to msg_chat_rooms_url }
      format.json { head :no_content }
    end
  end
end
