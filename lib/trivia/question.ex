defmodule Trivia.Question do
  @moduledoc """
  Define question structure and validations.
  """
  defstruct text: "", options: [], answer: ''

  alias Trivia.Question

  def new(%{text: text, options: options, answer: answer}) do
    shuffled_options = Enum.shuffle([answer | options])
    %Question{text: text, options: shuffled_options, answer: answer}
  end

  def valid_answer?(%Question{answer: answer}, guess) when answer == guess, do: true
  def valid_answer?(_question, _guess), do: false
end
