class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_page_meta_tags

  private
  def set_page_meta_tags
    @page_title       = t('.title')
    @page_description = t('.description')
    @page_keywords    = t('.keywords')
  end
end
