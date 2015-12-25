class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # フラッシュメッセージを使うための記述
  add_flash_types :success, :info, :warning, :danger
end
