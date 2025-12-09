const sumOfDigits = (num) => {
  const n = num.toString()
  let sum = 0
  for(let i of n) sum += Number(i)
  return sum
}


n = 12
console.log(sumOfDigits(n))