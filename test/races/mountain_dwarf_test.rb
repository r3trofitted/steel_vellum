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
  end
end
