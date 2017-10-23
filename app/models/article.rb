class Article < ApplicationRecord
    #Require title and body for each article
    #test
    validates :title, presence: true
    validates :body, presence: true
end
