class Bear
    def initialize(name)
        @name = name
        @stomach = []
    end

    def get_bear_name()
        return @name
    end

    def stomach_size()
        return @stomach.count()
    end

    def bear_hungry?()
        return @stomach.length() < 2
    end

    def eat_fish(river)
        @stomach << river.fish_removed()
    end

    def roar()
        return "RAWR!!!"
    end


end
