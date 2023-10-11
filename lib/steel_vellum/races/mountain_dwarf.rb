require_relative "../race"

module SteelVellum
  module Races
    MountainDwarf = Race.new do
      def self.extended(character)
        character.size ||= :medium
      end
    end
  end
end
