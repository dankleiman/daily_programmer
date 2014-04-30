# From r/dailyprogrammer
# http://www.reddit.com/r/dailyprogrammer/comments/1v4cjd/011314_challenge_148_easy_combination_lock/
# Combination locks are mechanisms that are locked until a specific number combination is input. Either the input is a single dial that must rotate around in a special procedure, or have three disks set in specific positions. This challenge will ask you to compute how much you have to spin a single-face lock to open it with a given three-digit code.

# The procedure for our lock is as follows: (lock-face starts at number 0 and has up to N numbers)

#     Spin the lock a full 2 times clockwise, and continue rotating it to the code's first digit.
#     Spin the lock a single time counter-clockwise, and continue rotating to the code's second digit.
#     Spin the lock clockwise directly to the code's last digit.

input = [5, 1, 2, 3]


first_spin = input[0]*2 + input[1]
second_spin = input[0] + (input[1]-input[2])%input[0]
third_spin = (input[3]-input[2])%5

spins = first_spin + second_spin + third_spin
puts spins
