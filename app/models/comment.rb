class Comment < ApplicationRecord
	belongs_to :followup

	  validates :commentar, presence: true
end
