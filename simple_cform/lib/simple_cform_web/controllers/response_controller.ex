defmodule SimpleCformWeb.ResponseController do
  use SimpleCformWeb, :controller

  alias SimpleCform.Surveys

  def create(conn, %{"survey_id" => survey_id, "answers" => answers_attrs}) do
    survey = Surveys.get_survey!(survey_id)

    with {:ok, response} <- Surveys.create_response(survey, answers_attrs) do
      conn
      |> put_status(:created)
      |> render("create.json", response: response)
    end
  end
end
