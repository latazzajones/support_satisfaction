require 'rails_helper'

describe 'Api::V1::SurveysController' do

  context 'POST api/v1/surveys' do
    let(:json) { JSON.parse(response.body) }
    let(:title) { 'TestTitle' }
    let(:params) { { survey: { url: 'test/redphone/url', 
                               title: title } } }

    subject(:create_survey_request) { post '/api/v1/surveys', params }

    before { create_survey_request }

    context 'when the post is successful' do
      it 'returns the expected response' do
        survey = Survey.last

        expect(json).to match( { success: true,
                                 data: { token: survey.token,
                                         survey_url: survey.survey_url,
                                        } 
                                }.as_json )
      end
    end

    context 'when the post does not include a title' do
      context 'the title is an empty string' do
        let(:title) { '' }

        it 'returns a helpful error message' do
          expect(json).to match( { success: false,
                                   errors: {"title"=>["can't be blank"]} }.as_json )
        end
      end

    end

  end

end
