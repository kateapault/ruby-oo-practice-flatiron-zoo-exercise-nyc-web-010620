class Animal
    attr_accessor :weight, :zoo
    attr_reader :nickname, :species

    @@all = []

    def initialize(species,weight,nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = nil 

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(given_species)
        self.all.select { |animal| animal.species == given_species }
    end
end
