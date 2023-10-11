require_relative "../race"

module SteelVellum
  module Races
    MountainDwarf = Race.new do
      def self.extended(character)
        character.size       ||= :medium
        character.speed      ||= 25
        character.darkvision ||= 60
      end
    end
  end
end
