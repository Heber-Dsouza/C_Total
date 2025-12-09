const findNth = (n1, n2, nth) => {
  const incremental = n2 - n1

  return n1 + ((nth - 1) * incremental)
}

const n1 = 1, n2 = 3, nth = 10
console.log(findNth(n1, n2, nth))