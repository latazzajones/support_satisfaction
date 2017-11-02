require 'rails_helper'

RSpec.describe Survey, type: :model do

  context 'validations' do
    #issue with Rails 4.2? 
    #it { is_expected.to validate_presence_of :title }
  end

  it 'generates a token on create' do
    new_survey = Survey.create(title: "FakeTitle")
    expect(new_survey.token).not_to be_nil
  end

  describe '#survey_url' do
    let(:survey) { FactoryBot.create :survey }

    it 'returns a url that includes the token' do
      expected_url = "http://localhost:3000/survey_responses/new?token=#{survey.token}"
      expect(survey.survey_url).to eq expected_url 
    end
  end
end
