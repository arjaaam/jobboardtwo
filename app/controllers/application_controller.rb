class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
     if params[:category_id]
      category=  Category.find(params[:category_id])
    #  @auctions = category.auctions

     end
   end

end
