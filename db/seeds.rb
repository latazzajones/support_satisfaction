# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

3.times do 
  survey = Survey.create!(title: Faker::Hipster.sentence(3), 
                 url: "redphone/fake/url")
  rand(1..5).times { SurveyResponse.create!(survey_id: survey.id, 
                                            email: Faker::Internet.email,
                                            rating: rand(4..5),
                                            comment: Faker::Hipster.paragraph(rand(1..3)),
                                           ) }
end



