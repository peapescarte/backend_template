defmodule ServiceTemplateWeb.GraphQL.Schema do
  # Descomente as linhas comentadas para começar a desenvolver
  # use Absinthe.Schema

  alias ServiceTemplateWeb.GraphQL.Middlewares

  # query do
  # end

  def middlewares(middleware, _field, obj) do
    case obj do
      %{identifier: :mutation} ->
        middleware ++ [Middlewares.HandleChangesetErrors]

      _ ->
        middleware
    end
  end
end
