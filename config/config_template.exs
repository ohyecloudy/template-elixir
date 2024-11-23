import Config

import_config "#{Mix.env()}.exs"

if File.exists?("./config/#{Mix.env()}.secret.exs") do
  import_config "#{Mix.env()}.secret.exs"
  IO.puts("Import #{Mix.env()}.secret.exs")
else
  IO.puts("Cannot find #{Mix.env()}.secret.exs")
end
