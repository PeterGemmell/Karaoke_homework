require('minitest/autorun')
require('minitest/reporters')
require_relative('../guests.rb')
# require_relative('../rooms.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuests < MiniTest::Test

  def setup

    # @room1 = Rooms.new('dance', [], [], 50) # comment out if error.

    @guest1 = Guests.new('Peter',100)
    @guest2 = Guests.new('John', 150)
    @guest3 = Guests.new('Adla', 200)
  end


  # Test for Guest 1's name.
  def test_guest_name
    assert_equal('Peter', @guest1.return_guest_name)
  end

  # Test for Guest 3's funds.
  def test_guest_funds
    assert_equal(200, @guest3.return_guest_funds)
  end

  # # Test for guest paying for room entry/hire fee.
  # def test_guest_pays_room_fee
  #   @guest1.guest_pays_room_fee('dance', @room1)
  #   assert_equal(50, @guest1.money)
  #   assert_equal(50, @room1.till) #comment out all if error.
  # end

end
