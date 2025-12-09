const sumation = (num) => {
  if(num === 1) return 1

  return num ** 2 + sumation(num - 1)
}

num = 8
console.log(sumation(num))