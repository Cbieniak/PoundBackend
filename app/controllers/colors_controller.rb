class ColorsController < ApplicationController
  def index
	@colors = Color.order(:name)
	render json: @colors, root: false
  end
end
