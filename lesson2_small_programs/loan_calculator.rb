require 'yaml'

PROMPTS = YAML.load_file('loan_calc_messages.yml')

def display_heading(message)
  puts message
end

def display_prompt(message)
  print ">> #{message}"
end

def validate_input(result)
  result.empty? || result.to_f <= 0.0
end

def get_input
  loop do
    result = gets.chomp
    if validate_input(result)
      puts "That's invalid, you must enter a number greater than zero(0)."
    else
      return result
    end
  end
end

display_heading(PROMPTS['heading'])

display_prompt(PROMPTS['loan_amt'])
loan_amount = get_input().to_f

display_prompt(PROMPTS['annual_interest_rate'])
monthly_int_rate = get_input().to_f / 1200

display_prompt(PROMPTS['duration'])
loan_duration = get_input().to_i

monthly_payment = loan_amount *
                  (monthly_int_rate /
                  (1 - (1 + monthly_int_rate)**(-loan_duration)))

puts "Monthly Payment = $#{monthly_payment.round(2)}"
