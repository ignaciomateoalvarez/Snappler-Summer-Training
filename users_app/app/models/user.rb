class User < ApplicationRecord

    has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"

    has_many :followers, through: :received_follows, source: :follower

    has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
    
    has_many :followings, through: :given_follows, source: :followed_user

    def self.get_populars
    	User.all.sort_by{|u| u.followers.count}.last(3)
    end

    #Validation
    validates :username, presence: true

    def already_followed(another_user)
        Follow.where(follower_id: id, followed_user_id: another_user.id).exists?
    end
end
