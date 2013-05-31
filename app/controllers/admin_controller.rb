class AdminController < ApplicationController
  before_filter :require_admin_auth
  before_filter :hide_header
end
