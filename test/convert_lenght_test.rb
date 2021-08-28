require "minitest/autorun"
require_relative "../lib/convert_length.rb"

class ConvertLenghtTest < Minitest::Test
    def test_convert_lenght
        assert_equal 39.37    , convert_lenght(1, from: :m, to: :in)
        assert_equal 0.38     , convert_lenght(15, from: :in, to: :m)
        assert_equal 10670.73 , convert_lenght(35000, from: :ft, to: :m)
    end
end

