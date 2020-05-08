class Category < ActiveRecord::Base
    has_many :books
    # has_many :authors, through: :books
    #books is the join class for authors and categories
end