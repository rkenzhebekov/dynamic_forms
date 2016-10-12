defmodule DynamicForms.PageController do
  use DynamicForms.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
