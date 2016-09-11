class Match < ApplicationRecord
	belongs_to :matcher, :class_name => "User", foreign_key: :matcher_id
  belongs_to :matchee, :class_name => "User", foreign_key: :matchee_id
end
