TARGET_ARRAY = "Hello World".chars
CHAR_RANGE = 32..126
SLEEP_TIME = 0.005

def find_char(target)
  found = rand(CHAR_RANGE).chr
  print found

  while found != target
    found = rand(CHAR_RANGE).chr
    print "\b#{found}"
    sleep(SLEEP_TIME)
  end
  found
end

TARGET_ARRAY.map { |c| find_char(c) }.join