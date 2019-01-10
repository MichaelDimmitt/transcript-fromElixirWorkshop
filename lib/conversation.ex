defmodule Conversation do
  @moduledoc """
  Documentation for Conversation.
  """

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
