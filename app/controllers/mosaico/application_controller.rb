module Mosaico
  class ApplicationController < ActionController::Base
    helper ::Mosaico::ApplicationHelper
    before_action :set_locale
    before_action :authenticate_user!

    private

    def set_locale
      if params[:locale]
        Mosaico.locale = params[:locale]
        session[:locale] = params[:locale]
      elsif session[:locale]
        Mosaico.locale = session[:locale]
      end
    end
  end
end
