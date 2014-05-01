require "tickets_now/version"
require 'tickets_now/api'


module TicketsNow
  autoload :API, 'tickets_now/api'
 # Your code goes here...

end

tn = TicketsNow::API.new
puts tn

