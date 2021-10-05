module Api
    class ChaptersController < ApplicationController
      skip_before_action :verify_authenticity_token
        def index
          chapters = Chapter.order('created_at DESC');
          render json: {status: 'SUCCESS', message:'Loaded chapters', data:chapters},status: :ok
        end
  
        # def show
        #   chapter = Chapter.find(params[:id])
        #   render json: {status: 'SUCCESS', message:'Loaded chapter', data:chapter},status: :ok
        # end
  
        def create
          chapter = Chapter.new(chapter_params)
  
          if chapter.save
            render json: {status: 'SUCCESS', message:'Saved chapter', data:chapter},status: :ok
          else
            render json: {status: 'ERROR', message:'Chapter not saved', data:chapter.errors},status: :unprocessable_entity
          end
        end
  
        def destroy
          # chapter = Chapter.find(params[:id])
          # chapter.destroy
          system("rm -rf /tmp/nginx/cache/*")
          render json: {status: 'SUCCESS', message:'Deleted all cache' },status: :ok
        end
  
        # def update
        #   chapter = Chapter.find(params[:id])
        #   if chapter.update_attributes(chapter_params)
        #     render json: {status: 'SUCCESS', message:'Updated chapter', data:chapter},status: :ok
        #   else
        #     render json: {status: 'ERROR', message:'Chapter not updated', data:chapter.errors},status: :unprocessable_entity
        #   end
        # end
  
        private
  
        def chapter_params
          params.permit(:title, :desc)
        end
      end
end