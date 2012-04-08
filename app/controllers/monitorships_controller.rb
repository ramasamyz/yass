class MonitorshipsController < ApplicationController
  # GET /monitorships
  # GET /monitorships.json
  def index
    @monitorships = Monitorship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monitorships }
    end
  end

  # GET /monitorships/1
  # GET /monitorships/1.json
  def show
    @monitorship = Monitorship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monitorship }
    end
  end

  # GET /monitorships/new
  # GET /monitorships/new.json
  def new
    @monitorship = Monitorship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monitorship }
    end
  end

  # GET /monitorships/1/edit
  def edit
    @monitorship = Monitorship.find(params[:id])
  end

  # POST /monitorships
  # POST /monitorships.json
  def create
    @monitorship = Monitorship.new(params[:monitorship])

    respond_to do |format|
      if @monitorship.save
        format.html { redirect_to @monitorship, notice: 'Monitorship was successfully created.' }
        format.json { render json: @monitorship, status: :created, location: @monitorship }
      else
        format.html { render action: "new" }
        format.json { render json: @monitorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monitorships/1
  # PUT /monitorships/1.json
  def update
    @monitorship = Monitorship.find(params[:id])

    respond_to do |format|
      if @monitorship.update_attributes(params[:monitorship])
        format.html { redirect_to @monitorship, notice: 'Monitorship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monitorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitorships/1
  # DELETE /monitorships/1.json
  def destroy
    @monitorship = Monitorship.find(params[:id])
    @monitorship.destroy

    respond_to do |format|
      format.html { redirect_to monitorships_url }
      format.json { head :no_content }
    end
  end
end
