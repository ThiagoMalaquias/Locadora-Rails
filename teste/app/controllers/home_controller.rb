class HomeController < ApplicationController
before_action :authenticate_user!, except: [:index, :show, :cat]	

	def index
		@filmes = Filme.all
		@cats = Cat.all 
	end

	def show
		@filme = Filme.find(params[:id])
		@cats = Cat.all 
        @classis = Classi.all
        @filmes = Filme.all

	end

	def cat
		@filmes = Filme.all
		@cats = Cat.all 
		@cat = Cat.find(params[:id])
	end


end
