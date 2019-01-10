defmodule Stack do
  def new do
    spawn(fn -> loop([]) end)
  end

  def peek(pid) do
    send(pid, {:peek, self()})
    receive do
      {:peek, val} -> val
    after
       0 -> :ok
    end
  end

  def show(pid) do
    send(pid, {:show, self()})
    receive do
      {:pop, val} -> val
    after
       0 -> :ok
    end
  end

  def push(pid, val) do
    send(pid, {:push, val})
  end

  def pop(pid) do
    send(pid, {:pop, self()})
    receive do
      val ->
        IO.puts "Resulting variable:  #{ inspect val } ."
        val
    after
      0 -> :ok
    end
  end

  def loop(state) do
    new_state =
      receive do

        {:peek, caller} ->
          [head | _] = state
          send(caller, {:peek, head})
          state

        {:show, caller} ->
          send(caller, {:pop, state})
          state

        {:push, val} ->
          [val | state]

        {:pop, caller} ->
          [head | new_state] = state
        send(caller, {:pop, head})
        new_state
      end
    loop(new_state)
  end
end
