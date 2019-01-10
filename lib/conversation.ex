defmodule Conversation do
  @moduledoc """
  Documentation for Conversation.
  """

  @doc """
  Do the stuff but dont tell me.

  ## Examples
      iex> Conversation.iCanDoStuffAllTheStuffButYouNoSee
      :ok
  """

  @doc """
  Tell me the stuff you are doing.

  ## Examples
      iex> stack = Conversation.new
      iex> Conversation.pop(stack)
      iex> Conversation.pop(stack)
      iex> Conversation.pop(stack)
      iex> Conversation.pop(stack)
      iex> Conversation.pop(stack)
      :ok
  """

  def iCanDoStuffAllTheStuffButYouNoSee do
    stack = Conversation.new
    Conversation.pop(stack)
    Conversation.pop(stack)
    Conversation.pop(stack)
    Conversation.pop(stack)
    Conversation.pop(stack)
  end

  def new do
    person1 = Conversation.audience_member
    Conversation.transcript(person1)
    Conversation.transcript(person1)
    Conversation.transcript(person1)
    person1
  end

  def audience_member do
    Stack.new
  end

  def show(pid) do
    Stack.show(pid)
  end

  def peek(pid) do
    Stack.peek(pid)
  end

  def transcript (stack) do
    Stack.push(stack, :foo)
    Stack.push(stack, :bar)
  end

  def pop(stack) do
    Stack.pop(stack)
  end
end
