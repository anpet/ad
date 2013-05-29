class BimandoController < ApplicationController
	def list
		@list = Bimando.all #비만도의 해쉬로 채워진 애들을 다 불러온다.
	end

	def input

	end

	def create
		temp = Bimando.new
		temp.name = params[:name]
		temp.height = params[:height]
		temp.weight = params[:weight]
		temp.stdweight = Bimando.stdweight_cal(temp.height, temp.weight) 
		temp.bimando = Bimando.bimando_cal(temp.height,temp.weight)
		temp.state = Bimando.state_cal(temp.bimando)
		temp.save
		@view = temp
	end
end
