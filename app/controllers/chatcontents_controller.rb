class ChatcontentsController < ApplicationController
  # GET /chatcontents
  # GET /chatcontents.json
  def index
    @chatcontents = Chatcontent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chatcontents }
    end
  end

  # GET /chatcontents/1
  # GET /chatcontents/1.json
  def show
    @chatcontent = Chatcontent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chatcontent }
    end
  end

  # GET /chatcontents/new
  # GET /chatcontents/new.json
  def new
    @chatcontent = Chatcontent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chatcontent }
    end
  end

  # GET /chatcontents/1/edit
  def edit
    @chatcontent = Chatcontent.find(params[:id])
  end

  # POST /chatcontents
  # POST /chatcontents.json
  def create
    @chatcontent = Chatcontent.new(params[:chatcontent])

    respond_to do |format|
      if @chatcontent.save
        format.html { redirect_to @chatcontent, notice: 'Chatcontent was successfully created.' }
        format.json { render json: @chatcontent, status: :created, location: @chatcontent }
      else
        format.html { render action: "new" }
        format.json { render json: @chatcontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chatcontents/1
  # PUT /chatcontents/1.json
  def update
    @chatcontent = Chatcontent.find(params[:id])

    respond_to do |format|
      if @chatcontent.update_attributes(params[:chatcontent])
        format.html { redirect_to @chatcontent, notice: 'Chatcontent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chatcontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatcontents/1
  # DELETE /chatcontents/1.json
  def destroy
    @chatcontent = Chatcontent.find(params[:id])
    @chatcontent.destroy

    respond_to do |format|
      format.html { redirect_to chatcontents_url }
      format.json { head :no_content }
    end
  end
end
