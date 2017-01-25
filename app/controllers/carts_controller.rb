class CartsController <  ApplicationController
  before_filter :initialize_cart

  def add
    @cart.add_item params[:id]
    session["cart"] = @cart.serialize
    product = Product.find params[:id]
    redirect_to :back, notice: "Add #{product.nome} para o carinho"
  end

  def show

  end  

end
