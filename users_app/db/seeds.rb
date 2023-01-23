# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


rita  = User.create(username: "rita")
pepe = User.create(username: "pepe")
jaime = User.create(username: "jaime")
docky  = User.create(username: "docky")
fifi  = User.create(username: "fifi")
brownie  = User.create(username: "brownie")
lili  = User.create(username: "lili")
rosi = User.create(username: "rosi")
luna = User.create(username: "luna")
viktor  = User.create(username: "viktor")
vitto = User.create(username: "vitto")
pachu  = User.create(username: "pachu")
indio  = User.create(username: "indio")
ramona = User.create(username: "ramona")
rio = User.create(username: "rio")

Follow.create(follower_id: 1, followed_user_id: 2)
Follow.create(follower_id: 1, followed_user_id: 3)
Follow.create(follower_id: 1, followed_user_id: 4)
Follow.create(follower_id: 2, followed_user_id: 1)
Follow.create(follower_id: 2, followed_user_id: 3)
Follow.create(follower_id: 3, followed_user_id: 8)
Follow.create(follower_id: 3, followed_user_id: 9)
Follow.create(follower_id: 4, followed_user_id: 5)
Follow.create(follower_id: 5, followed_user_id: 6)
Follow.create(follower_id: 5, followed_user_id: 7)
Follow.create(follower_id: 6, followed_user_id: 1)
Follow.create(follower_id: 6, followed_user_id: 3)
Follow.create(follower_id: 6, followed_user_id: 2)
Follow.create(follower_id: 7, followed_user_id: 10)
Follow.create(follower_id: 8, followed_user_id: 5)
Follow.create(follower_id: 9, followed_user_id: 7)
Follow.create(follower_id: 10, followed_user_id: 2)
Follow.create(follower_id: 11, followed_user_id: 4)
Follow.create(follower_id: 11, followed_user_id: 6)
Follow.create(follower_id: 12, followed_user_id: 10)
Follow.create(follower_id: 13, followed_user_id: 2)
Follow.create(follower_id: 14, followed_user_id: 2)
Follow.create(follower_id: 14, followed_user_id: 1)
Follow.create(follower_id: 15, followed_user_id: 7)
Follow.create(follower_id: 15, followed_user_id: 2)
Follow.create(follower_id: 15, followed_user_id: 5)


