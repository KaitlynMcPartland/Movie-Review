require 'ffaker'
# seed category database
api_key = ENV['MOVIE_API']
Tmdb::Api.key(api_key)

genre_list = Tmdb::Genre.list

genre_list['genres'].each do |hash|
  Category.create(name: hash.fetch('name'), movie_db_id: hash.fetch('id'))
end

cat = Category.find(16)
cat.destroy

categories = Category.all

categories.each do |category|
  movies = Tmdb::Genre.detail(category.movie_db_id).results
  movies.each do |movie|
    Movie.create(title: movie.fetch("original_title"), summary: movie.fetch("overview"), poster_path: movie.fetch("poster_path"), category_id: category.id, release_date: movie.fetch("release_date"))
  end
end


10.times do |x|
  user = User.create!({
    username: FFaker::Internet.user_name,
    email: FFaker::Internet.email,
    password: 'abc1234',
    rating: rand(1..60),
    status: "Novice"
  })
  user.update_status
end

# User.all.each do |user|
#   user.update_status
# end


2000.times do |x|
  Review.create!({
    title: FFaker::Lorem.sentence,
    body: FFaker::Lorem.paragraph,
    stars: rand(1..5),
    reviewer_id: rand(1..10),
    movie_id: rand(1..Movie.all.count),
    points: rand(1..20)
  })
end

