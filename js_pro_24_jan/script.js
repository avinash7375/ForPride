const resultDisplay = document.getElementById('result');
let currentInput = '';
let previousInput = '';
let operator = '';

document.querySelectorAll('.btn').forEach(button => {
  button.addEventListener('click', () => {
    const value = button.getAttribute('data-value');

    if (value === 'C') {
      clearDisplay();
    } else if (value === '=') {
      calculateResult();
    } else if (['+', '-', '*', '/'].includes(value)) {
      setOperator(value);
    } else {
      appendNumber(value);
    }
  });
});

function clearDisplay() {
  currentInput = '';
  previousInput = '';
  operator = '';
  updateDisplay('0');
}

function appendNumber(number) {
  if (number === '.' && currentInput.includes('.')) return;
  currentInput = currentInput + number;
  updateDisplay(currentInput);
}

function setOperator(op) {
  if (currentInput === '') return;
  if (previousInput !== '') calculateResult();
  operator = op;
  previousInput = currentInput;
  currentInput = '';
}

function calculateResult() {
  if (previousInput === '' || currentInput === '' || operator === '') return;

  const num1 = parseFloat(previousInput);
  const num2 = parseFloat(currentInput);

  let result = 0;
  switch (operator) {
    case '+': result = num1 + num2; break;
    case '-': result = num1 - num2; break;
    case '*': result = num1 * num2; break;
    case '/': result = num2 !== 0 ? num1 / num2 : 'Error'; break;
  }

  currentInput = result.toString();
  previousInput = '';
  operator = '';
  updateDisplay(currentInput);
}

function updateDisplay(value) {
  resultDisplay.value = value;
}
