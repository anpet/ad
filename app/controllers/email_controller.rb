class EmailController < ApplicationController
  def input
  end

  def output
		email = Book.new
		email.name = params[:name]
		email.email = params[:email]
		email.save
		@saved = email
	end
end
