class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html:"Sample_Application 3"
  end
end
