defmodule VampExamAppWeb.Api.V1.TagView do
  use VampExamAppWeb, :view
  use JaSerializer.PhoenixView
  alias VampExamAppWeb.Api.V1

  attributes [:id, :name] 
end
