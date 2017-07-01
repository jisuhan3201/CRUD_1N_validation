class Community < ActiveRecord::Base
    has_many :comments
    validates :title, presence: {message: "Input title!"}
    validates :content, presence: {message: "Input content!"}
end
