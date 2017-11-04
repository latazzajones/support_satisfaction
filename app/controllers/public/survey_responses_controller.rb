class Public::SurveyResponsesController < Public::BaseController

  def new
    if Survey.find_by(token: params[:token])
      session[:token] = params[:token]
      @survey_response = SurveyResponse.new
    else
      render html: no_token_message.html_safe
    end
  end

  def create
    survey = Survey.find_by(token: session[:token])

    if SurveyResponse.create(response_params.merge(survey_id: survey.id))
      redirect_to :thank_you
    else
      flash[:notice] = "Oh no! Something went wrong"
    end
  end

  private

  def no_token_message
    "<h1>Looks like you got a little lost exploring the internet! 👩‍🚀</h1>"
  end

  def response_params
    params.require(:survey_response).permit(:email, 
                                            :rating, 
                                            :comment)
  end

end
