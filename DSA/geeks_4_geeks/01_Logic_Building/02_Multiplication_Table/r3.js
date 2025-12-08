const printTable = (num, i = 1) => {
  if (i > 10) return

  console.log(`${num} * ${i} = ${num * i}`)

  printTable(num, i+1)
}

const num = 5
printTable(5)