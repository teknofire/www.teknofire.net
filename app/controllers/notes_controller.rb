class NotesController < ApplicationController
  def index
    @notes = %w{ geojson_is_wrong postgis_frenzy }
  end
end
