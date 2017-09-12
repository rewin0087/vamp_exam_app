defmodule VampExamApp.AccountsTest do
  use VampExamApp.DataCase

  alias VampExamApp.Accounts

  describe "users" do
    alias VampExamApp.Accounts.User

    @valid_attrs %{country: "some country", name: "some name"}
    @update_attrs %{country: "some updated country", name: "some updated name"}
    @invalid_attrs %{country: nil, name: nil}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = Accounts.create_user(@valid_attrs)
      assert user.country == "some country"
      assert user.name == "some name"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      assert {:ok, user} = Accounts.update_user(user, @update_attrs)
      assert %User{} = user
      assert user.country == "some updated country"
      assert user.name == "some updated name"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end

  describe "tags" do
    alias VampExamApp.Accounts.Tag

    @valid_attrs %{name: "some name", short_name: "some short_name", type: "some type"}
    @update_attrs %{name: "some updated name", short_name: "some updated short_name", type: "some updated type"}
    @invalid_attrs %{name: nil, short_name: nil, type: nil}

    def tag_fixture(attrs \\ %{}) do
      {:ok, tag} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_tag()

      tag
    end

    test "list_tags/0 returns all tags" do
      tag = tag_fixture()
      assert Accounts.list_tags() == [tag]
    end

    test "get_tag!/1 returns the tag with given id" do
      tag = tag_fixture()
      assert Accounts.get_tag!(tag.id) == tag
    end

    test "create_tag/1 with valid data creates a tag" do
      assert {:ok, %Tag{} = tag} = Accounts.create_tag(@valid_attrs)
      assert tag.name == "some name"
      assert tag.short_name == "some short_name"
      assert tag.type == "some type"
    end

    test "create_tag/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_tag(@invalid_attrs)
    end

    test "update_tag/2 with valid data updates the tag" do
      tag = tag_fixture()
      assert {:ok, tag} = Accounts.update_tag(tag, @update_attrs)
      assert %Tag{} = tag
      assert tag.name == "some updated name"
      assert tag.short_name == "some updated short_name"
      assert tag.type == "some updated type"
    end

    test "update_tag/2 with invalid data returns error changeset" do
      tag = tag_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_tag(tag, @invalid_attrs)
      assert tag == Accounts.get_tag!(tag.id)
    end

    test "delete_tag/1 deletes the tag" do
      tag = tag_fixture()
      assert {:ok, %Tag{}} = Accounts.delete_tag(tag)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_tag!(tag.id) end
    end

    test "change_tag/1 returns a tag changeset" do
      tag = tag_fixture()
      assert %Ecto.Changeset{} = Accounts.change_tag(tag)
    end
  end

  describe "taggables" do
    alias VampExamApp.Accounts.Taggable

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def taggable_fixture(attrs \\ %{}) do
      {:ok, taggable} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_taggable()

      taggable
    end

    test "list_taggables/0 returns all taggables" do
      taggable = taggable_fixture()
      assert Accounts.list_taggables() == [taggable]
    end

    test "get_taggable!/1 returns the taggable with given id" do
      taggable = taggable_fixture()
      assert Accounts.get_taggable!(taggable.id) == taggable
    end

    test "create_taggable/1 with valid data creates a taggable" do
      assert {:ok, %Taggable{} = taggable} = Accounts.create_taggable(@valid_attrs)
    end

    test "create_taggable/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_taggable(@invalid_attrs)
    end

    test "update_taggable/2 with valid data updates the taggable" do
      taggable = taggable_fixture()
      assert {:ok, taggable} = Accounts.update_taggable(taggable, @update_attrs)
      assert %Taggable{} = taggable
    end

    test "update_taggable/2 with invalid data returns error changeset" do
      taggable = taggable_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_taggable(taggable, @invalid_attrs)
      assert taggable == Accounts.get_taggable!(taggable.id)
    end

    test "delete_taggable/1 deletes the taggable" do
      taggable = taggable_fixture()
      assert {:ok, %Taggable{}} = Accounts.delete_taggable(taggable)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_taggable!(taggable.id) end
    end

    test "change_taggable/1 returns a taggable changeset" do
      taggable = taggable_fixture()
      assert %Ecto.Changeset{} = Accounts.change_taggable(taggable)
    end
  end

  describe "access_tokens" do
    alias VampExamApp.Accounts.AccessToken

    @valid_attrs %{token: "some token"}
    @update_attrs %{token: "some updated token"}
    @invalid_attrs %{token: nil}

    def access_token_fixture(attrs \\ %{}) do
      {:ok, access_token} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Accounts.create_access_token()

      access_token
    end

    test "list_access_tokens/0 returns all access_tokens" do
      access_token = access_token_fixture()
      assert Accounts.list_access_tokens() == [access_token]
    end

    test "get_access_token!/1 returns the access_token with given id" do
      access_token = access_token_fixture()
      assert Accounts.get_access_token!(access_token.id) == access_token
    end

    test "create_access_token/1 with valid data creates a access_token" do
      assert {:ok, %AccessToken{} = access_token} = Accounts.create_access_token(@valid_attrs)
      assert access_token.token == "some token"
    end

    test "create_access_token/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_access_token(@invalid_attrs)
    end

    test "update_access_token/2 with valid data updates the access_token" do
      access_token = access_token_fixture()
      assert {:ok, access_token} = Accounts.update_access_token(access_token, @update_attrs)
      assert %AccessToken{} = access_token
      assert access_token.token == "some updated token"
    end

    test "update_access_token/2 with invalid data returns error changeset" do
      access_token = access_token_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_access_token(access_token, @invalid_attrs)
      assert access_token == Accounts.get_access_token!(access_token.id)
    end

    test "delete_access_token/1 deletes the access_token" do
      access_token = access_token_fixture()
      assert {:ok, %AccessToken{}} = Accounts.delete_access_token(access_token)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_access_token!(access_token.id) end
    end

    test "change_access_token/1 returns a access_token changeset" do
      access_token = access_token_fixture()
      assert %Ecto.Changeset{} = Accounts.change_access_token(access_token)
    end
  end
end
