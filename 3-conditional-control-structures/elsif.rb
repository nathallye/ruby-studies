day = 'Holiday' # Feriado

if day == 'Sunday' # Domingo
  lunch = 'special'
elsif day == 'Holiday' # Feriado
  lunch = 'later' # mais tarde
else 
  lunch = 'normal'
end

puts "Lunch is #{lunch} today."