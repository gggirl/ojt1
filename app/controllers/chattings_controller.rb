class ChattingsController < ApplicationController
  # GET /chattings
  # GET /chattings.json
  def index
    @chattings = Chatting.all
  #Chatting.destroy_all
    
    #respond_to do |format|
      #format.html # index.html.erb
      #format.json { render json: @chattings }
   # end
  end

  # GET /chattings/1
  # GET /chattings/1.json
  def show
    @chatting = Chatting.find(params[:id])

    #respond_to do |format|
      #format.html # show.html.erb
     # format.json { render json: @chatting }
    #end
  end

  # GET /chattings/new
  # GET /chattings/new.json
  def new
    @chatting = Chatting.new
    

    #respond_to do |format|
      #format.html # new.html.erb
      #format.json { render json: @chatting }
   # end
  end

  # GET /chattings/1/edit
  def edit
    @chatting = Chatting.find(params[:id])
  end

  # POST /chattings
  # POST /chattings.json
  def create
    @chatting = Chatting.create!(params[:chatting])

    PrivatePub.publish_to("/chattings/new", chatting: 'msg')

    respond_to do |format|
      if @chatting.save
        format.html { redirect_to chattings_path, notice: 'Chatting was successfully created.' }
        format.json { render json: @chatting, status: :created, location: @chatting }
      else
        format.html { render action: "new" }
        format.json { render json: @chatting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chattings/1
  # PUT /chattings/1.json
  def update
    @chatting = Chatting.find(params[:id])

    respond_to do |format|
      if @chatting.update_attributes(params[:chatting])
        format.html { redirect_to @chatting, notice: 'Chatting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chatting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chattings/1
  # DELETE /chattings/1.json
  def destroy
    @chatting = Chatting.find(params[:id])
    @chatting.destroy

    respond_to do |format|
      format.html { redirect_to chattings_url }
      format.json { head :no_content }
    end
  end

  
end



