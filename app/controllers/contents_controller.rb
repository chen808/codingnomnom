class ContentsController < ApplicationController

	def index
		@current_five_articles = Content.last(5)
		#@alias = Content.where()
	end

	def show
		@post = Content.find(params[:id])
	end

	def create_page
		@user = session[:user_id]
	end

	def new_recipe
		# render :text => content_params
		@content = Content.create(content_params)
		redirect_to '/profile'
	end

	def edit
		@post = Content.find(params[:id])
	end

	def update
		Content.find(params[:id]).update_attributes(content_params)
		redirect_to '/editpost/%s' % params[:id]
	end

	def destroy
		Content.find(params[:id]).destroy
		redirect_to '/profile'
	end

	private
	def content_params
		params.require(:content).permit(:user_id, :language, :title, :description, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
	end


	
end
