class ContentsController < ApplicationController

	def index
	end

	def show
	end

	def create_page
		@user = session[:user_id]
	end

	def new_recipe
		content = Content.create(content_params)
		# redirect_to '/profile'
		render :text => content.title
		
	end


	private
	def content_params
		params.require(:content).permit(:user_id, :language, :title, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10, :step11, :step12, :step13, :step14, :step15, :step16, :step17, :step18, :step19, :step20)
	end


	
end
