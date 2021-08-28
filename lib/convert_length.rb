UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

def convert_lenght(lenght, from: :m, to: :m)
    (lenght / UNITS[from] * UNITS[to]).round(2)
end