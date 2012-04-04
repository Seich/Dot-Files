# encoding: utf-8

# Get the current battery status percentage.
battery_status = `acpi`
charge = battery_status.match(/\d*%/)[0].chop.to_i
status = ""

if battery_status =~ /Charging/
  status = "⚡"
elsif battery_status =~ /Discharging/
  status = ""
end

# Calculate the number of charged slots.
total_slots = 10

filled = "▸" * (charge/total_slots).ceil
empty = "▹" * (total_slots - filled.length)
output = filled + empty


# Colors
color_green = '%{[32m%}'
color_yellow = '%{[1;33m%}'
color_red = '%{[31m%}'
color_reset = '%{[00m%}'

color_out = case
  when filled.length > 6
    color_green
  when filled.length > 4
    color_yellow
  else
    color_red
end

# Return the charge.
puts color_out + output + color_reset + color_yellow + " " + status + color_reset
