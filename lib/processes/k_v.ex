defmodule KV do
  @moduledoc false

  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        returnMap = %{key => Map.get(map, key)}
        IO.puts("message sended")
        IO.puts(key)
        IO.puts(Map.get(returnMap, key))
        send caller, returnMap
        loop(map)

      {:put, key, value} ->
        IO.puts("Message received")
        IO.puts(key)
        IO.puts(value)
        loop(Map.put(map, key, value))
    end
  end

end
