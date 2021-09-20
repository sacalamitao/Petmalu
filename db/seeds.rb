# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'admin@example.com',
  password: :password,
  confirmed_at: DateTime.now,
  first_name: :admin,
  last_name: :admin,
  admin: true,
  approved: true
)

juan = User.create(
  email: 'juantamad@example.com',
  password: :password,
  confirmed_at: DateTime.now,
  first_name: :juan,
  last_name: :tamad,
  approved: true
)
pong = User.create(
  email: 'pongpagong@example.com',
  password: :password,
  confirmed_at: DateTime.now,
  first_name: :pong,
  last_name: :pagong,
  approved: true
)

4.times do
  FactoryBot.create(:post, user_id: juan.id)
  2.times { FactoryBot.create(:comment, post_id: Post.last.id) }

  FactoryBot.create(:post, user_id: pong.id)
  2.times { FactoryBot.create(:comment, post_id: Post.last.id) }
end
