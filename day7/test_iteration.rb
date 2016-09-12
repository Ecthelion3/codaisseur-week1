require 'byebug'

@requested_range = { arrival_date: 12, departure_date: 15 }
# @booked_range = { arrival_date: 10, departure_date: 13 }
@booked_ranges = [
  { arrival_date: 2, departure_date: 6 },
  { arrival_date: 8, departure_date: 13 },
  { arrival_date: 15, departure_date: 17 },
  { arrival_date: 18, departure_date: 21 },
  { arrival_date: 23, departure_date: 30 },
]

def check_dates
  @booked_ranges.each do |booked_range|
    if @requested_range[:arrival_date] >= booked_range[:departure_date]
      true
    elsif @requested_range[:departure_date] <= booked_range[:arrival_date]
      true
    else
      false
      break
    end
  end
end

if check_dates
  puts "Room is available"
else
  puts "Room is not available"
end
