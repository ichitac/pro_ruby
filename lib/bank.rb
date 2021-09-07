require_relative '../lib/deep_freezable'

class Bank
    extend DeepFreezable

    COUNTRIES = deep_freeze({'japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end