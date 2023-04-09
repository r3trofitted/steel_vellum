require_relative "character"

module SteelVellum
  class CharacterCreation
    def choose_race(race)
    end
    
    def pick_proficiency(proficiency, from:)
    end
    
    def character
      Character.new
    end
  end
end
