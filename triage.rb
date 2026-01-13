require 'faker'

class Patient
    attr_reader :name 

    def initialize(name, vitals)
        @name = name
        @vitals = vitals 
    end

    def check_vitals
        if @vitals[:temp] > 100.4
            puts "Urgent: #{@name} has a fever of #{@vitals[:temp]}"
        elsif @vitals[:heart_rate] > 100
            puts "Warning: #{@name} has a high heart rate of #{@vitals[:heart_rate]} BPM"
        else   
            puts "#{@name} is stable"
    end
end
end


puts "How many patients do you want to generate? "
# 1. Get the number from the user
count = gets.chomp.to_i 

puts "Generating #{count} random patients..."
patients = []

# 2. Use the variable 'count' instead of the number 10
count.times do

  # Generate a random name
  random_name = Faker::Name.name
  
  # Generate random numbers (97 to 103 degrees, 60 to 120 bpm)
  random_temp = rand(97.0..103.0).round(1)
  random_hr   = rand(60..120)

  # Create the patient and add to list
  patients.push(
    Patient.new(random_name, { temp: random_temp, heart_rate: random_hr })
  )
end


patients.each do |patient|
    puts "\n Checking #{patient.name} vitals:"
    patient.check_vitals
end
