module ApplicationHelper
  def short_time(time)
   (Time.now.to_date - time).to_i
  end

  def poster_show(poster_path)
    "https://image.tmdb.org/t/p/w300_and_h450_bestv2" + poster_path
  end
end
