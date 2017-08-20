defmodule GraphqlCommunityWeb.Router do
  use GraphqlCommunityWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: GraphqlCommunity.Web.Schema,
    interface: :simple,
    context: %{pubsub: GraphqlCommunity.Web.Endpoint}
  end

end
