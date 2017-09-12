defmodule VampExamAppWeb.Api.V1.UserView do
  use VampExamAppWeb, :view
  use JaSerializer.PhoenixView
  alias VampExamAppWeb.Api.V1

  attributes [:id, :full_name, :country]
  has_many :taggables,
    serializer: V1.TaggableView,
    include: true,
    identifiers: :when_included 
end
