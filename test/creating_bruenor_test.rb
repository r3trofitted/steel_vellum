require_relative "test_helper"
require "./lib/steel_vellum/character_creation"
require "./lib/steel_vellum/races/mountain_dwarf"

module SteelVellum
  class CreatingBruenorTest < Minitest::Test
     # TODO: use +Integer.feet+ instead for the distances
    def test_1_choose_a_race
      # set up
      creation = CharacterCreation.new
    
      # execute
      creation.choose_race Races::MountainDwarf
      creation.pick_proficiency :smiths_tools, from: :artisans_tools
    
      # assert
      bruenor = creation.character
    
      assert_equal :medium, bruenor.size
      assert_equal 25, bruenor.speed
      assert_equal 60, bruenor.darkvision
      
      assert_equal 2, bruenor.ability_score_increases[:constitution]
      assert_equal 2, bruenor.ability_score_increases[:strength] # from the subrace
      
      assert bruenor.has_advantage_on_saving_throws_against?(:poison)
      assert bruenor.has_resistance_against?(:poison)
      
      assert bruenor.proficient_with? :battleaxe
      assert bruenor.proficient_with? :handaxe
      assert bruenor.proficient_with? :throwing_hammer
      assert bruenor.proficient_with? :warhammer
      assert bruenor.proficient_with? :smiths_tools
      assert bruenor.proficient_with? :light_armor
      assert bruenor.proficient_with? :medium_armor
      
      assert_includes bruenor.languages, :common
      assert_includes bruenor.languages, :dwarvish
      assert_includes bruenor.special_traits, :stonecunning
    end
  end
end
