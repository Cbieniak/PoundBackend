class ColorsController < ApplicationController
def index
	@colors = Color.all
	render json: @colors, root: false
end
	def new
end
end
