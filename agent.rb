# 1. Define the "Skill" (Method)
def check_status(agent_name, status)
  puts "Checking status for #{agent_name}..."

  if status == "Ready"
    puts "System Green. Launching mission!"
  else
    puts "Standby. Agent is not ready."
  end
end

# 2. Use the Skill (Call the Method)
check_status("Enzo", "Ready")
check_status("Husky-1", "Sleeping")
check_status("Husky-2", "Ready")