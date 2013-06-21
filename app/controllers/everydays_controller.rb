class EverydaysController < ApplicationController
  # GET /everydays
  # GET /everydays.json
  def index
    @everydays = Everyday.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @everydays }
    end
  end

  # GET /everydays/1
  # GET /everydays/1.json
  def show
    @everyday = Everyday.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @everyday }
    end
  end

  # GET /everydays/new
  # GET /everydays/new.json
  def new
    @everyday = Everyday.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @everyday }
    end
  end

  # GET /everydays/1/edit
  def edit
    @everyday = Everyday.find(params[:id])
  end

  # POST /everydays
  # POST /everydays.json
  def create
    @everyday = Everyday.new(params[:everyday])

    respond_to do |format|
      if @everyday.save
        format.html { redirect_to @everyday, notice: 'Everyday was successfully created.' }
        format.json { render json: @everyday, status: :created, location: @everyday }
      else
        format.html { render action: "new" }
        format.json { render json: @everyday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /everydays/1
  # PUT /everydays/1.json
  def update
    @everyday = Everyday.find(params[:id])

    respond_to do |format|
      if @everyday.update_attributes(params[:everyday])
        format.html { redirect_to @everyday, notice: 'Everyday was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @everyday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /everydays/1
  # DELETE /everydays/1.json
  def destroy
    @everyday = Everyday.find(params[:id])
    @everyday.destroy

    respond_to do |format|
      format.html { redirect_to everydays_url }
      format.json { head :no_content }
    end
  end
end
