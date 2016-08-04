# seed category database
api_key = ENV['MOVIE_API']
Tmdb::Api.key(api_key)

genre_list = Tmdb::Genre.list

genre_list['genres'].each do |hash|
  Category.create(name: hash.fetch('name'), movie_db_id: hash.fetch('id'))
end

categories = Category.all

categories.each do |category|
  movies = Tmdb::Genre.detail(category.movie_db_id).results
  movies.each do |movie|
    Movie.create(title: movie.fetch("original_title"), summary: movie.fetch("overview"), poster_path: movie.fetch("poster_path"), category_id: category.id, release_date: movie.fetch("release_date"))
  end
end



