class User < ActiveRecord::Base
    has_many :book_users
    has_many :books, through: :book_users

    def check_out_book(book, due_date)
        BookUser.create(book: book, user: self, due_date: due_date, returned?: false)
    end  

end
