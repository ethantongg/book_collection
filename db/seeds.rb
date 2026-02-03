Book.destroy_all

if Rails.env.development?
  Book.create!([
    { title: "DEV Book A", author: "Dev", price: 10.99, published_date: "2020-01-01" },
    { title: "DEV Book B", author: "Dev", price: 10.99, published_date: "2020-01-01" },
    { title: "DEV Book C", author: "Dev", price: 10.99, published_date: "2020-01-01" },
    { title: "DEV Book D", author: "Dev", price: 10.99, published_date: "2020-01-01" },
    { title: "DEV Book E", author: "Dev", price: 10.99, published_date: "2020-01-01" },
    { title: "DEV Book F", author: "Dev", price: 10.99, published_date: "2020-01-01" },
    { title: "DEV Book G", author: "Dev", price: 10.99, published_date: "2020-01-01" }
  ])

elsif Rails.env.test?
  Book.create!([
    { title: "TEST Book 1", author: "Test", price: 10.99, published_date: "2020-01-01" },
    { title: "TEST Book 2", author: "Test", price: 10.99, published_date: "2020-01-01" },
    { title: "TEST Book 3", author: "Test", price: 10.99, published_date: "2020-01-01" },
    { title: "TEST Book 4", author: "Test", price: 10.99, published_date: "2020-01-01" },
    { title: "TEST Book 5", author: "Test", price: 10.99, published_date: "2020-01-01" }
  ])

elsif Rails.env.production?
  Book.create!([
    { title: "PROD ONLY Book X", author: "Prod", price: 10.99, published_date: "2020-01-01" },
    { title: "PROD ONLY Book Y", author: "Prod", price: 10.99, published_date: "2020-01-01" }
  ])
end
