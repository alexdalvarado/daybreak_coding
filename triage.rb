class Patient
    attr_reader :name 

    def initialize(name, vitals)
        @name = name
        @vitals = vitals 
    end

    def check_fever
        if @vitals[:temp] > 100.4
            puts "Urgent: #{@name} has a fever of #{@vitals[:temp]}"
        else   
            puts "#{@name} is stable"
    end
end
end

patients = [
    Patient.new("Alex",{temp: 98.6, heart_rate: 80}),
    Patient.new("Enzo",{temp: 102.1, heart_rate: 90}),
    Patient.new("Liv",{temp: 99.0, heart_rate: 100})
]

patients.each do |patient|
    puts "\n Checking #{patient.name} fever:"
    patient.check_fever
end