<<<<<<< HEAD
json.extract! book, :id, :title, :created_at, :updated_at
=======
json.extract! book, :id, :title, :author, :price, :published_date, :created_at, :updated_at
>>>>>>> run_test
json.url book_url(book, format: :json)
