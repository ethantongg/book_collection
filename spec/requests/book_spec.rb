require 'rails_helper'

RSpec.describe "Books", type: :request do
    it "creates a book successfully (sunny day)" do
        post books_path, params: {
          book: {
            title: "Test Book",
            author: "Test Author",
            price: 9.99,
            published_date: Date.today
          }
        }
      
        expect(response).to have_http_status(:redirect)
        follow_redirect!
        expect(response.body).to include("Book was successfully created")
      end
      

  it "fails when title is blank (rainy day)" do
    post books_path, params: { book: { title: "" } }

    
    expect(response).to have_http_status(:ok)
    expect(response.body).to include("can&#39;t be blank")
  end

  it "does not create a book without author, price, and published_date" do
    post books_path, params: {
      book: { title: "Test Book" }
    }
    expect(response.body).to include("can&#39;t be blank")
  end
end
