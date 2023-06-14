defmodule CharList do
  @moduledoc false
  IO.puts('Hello')
  IO.puts(is_list('Hello'))

  IO.puts(is_list(to_char_list("hełło")))
  IO.puts(is_binary(to_string ('hełło')))

end
