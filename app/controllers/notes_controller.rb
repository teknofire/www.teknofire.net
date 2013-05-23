class NotesController < ApplicationController
  def index
    @notes = %w{ mobile_mapping_w_enyojs geojson_is_wrong postgis_frenzy }
  end
end
