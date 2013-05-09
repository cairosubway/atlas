class MaksController < ApplicationController
  # GET /maks
  # GET /maks.json
  def index
    @maks = Mak.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /maks/1
  # GET /maks/1.json
  def show
    @mak = Mak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mak }
    end
  end

  # GET /maks/new
  # GET /maks/new.json
  def new
    @mak = Mak.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mak }
    end
  end

  # GET /maks/1/edit
  def edit
    @mak = Mak.find(params[:id])
  end

  # POST /maks
  # POST /maks.json
  def create
    @mak = Mak.new(params[:mak])

    respond_to do |format|
      if @mak.save
        format.html { redirect_to @mak, notice: 'Mak was successfully created.' }
        format.json { render json: @mak, status: :created, location: @mak }
      else
        format.html { render action: "new" }
        format.json { render json: @mak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maks/1
  # PUT /maks/1.json
  def update
    @mak = Mak.find(params[:id])

    respond_to do |format|
      if @mak.update_attributes(params[:mak])
        format.html { redirect_to @mak, notice: 'Mak was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maks/1
  # DELETE /maks/1.json
  def destroy
    @mak = Mak.find(params[:id])
    @mak.destroy

    respond_to do |format|
      format.html { redirect_to maks_url }
      format.json { head :no_content }
    end
  end
end
