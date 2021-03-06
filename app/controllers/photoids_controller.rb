class PhotoidsController < ApplicationController
  # GET /photoids
  # GET /photoids.json
  def index
    @photoids = Photoid.all
              
      respond_to do |format|
       format.html # index.html.erb
       format.js
      end
  end

  # GET /photoids/1
  # GET /photoids/1.json
  def show
    @photoid = Photoid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photoid }
    end
  end

  # GET /photoids/new
  # GET /photoids/new.json
  def new
    @photoid = Photoid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photoid }
    end
  end

  # GET /photoids/1/edit
  def edit
    @photoid = Photoid.find(params[:id])
  end

  # POST /photoids
  # POST /photoids.json
  def create
    @photoid = Photoid.new(params[:photoid])

    respond_to do |format|
      if @photoid.save
        format.html { redirect_to @photoid, notice: 'Photoid was successfully created.' }
        format.json { render json: @photoid, status: :created, location: @photoid }
      else
        format.html { render action: "new" }
        format.json { render json: @photoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photoids/1
  # PUT /photoids/1.json
  def update
    @photoid = Photoid.find(params[:id])

    respond_to do |format|
      if @photoid.update_attributes(params[:photoid])
        format.html { redirect_to @photoid, notice: 'Photoid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photoids/1
  # DELETE /photoids/1.json
  def destroy
    @photoid = Photoid.find(params[:id])
    @photoid.destroy

    respond_to do |format|
      format.html { redirect_to photoids_url }
      format.json { head :no_content }
    end
  end
end
