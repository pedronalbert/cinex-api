defmodule Cinex.Router do
  use Plug.Router

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Poison

  plug :match
  plug :dispatch


  forward "/graphql",
    to: Absinthe.Plug,
    schema: Cinex.Graph.Schema
  
  forward "/graphiql",
    to: Absinthe.Plug.GraphiQL,
    init_opts: [schema: Cinex.Graph.Schema]

  get "/test" do
    send_resp(conn, 200, "Test Success")
  end
end