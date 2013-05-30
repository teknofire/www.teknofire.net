class NotesController < ApplicationController
  def index
    # @notes = %w{ mobile_mapping_w_enyojs geojson_is_wrong postgis_frenzy 
      # mongodb_geospatial high_performance_data_vis openlayers3 }
    @notes = Note.order('updated_at DESC')
  end
end
