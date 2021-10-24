require "minitest/autorun"
require "./word_synth"
require "./effect"

class WordSynthTest < Minitest::Test
    def test_play
        assert WordSynth
        assert Effects
    end
end
