class Guests

attr_accessor :name, :money

def initialize(guest_name, money)

  @guest_name = guest_name
  @money = money

end

# Function for Guest 1's name.
def return_guest_name
  return @guest_name
end

# Function for Guest 3's funds.
def return_guest_funds
  return @money
end

# Function for guest 1 paying for room fee/hire.
# def guest_pays_room_fee(price, room)
#
#   room_price = room.check_if_guest_can_afford_room(price)
#   if room_price != nil
#     if @money >= room_price
#       @money -= room_price
#
#       room.add_money_to_till(room_price) #comment out if error.
#     end
#   end
# end

end
