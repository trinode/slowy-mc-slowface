# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration

# Configures the endpoint
config :slowy_mc_slow_face, SlowyMcSlowFace.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m8iUcMiyYSiWSSwHz20rvI5eRuH2ft+A3/GafXsr3k9mhkhHHHqE7vxmd6MFkkFu",
  render_errors: [view: SlowyMcSlowFace.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SlowyMcSlowFace.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
