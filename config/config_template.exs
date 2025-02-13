import Config

import_config "#{config_env()}.exs"

# import secret config
umbrella_root = Path.dirname(Path.expand(__DIR__))
secret_config_path = Path.join([umbrella_root, "config", "#{config_env()}.secret.exs"])

if File.exists?(secret_config_path) do
  import_config secret_config_path
  IO.puts("Import #{secret_config_path}")
else
  IO.puts("Cannot find #{secret_config_path}")
end
