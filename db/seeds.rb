email = "test@example.com"
password = "password"

ActiveRecord::Base.connection.execute("TRUNCATE TABLE foods RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

user2.foods.create!(name: "沖縄そば", comment: "沖縄そばです。\n美味しいです。")
user1.foods.create!(name: "海ぶどう", comment: "海ぶどうです。\n美味しいです。")
user3.foods.create!(name: "ゴーヤーチャンプルー", comment: "ゴーヤーチャンプルーです。\n美味しいです。")
user3.foods.create!(name: "サーターアンダギー", comment: "サーターアンダギーです。\n美味しいです。")
user1.foods.create!(name: "タコライス", comment: "タコライスです。\n美味しいです。")

User.create!(email: email, password: password)

puts "ユーザーの初期データインポートに成功しました。"