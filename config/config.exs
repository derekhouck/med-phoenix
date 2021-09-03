# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :main_event_draw,
  ecto_repos: [MainEventDraw.Repo]

# Configures the endpoint
config :main_event_draw, MainEventDrawWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nYb/rP9wYW/TjUL3amWn/hhNXZ0rxL2oR4kAfHnuS2smBhx2Sm7e6iFT8jiCQ13b",
  render_errors: [view: MainEventDrawWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MainEventDraw.PubSub,
  live_view: [signing_salt: "nxox95sk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
