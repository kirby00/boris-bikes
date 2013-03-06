#!/usr/bin/env ruby

require "./bike"
require "./station"
require "./person"
require "./control"
require "./van"
require "./garage"

# Actual program running
instance_of_control_class = Control.new
# puts instance_of_control_class.create_report
instance_of_control_class.take_bike
instance_of_control_class.return_bike
instance_of_control_class.call_van
instance_of_control_class.print_report

