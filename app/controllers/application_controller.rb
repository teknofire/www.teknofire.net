class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def hide_header
    @hide_header = true
  end
  
  def hide_header?
    @hide_header
  end
  helper_method :hide_header?
end
