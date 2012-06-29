class JobordersController < ApplicationController
  # GET /joborders
  # GET /joborders.json
  def index
    @joborders = Joborder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @joborders }
    end
  end

  # GET /joborders/1
  # GET /joborders/1.json
  def show
    @joborder = Joborder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @joborder }
    end
  end

  # GET /joborders/new
  # GET /joborders/new.json
  def new
    @joborder = Joborder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @joborder }
    end
  end

  # GET /joborders/1/edit
  def edit
    @joborder = Joborder.find(params[:id])
  end

  # POST /joborders
  # POST /joborders.json
  def create
    @joborder = Joborder.new(params[:joborder])

    respond_to do |format|
      if @joborder.save
        format.html { redirect_to @joborder, notice: 'Joborder was successfully created.' }
        format.json { render json: @joborder, status: :created, location: @joborder }
      else
        format.html { render action: "new" }
        format.json { render json: @joborder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /joborders/1
  # PUT /joborders/1.json
  def update
    @joborder = Joborder.find(params[:id])

    respond_to do |format|
      if @joborder.update_attributes(params[:joborder])
        format.html { redirect_to @joborder, notice: 'Joborder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @joborder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joborders/1
  # DELETE /joborders/1.json
  def destroy
    @joborder = Joborder.find(params[:id])
    @joborder.destroy

    respond_to do |format|
      format.html { redirect_to joborders_url }
      format.json { head :no_content }
    end
  end
end
