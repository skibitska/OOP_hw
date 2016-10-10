require 'colorize'



puts "What would you like to do?".black.on_white
puts "[1] Addition"
puts "[2] Substraction"
puts "[3] Multiplication"
puts "[4] Division"
puts "[5] BMI"
operation = gets.to_i




if operation == 1 || operation == 2 || operation == 3 || operation == 4
  puts "Enter first operand".red.on_white
  first_operand = gets.to_i

  puts "Enter second operand".red.on_white
  second_operand = gets.to_i
else
   puts "Enter your weight".red.on_white
   weight = gets.to_i
 	
   puts "Enter your height".red.on_white
   height = gets.to_f
end


result = case
when operation == 1 
  (first_operand + second_operand)
when operation == 2 
  (first_operand -  second_operand)
when operation == 3 
  (first_operand * second_operand)
when operation == 4 
  if second_operand == 0 then
    puts "Result: error, division by zero"
 	exit
  else
 	first_operand / second_operand
   end
when operation == 5 then (weight/(height**2)).round(2) 
end

if operation == 5 then index = result end
     

operation_name = case 
when operation == 1 
  "Addition"
when operation == 2 
  "Substraction"
when operation == 3 
  "Multiplication"
when operation == 4 
  "Division"
when operation == 5
  "BMI"
end


 puts " "
 puts "#{operation_name } result: #{result}"
 puts " "

 
if operation == 5 then
 BMIndex = case index
 when 0...18.5
   "Underweight. please eat more"
 when 18.5..24.9 
   "Healthy weight, well done"
 when 25.0..29.9  
   "Overweight, do smth with it"
 else 
   "Obese, see a doctor immediately!"
end
puts BMIndex
end



