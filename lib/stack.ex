defmodule Stack do
  def new do
    spawn(fn -> loop([]) end)
  end

  def push(pid, val) do
    send(pid, {:push, val})
  end

  def pop(pid) do
    send(pid, {:pop, self()})
    val = send(pid, {:pop, self()})

    receive do
      {:pop, val} -> val
    after
       1000 -> :ok
    end

  end

  def loop(state) do
    new_state =
      receive do
        {:push, val} -> [val | state]

        {:pop, caller} ->
          [head | new_state] = state
        send(caller, {:pop, head})
        new_state
      end
    loop(new_state)
  end
end
