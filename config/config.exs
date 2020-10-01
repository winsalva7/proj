# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config


config :my_app,
  ecto_repos: [MyApp.Repo]


# Configure your database
config :my_app, MyApp.Repo,
  username: "course_web",
  password: "course_web",
  database: "course_web_db",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10


# Configures the endpoint
config :my_app, MyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3UVu+vu9mOwvnUY9u+sw32fGqxgb8IcjgCIK3ekZAEZcfvqNLK3bjzUKVem7Xx5I",
  render_errors: [view: MyAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MyApp.PubSub,
  live_view: [signing_salt: "86V0UReC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
