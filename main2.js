const message = "Hello, JavaScript!";
let counter = 0;

console.log(message);
console.log(`The counter is: ${counter}`);

function addTwoNumbers(a, b) {
    return a + b;
}

const sum = addTwoNumbers(5, 7);
console.log("The sum is: " + sum);

counter = counter + 1;
console.log(`Counter incremented to: ${counter}`);

if (sum > 10) {
    console.log("The sum is greater than 10.");
} else {
    console.log("The sum is 10 or less.");
}
