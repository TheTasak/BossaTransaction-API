# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# transactions = Transaction.create(
#   [
#     {name: "Asbis", amount: 12, t_type: "BUY", price: 120.23, date: "2022/10/01"},
#     {name: "Ferro", amount: 8, t_type: "BUY", price: 120.23, date: "2022/11/07"},
#     {name: "Tim", amount: 10, t_type: "BUY", price: 20.45, date: "2022/11/10"},
#     {name: "Asbis", amount: 2, t_type: "SELL", price: 14.23, date: "2022/12/01"}
#   ]
# )

user = User.create(
  {id: 1, username: "user", password: "password"}
)

layout = Layout.create(
  {id: 1, content: "", user_id: 1}
)