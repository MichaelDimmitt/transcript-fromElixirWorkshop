## transcript-fromElixirWorkshop

October 11, this project was first presented at the Jax.Ex elixir workshop.

The project had the group make a Stack module with a loop function that used pattern matching to call push and pop.

The stack communicated with the outside world by recieving and sending messages.

Events occoured in real time.

## Installation

Project was implemented with `mix new conversation; mix test`

The mix project can be compiled and run with the following command:
`iex -S mix`

Full instructions:
```bash
git clone https://github.com/MichaelDimmitt/transcript-fromElixirWorkshop.git;
cd transcript-fromElixirWorkshop;
iex -S mix;
```
#Usage Below

## bash
`iex -S mix`

## iex syntax:
```elixir
stack = Conversation.new
Conversation.pop(stack)
Conversation.pop(stack)
Conversation.pop(stack)
Conversation.pop(stack)
Conversation.pop(stack)
```

