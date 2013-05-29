class Bimando < ActiveRecord::Base
  attr_accessible :bimando, :height, :name, :state, :stdweight, :weight

	def self.stdweight_cal(h,w) #self가 Bimando라는 뜻
		return (h.to_f - 100) * 0.9
	end

	def self.bimando_cal(h,w)
		return 100.0 * w.to_f / self.stdweight_cal(h,w)
	end

	def self.state_cal(b)
		b = b.to_f
		if b  < 80
			return "row"
		elsif 80 < b and b < 90
			return "sligh row"
		elsif 90 <= b and b < 100 
			return "normal"
		elsif 110 <= b and b < 120
			return "over"
		elsif 120 <= b and b < 130
			return "silgh over"
		elsif 130 <= b and b < 150
			return "very pat"
		elsif 150 <= b and b < 200
			return "very very fat"
		else
			return "danger"
		end
	end

end
