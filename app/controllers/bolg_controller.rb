class BolgController < ApplicationController

	def write

	end

	def write_complete

		temp = Post.new
		temp.username = params[:writer]
		temp.content = params[:cont]
		temp.save

		# 	render :text => "bla"
		#		Post.create(:username => params[:writer],
		#								:content => params[:cont])
	end

	def list
		@posts = Post.all

	end

	def delete_post
		to_be_deleted = Post.find(params[:id])
		to_be_deleted.delete
	end

	def rewirte

	end


	def update
		to_be_updated = Post.find(params[:id])
		to_be_updated.username = params[:writer]
		to_be_updated.content = params[:cont]
		to_be_updated.save
	end

end

