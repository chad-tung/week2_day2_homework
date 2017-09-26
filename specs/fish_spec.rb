require "minitest/autorun"
require "minitest/rg"
require_relative "../fish"

class TestFish < MiniTest::Test

    def setup()
        @fish1 = Fish.new("Philip")
        @fish2 = Fish.new("Gill")
    end

    def test_get_fish_name()
        assert_equal("Philip", @fish1.get_fish_name())
        assert_equal("Gill", @fish2.get_fish_name())
    end
end
