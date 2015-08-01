class SongsController < ApplicationController
  def top
    
  end

  def result
    like_param = params[:like].to_f
    joy_param = params[:joy].to_f
    anger_param = params[:anger].to_f

    puts like_param
    puts joy_param
    puts anger_param

    like, dislike = like_param > 0 ? [like_param, 0] : [0, -like_param]
    joy, sad = joy_param > 0 ? [joy_param, 0] : [0, -joy_param]
    anger, fear = anger_param > 0 ? [anger_param, 0] : [0, -anger_param]

    keywords = %w(like dislike joy sad anger fear)
    value, i = [like, dislike, joy, sad, anger, fear].each_with_index.max

    keyword = keywords[i]

    p keyword

    song = Song.joins(:tags).where(tags: {name: keyword}).first || Song.first
    @url = song.url
  end
end
