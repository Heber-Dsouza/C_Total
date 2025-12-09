// avoiding overflow due to large result before division

// n(n+1)(2n+1) / 6 becomes:
// (n(n+1)/2)(2n+1) / 3
const sumation = (num) => 
  (num * (num + 1) / 2) * (2 * num + 1) / 3

num = 10
console.log(sumation(num))