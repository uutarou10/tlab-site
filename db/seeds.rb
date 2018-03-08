# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'mail@example.com', name: 'Tago Kentaro', display_name: 'kentaro', password: 'secret', password_confirmation: 'secret')

body = <<-'EOS'.strip_heredoc
# h1見出し
## h2見出し
あいうえお**かきくけこ**さしすせそ

~~たちつてと~~
EOS

article = Article.create(
                     title: 'テスト記事だよ',
                     body: body,
                     user: user,
                     published_at: Time.gm(2018,2,2)
)