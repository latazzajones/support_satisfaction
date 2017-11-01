require 'rails_helper'

describe 'Api::V1::SurveysController' do

  context 'POST api/v1/surveys' do
    let(:json) { JSON.parse(response.body) }
    let(:params) { { survey: { url: 'test/redphone/url', 
                               title: 'TestTitle' } } }

    subject(:create_survey_request) { post '/api/v1/surveys', params: params }

    before { create_survey_request }

    context 'when the post is successful' do
      it 'returns the expected response' do
        survey = Survey.last

        expect(json).to match( { success: true,
                                 data: { token: survey.token,
                                         survey_url: survey.url,
                                        } 
                                } )
      end
    end

    context 'when the post is not valid' do
      #TODO test that the endpoint delivers
      #a helpful response if the 
      #post is invalid
    end

  end

end
