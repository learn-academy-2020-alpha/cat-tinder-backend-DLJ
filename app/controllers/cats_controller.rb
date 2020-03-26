class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end
    
    def show
      cat = Cat.find(params[:id])
      render json: cat
    end
  
    def create
        # Create a new cat
        cat = Cat.create(cat_params)
        # respond with our new cat
        if cat.valid?
          render json: cat
        else
          render json: cat.errors
        end

    end
    
      # Handle strong parameters, so we are secure
    def cat_params
        params.require(:cat).permit(:name, :age, :enjoys)
    end
end
