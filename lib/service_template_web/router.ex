defmodule ServiceTemplateWeb.Router do
  use ServiceTemplateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/", Absinthe.Plug, schema: ServiceTemplateWeb.GraphQL.Schema
  end
end
