
def sum_with_range(inicio, final):
  sum = 0
  for x in range(inicio, final + 1):
    sum += x  # 1 + 2 + 3 ...
  return sum

print(sum_with_range(1, 10))
print(sum_with_range(3, 16))