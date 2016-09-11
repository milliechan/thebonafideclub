class Match < ApplicationRecord
	has_one :matcher, class: :user, foreign_key: :matcher_id
  has_one :matchee, class: :user, foreign_key: :matchee_id
end
