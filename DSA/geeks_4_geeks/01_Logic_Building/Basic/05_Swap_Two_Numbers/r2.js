// invalid: no swap between variables, only in output

let a = -5, b = 10

console.log(`a = ${a}, b = ${b}`)

a = a + b

console.log(`a = ${b}, b = ${a - b}`)