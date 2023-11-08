import Config

config :logger, :default_handler, level: :info

config :logger, :default_formatter,
  metadata: [:request_id, :contract_id],
  format: "$time $metadata[$level] $message\n"
