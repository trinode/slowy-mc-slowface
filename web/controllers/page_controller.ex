defmodule SlowyMcSlowFace.PageController do
  use SlowyMcSlowFace.Web, :controller

  def index(conn, _params) do
    :random.seed(:os.timestamp())
    sleep_time = :random.uniform(3000)
    :timer.sleep(sleep_time)
    json conn, %{random_number: :random.uniform(10000)}
  end
end
