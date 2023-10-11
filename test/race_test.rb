require_relative "test_helper"
require "./lib/steel_vellum/race"
require "./lib/steel_vellum/character"

module SteelVellum
  class RaceTest < Minitest::Test
    def test_race_initialization
      race = Race.new(speed: 30, size: :small, darkvision: 5)
      
      assert_equal 30, race.speed
      assert_equal :small, race.size
      assert_equal 5, race.darkvision
    end
  end
end
