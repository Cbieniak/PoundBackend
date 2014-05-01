class ColorsController < ApplicationController
def index
	@colors = Color.all
	respond_to do |format|
	format.json { render :json => @colors.to_json  }
end
end
	def new
end
end
