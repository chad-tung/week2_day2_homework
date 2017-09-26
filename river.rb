class River
    def initialize(name)
        @name = name
        @fish_count = []
    end

    def get_river_name()
        return @name
    end

    def get_river_fish()
        return @fish_count
    end

    def add_school_of_fish(fishlist)
        for fish in fishlist
            @fish_count << fish
        end
    end

    def add_fish(name)
        @fish_count << name
    end

    def fish_count()
        return @fish_count.length()
    end

#Doesn't have to be specific
    def fish_removed()
        @fish_count.pop()
    end
end
