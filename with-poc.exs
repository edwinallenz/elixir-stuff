test "Example 1" do
  opts = %{width: 10, height: 15}
  assert {:ok, 150} ==
    with {:ok, width} <- Map.fetch(opts, :width),
         {:ok, height} <- Map.fetch(opts, :height),
    do: {:ok, width * height}
end
