# frozen_string_literal: true

require 'time'
require 'TimeParser'
require 'tty-font'

font = TTY::Font.new(:standard)
puts font.write('Pomodoro')

def seconds(_minutes)
  seconds == 60
end

# start_time = Time.parse("%M/%S")
print 'Length of time in minutes:  '
init_time_amount = gets.chomp + 'm'
init_time_amount = init_time_amount.parse_time.to_i

# Get the number of rounds
print ' Number of Rounds: '
num_rounds = gets.chomp
num_rounds.to_i

# Short break after each round.
print ' Short break length: '
short_break_length = gets.chomp + 'm'
short_break_length.parse_time.to_i

# Long break should only happen after minimum of 2 rounds
print ' long break length: '
long_break_length = gets.chomp + 'm'
long_break_length.parse_time.to_i

end_time = init_time_amount * seconds.to_i

start_time = 0o0

while rounds >= 1 && start_time < end_time
  end_time -= 1
  print end_time.to_s + "\r"
  sleep 1
end

p 'times up'
system(%(say -v "Oliver" "Times up have a break"))

# p "Next round begins in: #{short_break_length}"

# if rounds is greater then or equal too 1
# and its not a break (long or short)
# and end time is 0
# user input equals init_time_amount
#
