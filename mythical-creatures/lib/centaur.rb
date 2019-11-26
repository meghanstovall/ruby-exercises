class Centaur

  attr_reader :name, :breed, :cranky, :standing, :laying, :rested, :sick

    def initialize(name, horse_breed)
      @name = name
      @breed = horse_breed
      @cranky = false
      @standing = true
      @laying = false
      @rested = false
      @sick = false
    end

    def cranky?
      @cranky
    end

    def standing?
      @standing
    end

    def laying?
      @laying
    end

    def shoot
      if @cranky || @laying
        "NO!"
      else
        "Twang!!!"
      end
    end

    def run
      if @cranky || @laying
        "NO!"
      else
        "Clop clop clop clop!!!"
      end
    end

    def sleep
      @cranky = false
      if @standing
        "NO!"
      end
    end

    def lay_down
      @laying = true
      @standing = false
      @sleep = true
    end

    def stand_up
      @laying = false
      @standing = true
    end

    def ran_or_shot_three_times
      if 3.times {self.shoot || self.run} || 3.times {self.shoot} || 3.times {self.run}
        @cranky = true
      end
    end

    def drink_potion
      if @standing
        @rested = true
      end

      if @rested
        @sick = true
      end
    end
end
