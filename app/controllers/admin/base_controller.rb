class Admin::BaseController < ApplicationController

  include ActionController::HttpAuthentication::Token::ControllerMethods
  http_basic_authenticate_with :name => ENV['USERNAME'], :password => ENV['PASSWORD']

end
