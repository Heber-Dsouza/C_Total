const findNth = (n1, n2, nth) => 
  n1 + (nth - 1) * (n2 - n1)

const n1 = 1, n2 = 3, nth = 10
console.log(findNth(n1, n2, nth))