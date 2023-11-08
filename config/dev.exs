import Config

min_local_debug_level = System.get_env("MIN_LOCAL_DEBUG_LEVEL")

format = "$time $metadata[$level] $message\n"
metadata = [:request_id, :contract_id, :file, :line]

config :logger, :default_handler,
  level:
    if(not is_nil(min_local_debug_level), do: String.to_atom(min_local_debug_level), else: :info)

config :logger, :default_formatter,
  format: format,
  metadata: metadata
