defmodule SimpleCform.Surveys do
  @moduledoc """
  The Surveys context.
  """

  import Ecto.Query, warn: false
  alias SimpleCform.Repo

  alias SimpleCform.Surveys.SelectAnswer

  @doc """
  Returns the list of select_answers.

  ## Examples

      iex> list_select_answers()
      [%SelectAnswer{}, ...]

  """
  def list_select_answers do
    Repo.all(SelectAnswer)
  end

  @doc """
  Gets a single select_answer.

  Raises `Ecto.NoResultsError` if the Select answer does not exist.

  ## Examples

      iex> get_select_answer!(123)
      %SelectAnswer{}

      iex> get_select_answer!(456)
      ** (Ecto.NoResultsError)

  """
  def get_select_answer!(id), do: Repo.get!(SelectAnswer, id)

  @doc """
  Creates a select_answer.

  ## Examples

      iex> create_select_answer(%{field: value})
      {:ok, %SelectAnswer{}}

      iex> create_select_answer(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_select_answer(attrs \\ %{}) do
    %SelectAnswer{}
    |> SelectAnswer.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a select_answer.

  ## Examples

      iex> update_select_answer(select_answer, %{field: new_value})
      {:ok, %SelectAnswer{}}

      iex> update_select_answer(select_answer, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_select_answer(%SelectAnswer{} = select_answer, attrs) do
    select_answer
    |> SelectAnswer.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a SelectAnswer.

  ## Examples

      iex> delete_select_answer(select_answer)
      {:ok, %SelectAnswer{}}

      iex> delete_select_answer(select_answer)
      {:error, %Ecto.Changeset{}}

  """
  def delete_select_answer(%SelectAnswer{} = select_answer) do
    Repo.delete(select_answer)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking select_answer changes.

  ## Examples

      iex> change_select_answer(select_answer)
      %Ecto.Changeset{source: %SelectAnswer{}}

  """
  def change_select_answer(%SelectAnswer{} = select_answer) do
    SelectAnswer.changeset(select_answer, %{})
  end

  alias SimpleCform.Surveys.FillAnswer

  @doc """
  Returns the list of fill_answers.

  ## Examples

      iex> list_fill_answers()
      [%FillAnswer{}, ...]

  """
  def list_fill_answers do
    Repo.all(FillAnswer)
  end

  @doc """
  Gets a single fill_answer.

  Raises `Ecto.NoResultsError` if the Fill answer does not exist.

  ## Examples

      iex> get_fill_answer!(123)
      %FillAnswer{}

      iex> get_fill_answer!(456)
      ** (Ecto.NoResultsError)

  """
  def get_fill_answer!(id), do: Repo.get!(FillAnswer, id)

  @doc """
  Creates a fill_answer.

  ## Examples

      iex> create_fill_answer(%{field: value})
      {:ok, %FillAnswer{}}

      iex> create_fill_answer(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_fill_answer(attrs \\ %{}) do
    %FillAnswer{}
    |> FillAnswer.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a fill_answer.

  ## Examples

      iex> update_fill_answer(fill_answer, %{field: new_value})
      {:ok, %FillAnswer{}}

      iex> update_fill_answer(fill_answer, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_fill_answer(%FillAnswer{} = fill_answer, attrs) do
    fill_answer
    |> FillAnswer.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a FillAnswer.

  ## Examples

      iex> delete_fill_answer(fill_answer)
      {:ok, %FillAnswer{}}

      iex> delete_fill_answer(fill_answer)
      {:error, %Ecto.Changeset{}}

  """
  def delete_fill_answer(%FillAnswer{} = fill_answer) do
    Repo.delete(fill_answer)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking fill_answer changes.

  ## Examples

      iex> change_fill_answer(fill_answer)
      %Ecto.Changeset{source: %FillAnswer{}}

  """
  def change_fill_answer(%FillAnswer{} = fill_answer) do
    FillAnswer.changeset(fill_answer, %{})
  end
end
