defmodule MainEventDraw.Repo do
  use Ecto.Repo,
    otp_app: :main_event_draw,
    adapter: Ecto.Adapters.Postgres
end
