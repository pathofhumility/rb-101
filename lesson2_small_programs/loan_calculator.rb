# code formula
# M -> monthly payment
# P -> loan amount
# J -> monthly interest rate
# N -> loan duration (months)
require 'yaml'

PROMPTS = YAML.load_file('loan_calc_messages.yml')

def headings(message)
  puts message
end

def prompt(message)
  print ">> #{message}"
end

headings(PROMPTS['heading'])
prompt(PROMPTS['loan_amt'])
loan_amount = gets.chomp.to_f
prompt(PROMPTS['annual_interest_rate'])
monthly_int_rate = gets.chomp.to_f / 1200
prompt(PROMPTS['duration'])
loan_duration = gets.chomp.to_i

monthly_payment =
  loan_amount *
  (monthly_int_rate / (1 - (1 + monthly_int_rate)**(-loan_duration)))
puts "Monthly Payment = $#{monthly_payment.round(2)}"
