class ContactController < ApplicationController

	#encoding: utf-8
	def input

	end

	def output
		@subject = params["subject"]
		@content = params["content"]
		subject = @subject
		content = @content
		gmail = Gmail.connect("812pna","ekalsWkd0716+")
		gmail.deliver do
			to ("812pna@gmail.com")
			subject subject
			text_part do
				body content
			end
		end
		gmail.logout
	end
end

