module SteelVellum
  # TODO: maybe add a DSL for defining races (e.g. +Race.new { size :medium }+)
  class Race < Module
    attr_accessor :speed, :size, :darkvision
    
    def initialize(speed: 30, size: :medium, darkvision: 0)
      @speed, @size, @darkvision = speed, size, darkvision
    end
  end
end
