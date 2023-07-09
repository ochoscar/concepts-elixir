defmodule StructsExamples do
  @moduledoc false

  #defmodule User do
  defstruct name: "John", age: 27
  #end

  john  = %StructsExamples.User{}
  #ayush = %User{name: "Ayush", age: 20}
  #megan = %User{name: "Megan"}

  # Accesing fields
  IO.puts(john.name)
  IO.puts(john.age)

  # Updating fields
  meg = %{john | name: "Meg"}

  IO.puts(john.name)
  IO.puts(john.age)
end
