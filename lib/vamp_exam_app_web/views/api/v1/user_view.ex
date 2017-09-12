defmodule VampExamAppWeb.Api.V1.UserView do
  use VampExamAppWeb, :view
  alias VampExamAppWeb.Api.V1.{UserView, TagView, TaggableView}

  def render("index.json", %{users: users, taggables: taggables, tags: tags}) do
    included = (render_many(taggables, TaggableView, "taggable.json", as: :taggable) ++ render_many(tags, TagView, "tag.json", as: :tag))
    %{data: render_many(users, UserView, "user.json"), included: included}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
      type: "user",
      attributes: %{
        id: user.id,
        'full-name': user.full_name,
        country: user.country
      },
      relationships: %{
        taggables: %{
          data: render_many(user.taggables, UserView, "taggable.json", as: :taggable)
        }
      }
    }
  end

  def render("taggable.json", %{taggable: taggable}) do
   %{
     type: "taggable",
     id: taggable.id
   }
  end
end
