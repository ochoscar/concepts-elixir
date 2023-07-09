defmodule BasicModule do
  @moduledoc false
  def sum(a, b) do
    a + b
  end
end
IO.puts(BasicModule.sum(1, 2))
