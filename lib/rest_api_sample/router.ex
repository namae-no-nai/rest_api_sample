defmodule RestApiSample.Router do
  use Plug.Router
  
  plug(Plug.Logger)

  plug(:match)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason
  )

  plug(:dispatch)

  get "/", do: send_resp(conn, 200, "OK")

  get "/aliens", do: send_resp(conn, 200, "Exist")

  match _, do: send_resp(conn, 404, "Not Found")

end