content = "ready"

lp = with {:ok, file}     = File.open("/etc/passwd", [:read]),
          content         = IO.read(file, :all),
            :ok           = File.close(file),
            [_, uid, gid] = Regex.run(~r/fred:.*?:(\d+):(\d+)/, content)
  do "Group: #{gid}, User: #{uid}"
end

lp2 = with {:ok, file}     = File.open("/etc/passwd", [:read]),
           content         = IO.read(file, :all),
             :ok           = File.close(file),
             [_, uid, gid] <- Regex.run(~r/xxx:.*?:(\d+):(\d+)/, content)
  do
  "Group: #{gid}, User: #{uid}"
end

IO.puts lp
IO.puts inspect(lp2)
IO.puts content
