defmodule Fubar.Repo do
  use Ecto.Repo,
    otp_app: :fubar,
    adapter: Ecto.Adapters.Postgres
end
