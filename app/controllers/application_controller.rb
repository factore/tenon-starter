class FakeUser < Struct.new('FakeUser', :admin?, :staff?)
  def email
    'you@tenonstarter.com'
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper Tenon::Engine.helpers

  def current_user
    @current_user ||= FakeUser.new(true, true)
  end
  helper_method :current_user

  def destroy_user_session_path
    '/you/should/install/devise'
  end
  helper_method :destroy_user_session_path
end
