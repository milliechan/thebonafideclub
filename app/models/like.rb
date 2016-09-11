class Like < ApplicationRecord
	validates :user_id, :liked, :match_id, presence: true
  has_one :liker, class: :user, foreign_key: liker_id
  has_one :likee, class: :user, foreign_key: likee_id
end
