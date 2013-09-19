require 'net/http'
class SeatsController < ApplicationController
  # GET /seats
  # GET /seats.json
  respond_to :xml, :json, :html

  def index
    @seats = Seat.all
    respond_with(@seats)
  end

  # GET /seats/1
  # GET /seats/1.json
  def show
    @seat = Seat.find(params[:id])
    respond_with(@seat)
  end

  # GET /seats/new
  # GET /seats/new.json
  def new
    @seat = Seat.new
    respond_with(@seat)
  end

  # GET /seats/1/edit
  def edit
    @seat = Seat.find(params[:id])
    respond_with(@seat)
  end

  # POST /seats
  # POST /seats.json
  def create
    @seat = Seat.new(params[:seat])

    respond_to do |format|
      if @seat.save
        format.html { redirect_to locations_url, notice: 'Seat was successfully created.' }
        format.json { render json: @seat, status: :created, location: @seat }
      else
        format.html { render action: "new" }
        format.json { render json: @seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seats/1
  # PUT /seats/1.json
  def update
    @seat = Seat.find(params[:id])

    respond_to do |format|
      if @seat.update_attributes(params[:seat])
        format.html { redirect_to @seat, notice: 'Seat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seats/1
  # DELETE /seats/1.json
  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy

    respond_to do |format|
      format.html { redirect_to seats_url }
      format.json { head :no_content }
    end
  end

  def location_seats
    @location = Location.find(params[:location_id])
    render :partial => "locations/seat_list", :locals => {:seats=>@location.seats}
  end

end


