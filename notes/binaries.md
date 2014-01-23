# Binaries #

    iex> b = << 1, 2, 3 >>
    iex> byte_size b
    iex> bit_size b
    
## Arbitrary sizes
    
    iex> b = << 1::size(2), 1::size(3) >>
    iex> bit_size b
    iex> b = << 9::size(5) >>
    iex> bit_size b
    
## Pattern matching
