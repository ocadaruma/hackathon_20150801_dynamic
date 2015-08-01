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
  bgcolor_url: "bg_anger.jpg",
  bgimage_url: "bg_anger.jpg", tags: [anger])

Song.create(
  title: "嫌い",
  url: "XxGfrghh3-o",
  bgcolor_url: "bg_dislike.jpg",
  bgimage_url: "bg_dislike.jpg", tags: [dislike])

Song.create(
  title: "ダースベイダーのテーマ",
  url: "-bzWSJG93P8",
  bgcolor_url: "bg_fear.jpg",
  bgimage_url: "bg_fear.jpg", tags: [fear])

Song.create(
  title: "歓喜の歌",
  url: "dsQ9CP_GlTQ",
  bgcolor_url: "bg_joy.jpg",
  bgimage_url: "bg_joy.jpg", tags: [joy])

Song.create(
  title: "happy days",
  url: "inmcWweivHs",
  bgcolor_url: "bg_like.jpg",
  bgimage_url: "bg_like.jpg", tags: [like])

Song.create(
  title: "別れの曲",
  url: "0gM4dWVc0fM",
  bgcolor_url: "bg_sad.jpg",
  bgimage_url: "bg_sad.jpg", tags: [sad])
