defmodule VampExamAppWeb.Api.V1.TagView do
  use VampExamAppWeb, :view

  def render("tag.json", %{tag: tag}) do
    %{
      id: tag.id,
      type: tag.type,
      attributes: %{
        name: tag.name
      }
    }
  end
end
