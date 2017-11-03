class Survey < ActiveRecord::Base
  has_many :survey_responses

  before_create :generate_token

  validates :title, presence: true

  def responses
    survey_responses
  end

  def generate_token
    self.token = unique_token 
  end

  def survey_url
    Rails.application.routes.url_helpers
      .new_survey_response_url({ token: token,
                                 host: "localhost:3000" })
  end

  private

  def unique_token
    new_token = SecureRandom.urlsafe_base64
    
    if Survey.exists?(token: new_token)
      unique_token
    end

    new_token
  end
end
