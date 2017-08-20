# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphql_community,
  ecto_repos: [GraphqlCommunity.Repo]

# Configures the endpoint
config :graphql_community, GraphqlCommunityWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H5Je8KmKpT9Zx1D9oDQ19NGRFDLXf5GtZvOLQj5IdZqqBSq0M3REAhZVcB/3oAb5",
  render_errors: [view: GraphqlCommunityWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: GraphqlCommunity.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
