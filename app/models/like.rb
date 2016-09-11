class Like < ApplicationRecord
	validate :user_id, :liked, :match_id, presence: true
end
