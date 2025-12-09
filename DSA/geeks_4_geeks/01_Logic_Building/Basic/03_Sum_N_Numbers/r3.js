const findSum = (num) => {
  if(num === 1) return 1

  return num + findSum(num - 1)
}

num = 5
console.log(findSum(num))