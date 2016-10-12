defmodule DynamicForms.User do
  use DynamicForms.Web, :model

  schema "users" do
    field :name, :string
    field :address, :string
    field :date_of_birth, Ecto.DateTime
    field :number_of_children, :integer
    field :notifications_enabled, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :address, :date_of_birth, :number_of_children, :notifications_enabled])
    |> validate_required([:name, :address, :date_of_birth, :number_of_children, :notifications_enabled])
  end
end
