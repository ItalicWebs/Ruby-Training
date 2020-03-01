module Weather_main
  # def self.data_today_date
  #   Time.now.strftime("%Y%m%d")
  # end

  def self.data_today_date
    require 'date'
    Date.today
  end

  def self.data_increase_date(increaseby)
    (data_today_date + increaseby).to_s
  end

  def self.data_three_day_array
    [data_increase_date(1), data_increase_date(2), data_increase_date(3)]
  end

  def self.data_whole_week_array
    [data_increase_date, data_increase_date(1), data_increase_date(2), data_increase_date(3), data_increase_date(4), data_increase_date(5), data_increase_date(6)]
  end

  def self.data_weather_fresno
    [
      {Day: '2020-02-29', Morning: 51, Afternoon: 77, Evening: 53},
      {Day: '2020-03-01', Morning: 45, Afternoon: 58, Evening: 46},
      {Day: '2020-03-02', Morning: 52, Afternoon: 66, Evening: 55},
      {Day: '2020-03-03', Morning: 55, Afternoon: 73, Evening: 52},
      {Day: '2020-03-04', Morning: 56, Afternoon: 79, Evening: 57},
      {Day: '2020-03-05', Morning: 58, Afternoon: 80, Evening: 56},
      {Day: '2020-03-06', Morning: 48, Afternoon: 75, Evening: 44},
      {Day: '2020-03-07', Morning: 48, Afternoon: 65, Evening: 47},
      {Day: '2020-03-08', Morning: 46, Afternoon: 72, Evening: 47}
    ]
  end

  def self.report_today_weather
    data_weather_fresno.each do |day|
      if day[:Day] == data_today_date.to_s
        puts "Your forcast for this morning is showing #{day[:Morning]} °F, This afternoon will be #{day[:Afternoon]} °F and Finally your evening #{day[:Evening]} °F"
      end
    end
  end

  def self.report_three_day_weather
    data_weather_fresno.each do |day|
      if data_three_day_array.include?(day[:Day])
        puts "#{day[:Day]} - Morning: #{day[:Morning]} Afternoon: #{day[:Afternoon]} Evening: #{day[:Evening]}"
      end
    end
  end

end

# Debugger
# puts "[Class Check] Data_Weather_Fresno: #{Weather_main.data_weather_fresno.class}"
# puts "[Data Check] Data_Today_Date: #{Weather_main.data_today_date}"
# puts "[Class Check] data_three_day_array: #{Weather_main.data_three_day_array.class}"
# puts "[Data Check] data_three_day_array: #{Weather_main.data_three_day_array}"

puts "Today's Forcast [Sponsored by Kris' Beard Christmas Lights]"
Weather_main.report_today_weather
puts "Forcast for the next 3 days"
Weather_main.report_three_day_weather
