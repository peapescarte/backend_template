defmodule ServiceTemplate.Repo do
  use Ecto.Repo,
    otp_app: :service_template,
    adapter: Ecto.Adapters.Postgres
end
