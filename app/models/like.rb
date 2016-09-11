class Like < ApplicationRecord
	validates :user_id, :liked, :match_id
end
