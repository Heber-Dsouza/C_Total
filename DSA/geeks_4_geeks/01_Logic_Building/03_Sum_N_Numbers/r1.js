const findSum = (num) => {
  let sum = 0
  for (let i = 1; i <= num; i++)
    sum += i

  return sum
}

num = 5
console.log(findSum(num))