class Article < ApplicationRecord
    #Require title and body for each article
    validates :title, presence: true
    validates :body, presence: true
end
