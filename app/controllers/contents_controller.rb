class ContentsController < ApplicationController

	def index
		@current_five_articles = Content.last(5)
		#@alias = Content.where()
	end

	def show
		# incoming id from views > contents > index.html.erb
		@this_article = Content.find(params[:id])
	end

	def create_page
		@user = session[:user_id]
	end

	def new_recipe
		# render :text => content_params
		@content = Content.new(content_params)
		if @content.valid? == true
			@content.save
			redirect_to '/profile'
		else
			flash[:mistakes] = @content.errors.full_messages
			redirect_to :back
		end
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
