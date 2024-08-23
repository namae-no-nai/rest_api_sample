defmodule RestApiSample.RouterTest do
  use ExUnit.Case, async: true

  use Plug.Test

  @opts RestApiSample.Router.init([])

  test "return ok" do
    build_conn = conn(:get, "/")
    conn = RestApiSample.Router.call(build_conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "OK"
  end

  test "return exist" do
    build_conn = conn(:get, "/aliens")
    conn = RestApiSample.Router.call(build_conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Exist"
  end
end