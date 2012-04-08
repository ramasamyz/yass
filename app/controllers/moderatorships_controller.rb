class ModeratorshipsController < ApplicationController
  # GET /moderatorships
  # GET /moderatorships.json
  def index
    @moderatorships = Moderatorship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moderatorships }
    end
  end

  # GET /moderatorships/1
  # GET /moderatorships/1.json
  def show
    @moderatorship = Moderatorship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @moderatorship }
    end
  end

  # GET /moderatorships/new
  # GET /moderatorships/new.json
  def new
    @moderatorship = Moderatorship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @moderatorship }
    end
  end

  # GET /moderatorships/1/edit
  def edit
    @moderatorship = Moderatorship.find(params[:id])
  end

  # POST /moderatorships
  # POST /moderatorships.json
  def create
    @moderatorship = Moderatorship.new(params[:moderatorship])

    respond_to do |format|
      if @moderatorship.save
        format.html { redirect_to @moderatorship, notice: 'Moderatorship was successfully created.' }
        format.json { render json: @moderatorship, status: :created, location: @moderatorship }
      else
        format.html { render action: "new" }
        format.json { render json: @moderatorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /moderatorships/1
  # PUT /moderatorships/1.json
  def update
    @moderatorship = Moderatorship.find(params[:id])

    respond_to do |format|
      if @moderatorship.update_attributes(params[:moderatorship])
        format.html { redirect_to @moderatorship, notice: 'Moderatorship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @moderatorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moderatorships/1
  # DELETE /moderatorships/1.json
  def destroy
    @moderatorship = Moderatorship.find(params[:id])
    @moderatorship.destroy

    respond_to do |format|
      format.html { redirect_to moderatorships_url }
      format.json { head :no_content }
    end
  end
end
