require_relative "character"

module SteelVellum
  class CharacterCreation
    def choose_race(race)
      @race = race
    end
    
    def pick_proficiency(proficiency, from:)
    end
    
    def character
      Character.new.tap do |c|
        c.extend @race
      end
    end
  end
end
