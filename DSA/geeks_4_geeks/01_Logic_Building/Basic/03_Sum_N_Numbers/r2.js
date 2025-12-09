const findSum = (num, sum = 0, i = 1) => {
  if(i > num) return sum

  return findSum(num, sum + i, i + 1)
}

num = 3
console.log(findSum(num))