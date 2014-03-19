require 'nkf'

class Company < ActiveRecord::Base
	validates :company, presence: true
	validates :kana, format:{ with:/\A[\p{Katakana}\u30fc]+\z/}

	before_validation do
		self.kana = NKF.nkf('-wh2', kana) if kana
	end
end
