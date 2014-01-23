defmodule SpawnBasic do
  def greet do
    IO.puts "hello"
  end
end

# iex> c("spawn-basic.ex")
# SpawnBasic.greet

# iex> spawn(SpawnBasic, :greet, [])
