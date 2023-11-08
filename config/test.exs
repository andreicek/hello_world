import Config

config :logger, :default_handler, level: :info

config :logger, :default_formatter,
  metadata: :all,
  format: "$time $metadata[$level] $message\n"
