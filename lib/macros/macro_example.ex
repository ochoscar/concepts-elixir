defmodule MacroExample do
  @moduledoc false

  require OurMacro

  OurMacro.unless true, do: IO.puts "True Expression"

  OurMacro.unless false, do: IO.puts "False expression"

end
