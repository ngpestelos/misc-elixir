Map through a collection:

    Enum.map([1,2,3], fn(x) -> x * 2 end)

Map through a hash:

    dict = HashDict.new [a: 1, b: 2]
    Enum.map(dict, fn {k, v} -> {k, v * 2} end)
