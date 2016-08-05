module ApplicationHelper
  def short_time(time)
   (Time.now.to_date - time).to_i
  end
end
