# Strings

## Interpolation

    iex> name = "nestor"
    iex> "Hello, #{String.capitalize name}!"
    
## Heredoc

    IO.puts "abc"
    IO.write """
      def
      ghi
      """
      
## Sigils

    iex> %c[hello, world]
    iex> %w[hell#{'o'}, world]
    iex> %W[hell#{'o'}, world]
