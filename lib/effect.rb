module Effects
    def self.reverse
        ->(words) do
            words.split(" ").map(&:reverse).join(" ")
        end
    end

    def self.echo(rate)
        ->(words) do
            words.chars.map{ |w| w == ' ' ? w : w * rate }.join
        end
    end

    def self.loud(level)
        ->(words) do
            words.split(" ").map{ |w| w.upcase! + "!" * level }.join(" ")
        end
    end
end