class User < ApplicationRecord
  # before_save { self.email = email.downcase }
  # validates :name,  presence: true, length: { maximum: 50 }
  # # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   # format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  # has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }

  # Returns the hash digest of the given string.

  has_many :likes, :foreign_key => "liker_id"
  has_many :likees, :through => :likes
  # has_many :inverse_likes, :class_name => "Like", :foreign_key => "likee_id"
  # has_many :inverse_likees, :through => :inverse_likes, :source => :user
  has_many :matches, :foreign_key => "matcher_id"
  has_many :matchees, :through => :matches

  # has_and_belongs_to_many :likes,
  #   class_name: "User",
  #   foreign_key: "liker_id",
  #   association_foreign_key: "likee_id"

  # has_and_belongs_to_many :matchs,
  #   class_name: "User",
  #   foreign_key: "matcher_id",
  #   association_foreign_key: "matchee_id"

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
