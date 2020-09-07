class Api::V1::PropertiesController < ApplicationController
  before_action :load_property, only: :show

  def index
    @properties = Property.all
    properties_serializer = parse_json @properties
    json_response 'Index properties successfully', true, { properties: properties_serializer }, :ok
  end

  def show
    property_serializer = parse_json @property
    json_response 'Show property successfully', true, { property: property_serializer }, :ok
  end

  private

  def load_property
    @property = Property.find_by id: params[:id]
    json_response 'Can not get property', false, {}, :not_found unless @property.present?
  end
end
