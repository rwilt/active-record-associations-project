class Author < ActiveRecord::Base
    has_many :books
    has_many :categories, through: :books
    #books is the join class for authors and categories
end