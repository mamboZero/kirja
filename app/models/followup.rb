class Followup < ApplicationRecord
	has_many :comments

STATUS = %w( Roadlock/issue w/feedback Work/i/progress )

end
