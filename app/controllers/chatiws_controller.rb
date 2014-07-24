class ChatiwsController < ApplicationController
  # GET /chatiws
  # GET /chatiws.json
  def index
    @chatiws = Chatiw.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chatiws }
    end
  end

  # GET /chatiws/1
  # GET /chatiws/1.json
  def show
    @chatiw = Chatiw.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chatiw }
    end
  end

  # GET /chatiws/new
  # GET /chatiws/new.json
  def new
    @chatiw = Chatiw.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chatiw }
    end
  end

  # GET /chatiws/1/edit
  def edit
    @chatiw = Chatiw.find(params[:id])
  end

  # POST /chatiws
  # POST /chatiws.json
  def create
    @chatiw = Chatiw.new(params[:chatiw])

    respond_to do |format|
      if @chatiw.save
        format.html { redirect_to @chatiw, notice: 'Chatiw was successfully created.' }
        format.json { render json: @chatiw, status: :created, location: @chatiw }
      else
        format.html { render action: "new" }
        format.json { render json: @chatiw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chatiws/1
  # PUT /chatiws/1.json
  def update
    @chatiw = Chatiw.find(params[:id])

    respond_to do |format|
      if @chatiw.update_attributes(params[:chatiw])
        format.html { redirect_to @chatiw, notice: 'Chatiw was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chatiw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatiws/1
  # DELETE /chatiws/1.json
  def destroy
    @chatiw = Chatiw.find(params[:id])
    @chatiw.destroy

    respond_to do |format|
      format.html { redirect_to chatiws_url }
      format.json { head :no_content }
    end
  end
end
