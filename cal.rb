require "date"

this_year=2012
mymonth=(ARGV[0].chomp).to_i
last_day=Date.new(this_year,mymonth,-1)

print("-------", mymonth, "-------\n")

(1..last_day.day).each do |day|
  if (day%7) == 0 then
    print("#{day}|\n")
    puts "-"*18
  elsif (day%7) == 1 then
    print("|")
  else
    print("#{day}|")
  end
end
print("\n")
