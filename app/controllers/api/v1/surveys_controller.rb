class Api::V1::SurveysController < ApplicationController

  def create
    survey = Survey.new(survey_params)

    if survey.save
      render json: { success: true, 
                     data: { token: survey.token, 
                             survey_url: survey.survey_url } }, status: 201
    else
      render json: { success: false, 
                     errors: survey.errors }, status: 422

    end
  end

  private

  def survey_params
    params.require(:survey).permit(:title, :url)
  end

end
