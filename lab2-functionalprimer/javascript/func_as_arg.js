// Create a function to generate a list of numbers from a to b
function arrFunc(a, b) {
    let arr = [];
    for (let i = a; i <= b; i++) {
        arr.push(i);
    }
    return arr;
}

// Define applicatorFunc to compute sum or average
function applicatorFunc(inpFunc, a, b, s) {
    const arr = inpFunc(a, b);
    let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);

    return s === 's' ? sum : sum / arr.length;
}

// Call applicatorFunc with range 1 to 10 and choice 's' (sum) or 'a' (average)
console.log(applicatorFunc(arrFunc, 1, 10, 's')); // Sum
console.log(applicatorFunc(arrFunc, 1, 10, 'a')); // Average
