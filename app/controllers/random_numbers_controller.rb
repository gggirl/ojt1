class RandomNumbersController < ApplicationController
  # GET /random_numbers
  # GET /random_numbers.json
  def index
    @random_numbers = RandomNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @random_numbers }
    end
  end

#for mon
def import
  RandomNumber.import(params[:file])
  redirect_to random_numbers_path, notice: "Employee Random Number imported."
end





  # GET /random_numbers/1
  # GET /random_numbers/1.json
  def show
    @random_number = RandomNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @random_number }
    end
  end

  # GET /random_numbers/new
  # GET /random_numbers/new.json
  def new
    @random_number = RandomNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @random_number }
    end
  end

  # GET /random_numbers/1/edit
  def edit
    @random_number = RandomNumber.find(params[:id])
  end

  # POST /random_numbers
  # POST /random_numbers.json
  def create
    @random_number = RandomNumber.new(params[:random_number])

    respond_to do |format|
      if @random_number.save
        format.html { redirect_to @random_number, notice: 'Random number was successfully created.' }
        format.json { render json: @random_number, status: :created, location: @random_number }
      else
        format.html { render action: "new" }
        format.json { render json: @random_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /random_numbers/1
  # PUT /random_numbers/1.json
  def update
    @random_number = RandomNumber.find(params[:id])

    respond_to do |format|
      if @random_number.update_attributes(params[:random_number])
        format.html { redirect_to @random_number, notice: 'Random number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @random_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_numbers/1
  # DELETE /random_numbers/1.json
  def destroy
    @random_number = RandomNumber.find(params[:id])
    @random_number.destroy

    respond_to do |format|
      format.html { redirect_to random_numbers_url }
      format.json { head :no_content }
    end
  end
end
