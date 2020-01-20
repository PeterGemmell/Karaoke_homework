class Room

attr_accessor :name, :limit, :till, :guest, :song, :price

def initialize(room_name, limit, till, price)

  @room_name = room_name
  @limit = 2
  @till = till
  @guest = []
  @song = []
  @price = 5
  # These would instance variables of the class.
end

# Function returning room name.
def return_room_name()
  return @room_name
end

# Function pushing guest into an Array.
def guest_checkin_room(guest1)
  guest.push(guest1)
end

# Function for checking out guest. Removing from Array.
def guest_checking_out_of_room()
  @guest.pop
end

# Function for adding song to room. Using .unshift method.
def add_song_to_room(song1)
  song.unshift(song1)
end

# Function which checks if room limit has been reached.
def room_reaches_limit()
  if @guest.length > 2
    return false
  else
    return true

  end
 end
end


#   attr_accessor :name, :capacity, :song, :till
#
#
# def initialize(room_name, capacity, song, till)
#
#   @room_name = room_name
#   @capacity = []
#   @song = []
#   @till = till
#
# end
#
# # Returning the created Room 1 name.
# def return_room_name
#   return @room_name
# end
#
# # Returning the created Room 2 name.
# def return_room_name2
#   return @room_name
# end
#
# # Returning the created Room 3 name.
# def return_room_name3
# return @room_name
# end
#
# # Function which adds 3 guests to an empty Array for Room1.
# def guest_checkin_room(guest)
#   @capacity.push(guest)
# end
#
# # Function which uses .pop method and removes 1 guest from Room 1.
# # They have left to go to the bar.
# def guest_leaves_room
#   @capacity.pop
# end
#
#
# # Function which uses .push method to add the first song by Candi Staton into
# # the second empty Array in Room 1 for songs.
# def add_song_to_room1(song)
#   @song.push(song)
# end
#
# # Function which use .unshift method to add the second song by Adele into the
# # second empty Array in Room 2 for songs.
# def add_song_to_room2(song)
#   @song.unshift(song)
# end
#
# # Function which uses .push to add the third song by AC/DC into the second empty
# # Array in room 3 for songs.
# def add_song_to_room3(song)
#   @song.push(song)
# end
#
#
# end
