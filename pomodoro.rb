require "time"
require "TimeParser"
require 'tty-font'

font = TTY::Font.new(:standard)
puts font.write("Pomodoro")

seconds = 60 #set minute in seconds
# start_time = Time.parse("%M/%S")
print "Length of time in minutes? "
init_time_amount = gets.chomp  + 'm'
init_time_amount = init_time_amount.parse_time.to_i
init_time_amount

print " number of rounds"
rounds.gets.chomp
rounds = rounds.to_i
rounds

print "short break length (Recommend 5min)"
short_break = gets.chomp + 'm'
short_break = short_break.parse_time.to_i
short_break

print "long break length (Recommend 20min)"
long_break = gets.chomp = 'm'
long_break = long_break.parse_time.to_i
long_break


end_time =  init_time_amount * seconds.to_i


 start_time = 0
while  start_time < end_time
  end_time -=1
  print end_time.to_s + "\r"
  sleep 1
  $stdout.flush
end
p "times up"
