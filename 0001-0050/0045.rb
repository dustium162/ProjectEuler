# Since n*(2*n-1) = (2*n)*(2*n-1)/2, all Hexagonal numbers are triangle number.

pen = 40755
hex = 40755

np = 165
nh = 143

pen += 3*np + 1
np += 1

while pen != hex
  if pen < hex
    pen += 3*np + 1
    np += 1
  else
    hex += 4*nh + 1
    nh += 1
  end
end
puts pen
