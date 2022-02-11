1..1000000 |> Stream.map(&Integer.to_string/1) |> Stream.map(&String.pad_leading(&1, 6, "0")) |> Stream.map(&({input <> &1, &1})) |> Stream.map(fn {input, i} -> {:crypto.hash(:md5, input), i} end) |> Stream.map(fn {h, i} -> {Base.encode16(h), i} end)

1..1000000 |> Stream.map(&Integer.to_string/1) |> Stream.map(&String.pad_leading(&1, 6, "0")) |> Stream.map(&({input <> &1, &1})) |> Stream.map(fn {input, i} -> {:crypto.hash(:md5, input), i} end) |> Stream.map(fn {h, i} -> {Base.encode16(h), i} end) |> Enum.find(fn {h, _} -> String.starts_with?(h, "00000") end)

1..10000000 |> Flow.from_enumerable() |> Flow.map(&Integer.to_string/1) |> Flow.map(&String.pad_leading(&1, 6, "0")) |> Flow.map(&({input <> &1, &1})) |> Flow.map(fn {input, i} -> {:crypto.hash(:md5, input), i} end) |> Flow.map(fn {h, i} -> {Base.encode16(h), i} end) |> Enum.find(fn {h, _} -> String.starts_with?(h, "000000") end)
