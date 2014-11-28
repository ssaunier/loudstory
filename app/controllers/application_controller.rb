class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  protect_from_forgery with: :exception

end
