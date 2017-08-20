defmodule GraphqlCommunityWeb.Router do
  use GraphqlCommunityWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphqlCommunityWeb do
    pipe_through :api
  end
end
