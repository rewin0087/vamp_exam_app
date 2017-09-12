defmodule VampExamAppWeb.Api.V1.TagView do
  use VampExamAppWeb, :view
  use JaSerializer.PhoenixView

  attributes [:id, :name] 
end
