// m !== 0
const n = 15, m = 6

const possibilities = []
for(let i = 0; i <= n; i++){
  if (i % m === 0) possibilities.push(i)
}

// if(possibilities[possibilities.length - 1])
//   possibilities.push(possibilities[possibilities.length - 1] + m)

console.log(possibilities.pop())