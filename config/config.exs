# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chat, Chat.Endpoint,
  url: [host: "localhost"],
  root: Path.expand("..", __DIR__),
  secret_key_base: "/RjKJmMO6raXPRTq63qTqid1x6lVKTOP+FTxZHfX6Ogd+1xYmH6eZZFhBu1CIwtg",
  debug_errors: false,
  pubsub: [name: Chat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Stop lager redirecting :error_logger messages
config :lager, :error_logger_redirect, false
# Stop lager removing Logger's :error_logger handler
config :lager, :error_logger_whitelist, [Logger.ErrorHandler]
# Stop lager writing a crash log
config :lager, :crash_log, false
# Use LagerLogger as lager's only handler.
config :lager, :handlers, [{LagerLogger, [level: :debug]}]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
