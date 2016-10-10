require 'colorize'



puts "What would you like to do?".black.on_white
puts "[1] Addition"
puts "[2] Substraction"
puts "[3] Multiplication"
puts "[4] Division"
puts "[5] BMI"
operation = gets.to_i

def Addition_function(first_operand, second_operand)
  puts "Enter first operand".red.on_white
  first_operand = gets.to_i
  puts "Enter second operand".red.on_white
  second_operand = gets.to_i
  result = first_operand + second_operand
  puts "Addition result: #{result}"
end

def Substraction_function(first_operand, second_operand)
  puts "Enter first operand".red.on_white
  first_operand = gets.to_i
  puts "Enter second operand".red.on_white
  second_operand = gets.to_i
  result = first_operand - second_operand
  puts "Substraction result: #{result}"
end

def Multiplication_function(first_operand, second_operand)
  puts "Enter first operand".red.on_white
  first_operand = gets.to_i
  puts "Enter second operand".red.on_white
  second_operand = gets.to_i
  result = first_operand * second_operand
  puts "Multiplication result: #{result}"
end

def Division_function(first_operand, second_operand)
  puts "Enter first operand".red.on_white
  first_operand = gets.to_i
  puts "Enter second operand".red.on_white
  second_operand = gets.to_i
  if second_operand == 0 then
    puts "Result: error, division by zero"
 	exit
  else
 	result = first_operand / second_operand
  end
  puts "Division result: #{result}"
end

def BMI_function(weight, height)
  puts "Enter your weight".red.on_white
  weight = gets.to_i
  puts "Enter your height".red.on_white
  height = gets.to_f
  result = (weight/(height**2)).round(2)
  puts "BMI result: #{result}"
  index = case result
  when 0...18.5
    "Underweight. please eat more"
  when 18.5..24.9 
    "Healthy weight, well done"
  when 25.0..29.9  
    "Overweight, do smth with it"
  else 
    "Obese, see a doctor immediately!"
 end
 puts index
end
    

operation_name = case 
when operation == 1 
  Addition_function(0,0)
when operation == 2 
  Substraction_function(0,0)
when operation == 3 
  Multiplication_function(0,0)
when operation == 4 
  Division_function(0,0)
when operation == 5
  BMI_function(0,0)
end







