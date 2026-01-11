class Agent
    attr_reader :name

    def initialize(name,details)
        @name = name
        @details = details
    end

    def read_dossier
        puts "Agent name: #{@name}"
        puts "Agent location: #{@details[:location]}"
        puts "Agent skill: #{@details[:skill]}"
    end
end

agents = [
    Agent.new("Enzo", { location: "Rome", skill: "Data Mining" }),
    Agent.new("Liv", {location:"Boulder", skill: "Laugh"})
]

agents.each do |agent|
    puts "\nRoll call for agent: #{agent.name}"
    agent.read_dossier
end

