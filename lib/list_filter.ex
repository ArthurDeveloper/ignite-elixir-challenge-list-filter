defmodule ListFilter do
  def call(array, element) do
    call(array, element, 0, [])
  end

  defp call(array, element, current_index, resulting_array) do
    cond do
      Enum.at(array, current_index) == element ->
        call(array, element, current_index + 1, resulting_array)

      Enum.at(array, current_index) == nil ->
        resulting_array

      true ->
        call(array, element, current_index + 1, resulting_array ++ [Enum.at(array, current_index)])
    end
  end
end
