class ContentsController < ApplicationController

	def index
	end

	def show
	end

	def create_page
		@user = session[:user_id]
	end

	def new_recipe
		# render :text => content_params
		@content = Content.create(content_params)
		redirect_to '/profile'
		# render :text => @content[0]	
	end

	def edit
		@post = Content.find(params[:id])
	end

	private
	def content_params
		params.require(:content).permit(:user_id, :language, :title, :description, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
	end


	
end
