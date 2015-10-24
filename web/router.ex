defmodule UserApi.Router do
  use UserApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", UserApi do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/users", UserController
    end
  end
end
