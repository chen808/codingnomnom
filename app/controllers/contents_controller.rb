class ContentsController < ApplicationController

	def index
		@current_five_articles = Content.last(5)
		@sidebar = Language.all
		#@alias = Content.where()
	end

	def show
		# incoming id from views > contents > index.html.erb
		@this_article = Content.find(params[:id])
		@article_video = Content2.where(content_id:params[:id])
		# render :json => @article_video.first.video_link
		if @article_video.first.video_link != ""
			video_code = @article_video[0].video_link.split('embed/').last
			@stringg = ""
			video_code.split("").each do |i|
				if i === '"'
					break
				else
					@stringg += i
				end
			end
		end
		
	end

	def create_page
		@user = session[:user_id]
	end

	def new_recipe
		# render :text => lang_params
		@content = Content.new(content_params)
		# render :text => content_params
		if @content.valid? == true
			@content.save

			Content.last.update_attributes(language: Language.find_by(lang_params))

			Content2.create(content_id:@content.id, video_link:params[:youtube])
			
			redirect_to '/profile'
		else
			flash[:mistakes] = @content.errors.full_messages
			redirect_to :back
		end
	end

	def show_lang_pg
		# @this_lang = Content.select("*").joins(:language).where(language_id:params[:id])

		@this_lang = Content.where(language_id:params[:id])

		@this_lang_name = Language.where(id:params[:id])
		# render :json => @this_lang

	end

	def create_link
		Content2.create(content_id:params[:id], video_link:params[:video_link], extra_info:params[:extra_info])
		redirect_to '/profile'
	end

	def edit
		@post = Content.find(params[:id])
		@post2 = Content2.where(content:Content.find(params[:id])).first
	end

	def update
		Content.find(params[:id]).update_attributes(content_params)
		redirect_to '/recipe/%s' % params[:id]
	end

	def update_link
		redirect_to '/profile'

	end

	def destroy
		Content.find(params[:id]).destroy
		redirect_to '/profile'
	end

	private
	def content_params
		params.require(:content).permit(:user_id, :title, :description, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
	end
	def lang_params
		params.require(:language).permit(:lang)
	end

	
end
