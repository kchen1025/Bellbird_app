class Alarm < ApplicationRecord
	before_save { self.content = content.upcase }

	validates :content, presence: true
end
