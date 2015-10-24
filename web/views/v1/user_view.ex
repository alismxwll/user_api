defmodule UserApi.V1.UserView do
  use UserApi.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserApi.V1.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserApi.V1.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      username: user.username,
      email: user.email,
      password: user.password}
  end
end
