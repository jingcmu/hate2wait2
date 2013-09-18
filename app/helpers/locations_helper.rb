module LocationsHelper

  def get_seats_number
    seats = @location.seats
    seats.size
  end

  def get_left_seats
    @location.capacity - get_seats_number
  end

end
