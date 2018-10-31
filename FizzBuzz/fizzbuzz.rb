a = (1..100).to_a
a.each do |e|
  if e % 3 == 0 && e % 5 == 0
    print "FizzBuzz "
  elsif e % 3 == 0
    print "Fizz "
  elsif e % 5 == 0
    print "Buzz "
  else
    print "#{e} "
  end
end
