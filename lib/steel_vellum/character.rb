module SteelVellum
  class Character
    attr_accessor :size, :speed, :darkvision
    
    # TODO: is this method really useful? It won't be used once the character creation is done
    def ability_score_increases
    end
    
    def languages
    end
    
    def has_advantage_on_saving_throws_against?(type)
    end
    
    def has_resistance_against?(type)
    end
    
    def proficient_with?(proficiency)
    end
    
    def special_traits
    end
  end
end
