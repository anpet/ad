class PhoneController < ApplicationController
  def input
  end

  def output
	phone = Book.new
	phone.name = params[:name]
	phone.phone = params[:phone]
	phone.save
	end
end
