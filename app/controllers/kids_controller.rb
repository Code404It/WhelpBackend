class KidsController < ApplicationController


        def index
          @kids = Kid.all
          render json: @kids
        end
    
        def create
          @kid = Kid.new(kid_params)
          if @kid.save
            render json: @kid
          else
            render json: {error: 'Whelp! Try again.'}
          end
        end
    
        def show
          @kid = Kid.find_by(params[:id])
          render json: @kid
        end
    
        def destroy
          @kid = Kid.find_by(params[:id])
          @kid.destroy
        end

        def update
          @kid = Kid.find_by(params[:id])
          @kid.update(name: params["kid"]["name"])
          @kid.save
          render json: @kid
        end
    
        private
    
        def kid_params
          params.require(:kid).permit(:name, :image_url, :discipline_level)
        end
    
    
    
end
