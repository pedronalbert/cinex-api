defmodule Cinex.Graph.Schema do
  @moduledoc """
    Graph schema
  """
  use Absinthe.Schema

  # Import Types
  import_types Cinex.Graph.ContentTypes

  # Import Queries
  import_types Cinex.Graph.Queries.Artists
  import_types Cinex.Graph.Queries.Cinemas
  import_types Cinex.Graph.Queries.Customers

  # Import Mutations
  import_types Cinex.Graph.Mutations.Cinemas
  import_types Cinex.Graph.Mutations.Customers
  import_types Cinex.Graph.Mutations.Rooms
  import_types Cinex.Graph.Mutations.Artists

  query do
    import_fields :cinemas_queries
    import_fields :customers_queries
    import_fields :artists_queries
  end

  mutation do
    import_fields :cinemas_mutations
    import_fields :customers_mutations
    import_fields :artists_mutations
    import_fields :rooms_mutations
  end
end
