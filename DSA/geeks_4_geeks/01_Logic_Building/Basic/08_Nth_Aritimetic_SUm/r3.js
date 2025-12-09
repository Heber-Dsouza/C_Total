// Naive approach
const findNth = (n1, n2, nth) => {
  let nthTerm = n1
  let incremental = n2 - n1
  for(let i = 1; i < nth; i++){
    nthTerm += incremental
  }

  return nthTerm
}

const n1 = 2, n2 = 3, nth = 4
console.log(findNth(n1, n2, nth))