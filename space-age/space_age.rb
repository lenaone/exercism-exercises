class SpaceAge
    def initialize(age)
      @age = age
    end

    def find_seconds
      365.25 * 24 * 60 * 60
    end

    def on_earth
      @age/31557600.to_f.round(2)
    end

    def on_mercury
      mercury_seconds = 0.2408467 * find_seconds
      @age/mercury_seconds.to_f.round(2)
    end

    def on_venus
      venus_seconds = 0.6151972 * find_seconds
      @age/venus_seconds.to_f.round(2)
    end

    def on_mars
      mars_seconds = 1.8808158 * find_seconds
      @age/mars_seconds.to_f.round(2)
    end

    def on_jupiter
      jupiter_seconds = 11.862615 * find_seconds
      @age/jupiter_seconds.to_f.round(2)
    end

    def on_saturn
      saturn_seconds = 29.447498 * find_seconds
      @age/saturn_seconds.to_f.round(2)
    end

    def on_uranus
      uranus_seconds = 84.016846 * find_seconds
      @age/uranus_seconds.to_f.round(2)
    end

    def on_neptune
      neptune_seconds = 164.79132 * find_seconds
      @age/neptune_seconds.to_f.round(2)
    end

end