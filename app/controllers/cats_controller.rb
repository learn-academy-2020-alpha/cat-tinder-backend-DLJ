class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end
  
    def create
<<<<<<< HEAD
      cat = Cat.create(cat_params)
      if cat.valid?
        render json: cat
      else
      render json: cat.errors, status: :unprocessable_entity
      end
=======
      # Create a new cat
      cat = Cat.create(cat_params)
    
      # respond with our new cat
      render json: cat
>>>>>>> 6d89f9b6bbe32ac333c428d60105e997fff85b6c
    end
    
    # Handle strong parameters, so we are secure
    def cat_params
      params.require(:cat).permit(:name, :age, :enjoys)
    end
end
