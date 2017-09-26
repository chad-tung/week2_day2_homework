require "minitest/autorun"
require "minitest/rg"
require_relative "../river"
require_relative "../fish"

class TestRiver < MiniTest::Test

    def setup()
        @river1 = River.new("Clyde")
        @fish1 = Fish.new("Philip")
        @fish2 = Fish.new("Gill")
        @fish3 = Fish.new("Sarah")
        @fish4 = Fish.new("Jayne")
        @fish5 = Fish.new("Sam")
        @fish6 = Fish.new("Simon")
        @fish_school = [@fish3, @fish4, @fish5, @fish6]
    end

    def test_get_river_name()
        assert_equal("Clyde", @river1.get_river_name())
    end

    def test_add_fish()
        @river1.add_fish(@fish1)
        assert_equal(1, @river1.fish_count())
    end

    def test_add_school_of_fish()
        @river1.add_school_of_fish(@fish_school)
        assert_equal(4, @river1.fish_count())
        assert_equal(@fish_school, @river1.get_river_fish())
    end

    def test_fish_eaten()
        @river1.add_school_of_fish(@fish_school)
        @river1.fish_removed()
        assert_equal(3, @river1.fish_count())
    end



end
