on alfred_script(query)
  tell application "System Events" to set running_count to count (every process whose name is "Reminders")
  tell application "Reminders" to make new reminder with properties { name: query }
  if running_count < 1 then
    tell application "Reminders" to quit
  else
    tell application "Reminders" to activate
  end if
end alfred_script
