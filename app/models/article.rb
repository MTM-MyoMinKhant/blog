class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    
    validates :title , presence: true
    validates :body  , presence: true, length: {minimum: 10 , message: "must have at least 10 words"}
    validates :price , presence: true, numericality: { only_integer: true }
    validates :totalprice , presence: true, numericality: { only_integer: true }

end
