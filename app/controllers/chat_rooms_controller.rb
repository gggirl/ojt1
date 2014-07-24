class ChatRoomsController < ApplicationController
  # GET /chat_rooms
  # GET /chat_rooms.json
  def index
    @chat_rooms = ChatRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chat_rooms }
    end
  end

  # GET /chat_rooms/1
  # GET /chat_rooms/1.json
  def show
  @chat_room = ChatRoom.find(params[:id])
   # @chat_room = ChatRoom.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chat_room }
    end
  end

  # GET /chat_rooms/new
  # GET /chat_rooms/new.json
  def new
    @chat_room = ChatRoom.new

    #@chat_room = ChatRoom.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chat_room }
    end
  end
  

#for mon




  # GET /chat_rooms/1/edit
  def edit
    @chat_room = ChatRoom.find(params[:id])
  end

  # POST /chat_rooms
  # POST /chat_rooms.json
  def create
    @chat_room = ChatRoom.new(params[:chat_room])

    respond_to do |format|
      if @chat_room.save
        format.html { redirect_to @chat_room, notice: 'Chat room was successfully created.' }
        format.json { render json: @chat_room, status: :created, location: @chat_room }
      else
        format.html { render action: "new" }
        format.json { render json: @chat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chat_rooms/1
  # PUT /chat_rooms/1.json
  def update
    @chat_room = ChatRoom.find(params[:id])

    respond_to do |format|
      if @chat_room.update_attributes(params[:chat_room])
        format.html { redirect_to @chat_room, notice: 'Chat room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_rooms/1
  # DELETE /chat_rooms/1.json
  def destroy
    @chat_room = ChatRoom.find(params[:id])
    @chat_room.destroy

    respond_to do |format|
      format.html { redirect_to chat_rooms_url }
      format.json { head :no_content }
    end
  end
end
