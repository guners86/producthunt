class CommentsController < ApplicationController

	def create
	  product = Product.find(params[:product_id])
	  product.comments.create(comments_params)

	  redirect_to product
	end

	private
	  def comments_params
	  	# Solo agrega los parametros de comments mensionados y asocia el usuario que crea el comentario
	    params.require(:comment).permit(:body).merge(user: current_user)
	  end

end
