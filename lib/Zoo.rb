class Zoo
    attr_reader :name, :location
    
    @@all = []

    def initialize(name,location)
        @name = name
        @location = location

        @@all << self
    end

    def add_animal(animal_species,animal_name)
        found_animal = Animal.all.find { |animal| animal.nickname == animal_name && animal.species == animal_species }
        found_animal.zoo = self
    end

    def animals
        Animal.all.select { |animal| animal.zoo == self }
    end

    def animal_species
        mapped_species = self.animals.map { |animal| animal.species }
        mapped_species.uniq
    end

    def find_by_species(given_species)
        self.animals.select { |animal| animal.species == given_species }
    end

    def animal_nicknames
        self.animals.map { |animal| animal.nickname }
    end

    def self.all
        @@all
    end

    def self.find_by_location(given_location)
        self.all.select { |zoo| zoo.location == given_location }
    end
end
