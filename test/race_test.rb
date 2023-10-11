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
    
    def test_extending_a_character_sets_default_for_their_traits
      race      = Race.new(speed: 25, size: :medium, darkvision: 60)
      character = Character.new
      
      assert_nil character.speed
      assert_nil character.size
      assert_nil character.darkvision
      
      character.extend race
      
      assert_equal 25,      character.speed
      assert_equal :medium, character.size
      assert_equal 60,      character.darkvision
    end
    
    def test_extending_a_character_doesnt_change_existing_traits
      race      = Race.new(speed: 25)
      character = Character.new
      
      character.speed = 30
      character.extend race
      
      assert_equal 30, character.speed # hasn't changed to 25
    end
  end
end
