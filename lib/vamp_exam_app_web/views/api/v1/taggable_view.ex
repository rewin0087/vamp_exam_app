defmodule VampExamAppWeb.Api.V1.TaggableView do
  use VampExamAppWeb, :view
  alias VampExamAppWeb.Api.V1.TaggableView

  def render("taggable.json", %{taggable: taggable}) do
   %{
     type: "taggable",
     id: taggable.id,
     relationships: %{
       tag: render_one(taggable.tag, TaggableView, "tag.json", as: :tag)
     }
   }
  end

  def render("tag.json", %{tag: tag}) do
    %{
      data: %{
        id: tag.id,
        type: tag.type
      }
    }
  end
end
