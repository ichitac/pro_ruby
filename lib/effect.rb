module Effects
    def self.reverse
        ->(words) do
            words.split(" ").map(&:reverse).join(" ")
        end
    end

    def self.echo(rate)
        ->(words) do
            words,chars.map{ |w| w = " " ? " " | w * rate }.join
        end
    end
end