const sumation = (num) => {
  let sum = 0
  for (let i = 1; i <= num; i++)
    sum += i**2

  return sum
}

num = 8
console.log(sumation(num))