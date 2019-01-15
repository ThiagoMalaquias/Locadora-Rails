class CartController < ApplicationController
  before_action :authenticate_user! 

  def card
    @carrinho = JSON.parse(cookies[:carrinho]) if cookies[:carrinho].present?
  	@carrinho ||= []
    @filmes = Filme.where(id: @carrinho)
    @cats = Cat.all
  end

  def add_to_cart
	carrinho = []
	if cookies[:carrinho].present?
		carrinho = JSON.parse(cookies[:carrinho])
	end

	unless carrinho.include?(params[:id])
		carrinho << params[:id]
	end

	cookies[:carrinho] = { value: carrinho.to_json, expires: 1.year.from_now, httponly: true }

	redirect_to "/", notice: 'Filme adicionado com sucesso.'
  end

  def remove_to_cart
	carrinho = []
    carrinho = JSON.parse(cookies[:carrinho]) if cookies[:carrinho].present?

    carrinho.delete(params[:id])
	
	cookies[:carrinho] = { value: carrinho.to_json, expires: 1.year.from_now, httponly: true }

	redirect_to "/", notice: 'Filme removido com sucesso.'

  end

end
