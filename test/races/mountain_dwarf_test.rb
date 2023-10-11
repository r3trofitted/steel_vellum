require_relative "../test_helper"
require "./lib/steel_vellum/character"
require "./lib/steel_vellum/races/mountain_dwarf"

module SteelVellum
  class Races::MountainDwarfTest < Minitest::Test
    def test_a_mountain_dwarf_character_has_a_medium_size
      character = Character.new
      
      assert_nil character.size
      character.extend Races::MountainDwarf
      
      assert_equal :medium, character.size
    end

    def test_a_mountain_dwarf_character_has_a_speed_of_25
      character = Character.new
      
      assert_nil character.speed
      character.extend Races::MountainDwarf
      
      assert_equal 25, character.speed
    end

    def test_a_mountain_dwarf_character_has_darkvision_up_to_60_feet
      character = Character.new
      
      assert_nil character.darkvision
      character.extend Races::MountainDwarf
      
      assert_equal 60, character.darkvision
    end
  end
end
