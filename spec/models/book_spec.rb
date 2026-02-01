require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with a title" do
    book = Book.new(
        title: "Harry Potter",
        author: "J.K. Rowling",
        price: 19.99,
        published_date: Date.today
        )
    expect(book).to be_valid
  end

  it "is invalid without a title" do
    book = Book.new(title: "")
    expect(book).not_to be_valid
  end

  it "is invalid without an author" do
    book = Book.new(title: "Some Title")
    expect(book).not_to be_valid
  end

  it "is invalid without a price" do
    book = Book.new(title: "Some Title")
    expect(book).not_to be_valid
  end

  it "is invalid without a published_date" do
    book = Book.new(title: "Some Title")
    expect(book).not_to be_valid
  end
end