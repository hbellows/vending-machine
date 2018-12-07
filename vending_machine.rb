
require 'json'
require 'pry'
require './lib/vending_machine'

file = File.read('tiny_vending_machine.json')
parsed_json = JSON.parse(file, symbolize_names: true)
@hash = parsed_json[:contents]

# puts 'Hello, please enter a command:
# (c)ontents - Prints the contents of the vending machine.
# (i)nsert money - Takes in coins and prints total money inserted.
# (v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.
# (p)urchase - Displays a prompt to enter the slot they\'d like to purchase.'

# input = gets.chomp



machine = VendingMachine.new(@hash)
# machine.purchase
machine.contents

# loop do 
#  if "c"
    # machine.contents
  # elsif "i"
    #machine.insert_money()
  # elsif "v"
    #machine.coins()
  # else
    #machine.purchase
# end






