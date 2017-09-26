require "minitest/autorun"
require "minitest/rg"
require_relative "../bear"
require_relative "../fish"
require_relative "../river"

class TestBear < MiniTest::Test

    def setup()
        @river1 = River.new("Clyde")
        @fish3 = Fish.new("Sarah")
        @fish4 = Fish.new("Jayne")
        @fish5 = Fish.new("Sam")
        @fish6 = Fish.new("Simon")
        @fish_school = [@fish3, @fish4, @fish5, @fish6]
        @river1.add_school_of_fish(@fish_school)
        @bear = Bear.new("BEAR")
    end

    def test_get_bear_name()
        assert_equal("BEAR", @bear.get_bear_name)
    end

    def test_stomach_size()
        assert_equal(0, @bear.stomach_size())
    end

    def test_bear_hungry?()
        assert_equal(true, @bear.bear_hungry?())
        @bear.eat_fish(@river1)
        @bear.eat_fish(@river1)
        assert_equal(false, @bear.bear_hungry?())
    end

    def test_eat_fish()
        @bear.eat_fish(@river1)
        assert_equal(1, @bear.stomach_size())
        assert_equal([@fish3, @fish4, @fish5], @river1.get_river_fish())
        assert_equal(3, @river1.fish_count())
    end

    def test_roar()
        assert_equal("RAWR!!!", @bear.roar())
    end



end
