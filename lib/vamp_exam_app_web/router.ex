defmodule VampExamAppWeb.Router do
  use VampExamAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json", "application/vnd.api+json"]
  end

  scope "/", VampExamAppWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

   scope "/api", VampExamAppWeb.Api, as: :api do
     pipe_through :api

     scope "/v1", V1, as: :v1 do
       resources "/users", UserController, only: [:index]
     end
   end
end
