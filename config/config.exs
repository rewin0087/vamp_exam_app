# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vamp_exam_app,
  ecto_repos: [VampExamApp.Repo]

# Configures the endpoint
config :vamp_exam_app, VampExamAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o0qU9Wd3aP4Lk/f4WlyOVkujphz5CipuYpOg8kI9otJXOaBaQQpseYI6uFCEUrkk",
  render_errors: [view: VampExamAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VampExamApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
