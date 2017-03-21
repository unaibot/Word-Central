class TextInspectionController < ApplicationController

	def new
		'new'
	end

	def create
		#@text = params[:user_text]
		@text = params[:text_inspection][:user_text]

		@word_count = @text.split(" ").length

		@wps = 275/60

		@time_to_read = @word_count / @wps


		render 'results'
	end


end
