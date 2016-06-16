class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :noindex?

  before_action :set_page_meta_tags

  private
  def noindex?
    %w(confirmations passwords sessions registrations unlocks).include?(controller_name)
  end

  def set_page_meta_tags
    return if noindex?
    @page_title       = t('.title')
    @page_description = t('.description')
    @page_keywords    = t('.keywords')
  end
end
