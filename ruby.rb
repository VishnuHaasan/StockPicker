def stock_picker(array)
  a = Array.new(3,0);
  for i in 0..array.length-2 do
    for j in i+1..array.length-1 do
      s = array[j] - array[i];
      if s>a[2]
        a[0] = i;
        a[1] = j;
        a[2] = s;
      end;
    end;
  end;
  return a;
end;
puts "Enter the number of days to be checked for: ";
n = gets.chomp.to_i;
puts "Enter the stock prices: ";
array = Array.new;
for i in 1..n do
  x = gets.chomp.to_i;
  array.push(x);
end
res = stock_picker(array);
puts "The stock should be bought on day #{res[0]} and sold on day #{res[1]} for a maximum profit of $#{res[2]}.";