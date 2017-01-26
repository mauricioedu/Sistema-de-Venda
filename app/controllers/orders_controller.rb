class OrdersController < ApplicationController
  before_filter :initialize_cart

  def index
    @orders = Order.all
  end

  def create
    @order_form = OrderForm.new(
      user: User.new(order_params[:user]),
      cart: @cart
    )

    if @order_form.save
      redirect_to root_path, notice: "Pedido feito com sucesso"
    else
      render "carts/checkout"
    end
  end

  private

  def order_params
    params.require(:order_form).permit(
      user: [ :nome, :endereco, :cpf, :telefone, :cep, :pais, :cidade, :email ]
    )
  end
end
