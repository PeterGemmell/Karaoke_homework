require('minitest/autorun')
require('minitest/reporters')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < MiniTest::Test

  def setup

    @room = Room.new("Mix Room",100,2,5)
    @song1 = Songs.new('You Got The Love, Candi Staton')
    @song2 = Songs.new('Rolling in the Deep, Adele')
    @song3 = Songs.new('Thunderstruck, AC/DC')
    @guest1 = Guests.new('Peter',100) # name and money in wallet.
    @guest2 = Guests.new('John', 150)
    @guest3 = Guests.new('Adla', 200)

    # @would refer to instances of objects.

  end

  # Test for name of room.
  def test_room_name
    assert_equal("Mix Room", @room.return_room_name)
  end

  # Test for checking in guest.
  def test_guest_checkin_room
    @room.guest_checkin_room(@guest1)
    assert_equal(1,@room.guest.length)
  end

  #Test for checking out guest from room.
  def test_guest_checking_out_of_room
    @room.guest_checkin_room(@guest1)
    @room.guest_checkin_room(@guest2)
    @room.guest_checkin_room(@guest3)
    @room.guest_checking_out_of_room
    assert_equal(2, @room.guest.length)
  end

  #Test for adding song to room.
  def test_add_song_to_room
    @room.add_song_to_room(@song1)
    assert_equal(1, @room.song.length)
  end

  # Test for room reaching capacity.
  def test_room_reaches_limit
    @room.guest_checkin_room(@guest1)
    @room.guest_checkin_room(@guest2)
    @room.guest_checkin_room(@guest3)
    assert_equal(false, @room.room_reaches_limit)
  end


  def test_room_reaches_limit_pass
    @room.guest_checkin_room(@guest1) # can comment back in.
    assert_equal(true, @room.room_reaches_limit)
  end

  #   guest1 = Guests.new('Peter', 100)
  #   guest2 = Guests.new('John', 150)
  #   guest3 = Guests.new('Adla', 200)
  #
  #   @room1 = Rooms.new('dance', [], [], 50) #50 is the pay-in fee.
  #   @room2 = Rooms.new('pop', [], [], 50)
  #   @room3 = Rooms.new('rock', [], [], 50) #remove zeros if error.
  #
  #   @room1.guest_checkin_room(guest1)
  #   @room1.guest_checkin_room(guest2)
  #   @room1.guest_checkin_room(guest3)
  #
  #   song1 = Songs.new('You Got The Love, Candi Staton')
  #   song2 = Songs.new('Rolling in the Deep, Adele')
  #   song3 = Songs.new('Thunderstruck, AC/DC')
  #
  #   @room1.add_song_to_room1(song1)
  #   @room2.add_song_to_room2(song2)
  #   @room3.add_song_to_room3(song3)
  #
  # end
  #
  # # Test for Room 1 name.
  # def test_room_name
  #   assert_equal('dance', @room1.return_room_name)
  # end
  #
  # # Test for Room 2 name.
  # def test_room_name2
  #   assert_equal('pop', @room2.return_room_name2)
  # end
  #
  # # Test for Room 3 name.
  # def test_room_name3
  #   assert_equal('rock', @room3.return_room_name3)
  # end
  #
  # # Test for checking in 3 guests to room 1.
  # def test_guest_checkin_room
  #   @room1.guest_checkin_room(@guest1)
  #   assert_equal(4, @room1.capacity.length)
  # end
  #
  # # Test which checks we have 3 guests in room 1 as previously added before 1
  # # leaves the room.
  # def test_guest_leaves_room
  #   @room1.guest_checkin_room(@guest1)
  #   @room1.guest_checkin_room(@guest2)
  #   @room1.guest_checkin_room(@guest3)
  #   @room1.guest_leaves_room
  #   assert_equal(5, @room1.capacity.length)
  # end
  #
  # # Test for adding song 1, a dance song, into Room 1 the dance room.
  # def test_add_song_to_room1
  #   assert_equal(1,@room1.song.count)
  # end
  #
  # # Test for adding song 2, a pop song, into Room 2 the pop room.
  # def test_add_song_to_room2
  #   assert_equal(1, @room2.song.count)
  # end
  #
  # # Test for adding song 3, a rock song, into Room 3 thr rock room.
  # def test_add_song_to_room3
  #   assert_equal(1, @room3.song.count)
  # end


end
