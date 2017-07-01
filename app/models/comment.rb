class Comment < ActiveRecord::Base
    belongs_to :community
    validates :comment, presence: {message: "Input comment!"}
end
