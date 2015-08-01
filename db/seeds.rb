# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

anger = Tag.create(name: "anger")
dislike = Tag.create(name: "dislike")
fear = Tag.create(name: "fear")
joy = Tag.create(name: "joy")
like = Tag.create(name: "like")
sad = Tag.create(name: "sad")

Song.create(
  title: "怒りの日",
  url: "F_RYJg8-dSo",
  bgcolor_url: "",
  bgimage_url: "", tags: [anger])
