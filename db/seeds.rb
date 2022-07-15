# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# u1 = Admin.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
# u2 = Admin.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
# u3 = Admin.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
# u4 = Admin.create({ name: 'Jack', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })


r1 = Role.create({ name: 'Regular', description: 'Can read books' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create books. Can update and destroy own books' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = Admin.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r1.id })
u2 = Admin.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
u3 = Admin.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
u4 = Admin.create({ name: 'Jack', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r3.id })


i1 = Book.create({ name: 'Rayban Sunglasses', description: 'Stylish shades', price: 99.99, admin_id: u2.id })
i2 = Book.create({ name: 'Gucci watch', description: 'Expensive timepiece', price: 199.99, admin_id: u2.id })
i3 = Book.create({ name: 'Henri Lloyd Pullover', description: 'Classy knitwear', price: 299.99, admin_id: u3.id })
i4 = Book.create({ name: 'Porsche socks', description: 'Cosy footwear', price: 399.99, admin_id: u3.id })