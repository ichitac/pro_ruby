require 'minitest/autorun'
require_relative '../lib/bank.rb'
require_relative '../lib/team.rb'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze_to_array
        # 配列の値は正しいものか？
        assert_equal ['japan', 'US', 'India'], Team::COUNTRIES
        # 配列自身がfreezeされているか？
        aseert_epual Team::COUNTRIES.frozen?
        # 配列の要素すべてがfreezeされているか？
        aseert_epual Team::COUNTRIES.all?{|country| country.frozen?}
    end
end
