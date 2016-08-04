# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'melaniesarah', email: 'melaniesarah@gmail.com', password_digest:'password')

Category.create(name: 'category name')

Movie.create(title: 'my movie', summary: 'summary here', category_id: 1)

Review.create(title: 'title', body: 'my review', reviewer_id: 1, movie_id: 1)

Comment.create(body: 'the comment body', review_id: 1, commenter_id: 1)

ReviewVote.create(review_id: 1, voter_id: 1)
