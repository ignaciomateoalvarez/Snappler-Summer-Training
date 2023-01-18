require "json"
require "byebug"
require "nacho_st_gem"

class Main

    attr_accessor :db

    def initialize
        @db = JSON.parse(File.read("./lib/swapi.json"))
    end

    def find_by_key_value(key, value)
        data_base.select { |item| item[key] == value }
    end

    def find_by_name(name)
        find_by_key_value("name", name)
    end
end

class People < Main
    attr_accessor :people

    def initialize
        super
        @people = db["people"]
      end

    def data_base 
        people
    end
end

class Vehicles < Main
    attr_accessor :vehicles

    def initialize
        super
        @vehicles = db["vehicles"]
      end

    def data_base 
        vehicles
    end
end

class Starships < Main
    attr_accessor :starships

    def initialize
        super
        @starships = db["starships"]
      end

    def data_base 
        starships
    end
end