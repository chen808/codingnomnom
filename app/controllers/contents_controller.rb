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
		if params[:languages] == "python"
			lang_num = 1
		elsif params[:languages] == "ruby"
			lang_num = 2
		elsif params[:languages] == "javascript"
			lang_num = 3
		elsif params[:languages] == "php"
			lang_num = 4
		elsif params[:languages] == "rails"
			lang_num = 5
		elsif params[:languages] == "github"
			lang_num = 6
		elsif params[:languages] == "css"
			lang_num = 7
		elsif params[:languages] == "html5"
			lang_num = 8
		elsif params[:languages] == "jquery"
			lang_num = 9
		elsif params[:languages] == "mysql"
			lang_num = 10
		end
		
		# @content = Content.new(content_params)
		@content = Content.new(user_id:session[:user_id], language_id:lang_num, title:params[:title], step1:params[:step1], step2:params[:step2], step3:params[:step3], step4:params[:step4], step5:params[:step5], step6:params[:step6], step7:params[:step7], step8:params[:step8], step9:params[:step9], step10:params[:step10])
		if @content.valid? == true
			@content.save
			redirect_to '/profile'
		else
			flash[:mistakes] = @content.errors.full_messages
			redirect_to :back
		end
	end

	def show_ruby_pg
		@ruby_lang = Content.where(language:"ruby")
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

		params.require(:content).permit(:user_id, :language_id, :title, :description, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
	end


	
end
