# From r/dailyprogrammer
# http://www.reddit.com/r/dailyprogrammer/comments/230m05/4142014_challenge_158_easy_the_torn_number/
# I had the other day in my possession a label bearing the number 3 0 2 5
# in large figures. This got accidentally torn in half, so that 3 0 was on
# one piece and 2 5 on the other. On looking at these pieces I began to
# make a calculation, when I discovered this little peculiarity.
# If we add the 3 0 and the 2 5 together and square the sum we get as
# the result, the complete original number on the label! Thus, 30 added
# to 25 is 55, and 55 multiplied by 55 is 3025. Curious, is it not?

# Now, the challenge is to find another number, composed of four figures,
# all different, which may be divided in the middle and produce the same result.

puts "Enter a 4-digit number:"
i = gets.chomp.to_i
if i > 999 && i < 10000 then
  if (i/100) + (i%100) == Math.sqrt(i) && i.to_s.split("").uniq.length == 4 then
    puts "#{i} is a Torn number."
  else puts "Not a Torn number."
  end
end
