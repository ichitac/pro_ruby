require 'minitest/autorun'
require_relative '../lib/bank.rb'
require_relative '../lib/team.rb'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze_to_array
        # 配列の値は正しいものか？
        assert_equal ['japan', 'US', 'India'], Team::COUNTRIES
        # 配列自身がfreezeされているか？
        assert Team::COUNTRIES.frozen?
        # 配列の要素すべてがfreezeされているか？
        assert Team::COUNTRIES.all?{|country| country.frozen?}
    end

    def test_deep_freeze_to_hash
        # ハッシュの値は正しいか？
        assert_equal(
            {'japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
            Bank::CURRENCIES
        )
        # ハッシュ自身がfreezeされているか？
        assert Bank::CURRENCIES.frozen?
        # ハッシュの要素すべてがfreezeされているか？
        assert Bank::CURRENCIES.all?{|key, value| key.frozen? && value.frozen?}
    end
end