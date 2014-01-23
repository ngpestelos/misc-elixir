# Streaming #

## Read the whole file into memory

    IO.puts File.read!("/usr/share/dict/words")
    |> String.split
    
## Composable enumerator

    iex> s = Stream.map [1,3,5,7], &(&1 + 1)
    iex> Enum.to_list s
    
## Pass a stream to a stream

    iex> squares = Stream.map [1, 2, 3, 4], &(&1*&1)
    iex> plus_ones = Stream.map squares, &(&1+1)
    
## Streaming a file

    IO.puts File.stream!("/usr/share/dict/words") |> Enum.max_by(&String.length/1)
  
