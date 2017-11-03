class Admin::SurveysController < Admin::BaseController 

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

end
