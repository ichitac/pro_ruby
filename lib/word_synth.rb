class WordSynth
    def initialize
        @effect = []
    end

    def add_effect(effect)
        @effect << effect
    end

    def play(original_words)
        @effect.inject(original_words) do |words, effect|
            effect.call(words)
        end
    end
end