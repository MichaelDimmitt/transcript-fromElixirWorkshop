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
    stack = Conversation.audience_member
    Conversation.transcript(stack)
    Conversation.transcript(stack)
    stack
  end

  def audience_member do
    Stack.new
  end

  def transcript (stack) do
    Stack.push(stack, :foo)
    Stack.push(stack, :bar)
  end

  def pop(stack) do
    Stack.pop(stack)
  end
end
