require_relative "test_helper"
require "./lib/steel_vellum/character_creation"
require "./lib/steel_vellum/race"

module SteelVellum
  class CharacterCreationTest < Minitest::Test
    def test_choosing_a_race
      creation = CharacterCreation.new
      race     = Race.new
      
      creation.choose_race race
      
      assert_kind_of race, creation.character
    end
  end
end
