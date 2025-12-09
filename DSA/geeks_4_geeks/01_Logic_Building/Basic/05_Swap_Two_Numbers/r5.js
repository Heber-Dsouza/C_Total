let a = 2, b = 3;

console.log(`a = ${a}, b = ${b}`); 

[a, b] = [b, a]


console.log(`a = ${a}, b = ${b}`);

/* 
 * Obs.: antes da expressão [a, b] = [b, a], note que console.log(`a = ${a}, b = ${b}`); termina com ;
 * Sem o ; no final de console.log() e antes do [a, b] = [b, a] dá erro
 */