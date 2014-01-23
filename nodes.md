# Nodes #

    iex> Node.self

## Two nodes

    $ iex --sname foo
    $ iex --sname bar

## Connect to another node

    iex(bar@machine.local)> Node.connect : "foo@machine.local"
    iex(bar@machine.local)> Node.list
    iex(foo@machine.local)> Node.list

## Spawn a process on another node

    iex(foo)> func = fn -> IO.inspect Node.self end
    iex(foo)> Node.spawn(:"foo@machine.local", func)
    iex(foo)> Node.spawn(:"bar@machine.local", func)
