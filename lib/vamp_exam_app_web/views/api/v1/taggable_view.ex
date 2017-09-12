defmodule VampExamAppWeb.Api.V1.TaggableView do
  use VampExamAppWeb, :view
  use JaSerializer.PhoenixView
  alias VampExamAppWeb.Api.V1

  attributes [:id]
  has_one :tag,
    serializer: V1.TagView,
    include: true,
    identifiers: :when_included
end
