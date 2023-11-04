# 8_bit_ALU
## Introduction
An 8-bit Arithmetic Logic Unit, commonly known as an 8-bit ALU, is a fundamental component in digital logic design and microprocessor architecture. It performs various arithmetical and logical operations such as addition, subtraction, multiplication, division, increment, decrement, AND, OR, etc. on two operands of 8 bits each and produces a result of 16 bits. It also alters the carry flag and the zero flag after computing the result.

![image](https://github.com/875keshav/8_bit_ALU/assets/126338618/3bfaa7cf-1755-4f01-8103-02a6f44f0e0d)

## Working

| OPCODE | OPERATION |
|----------|----------|
| 0000 | Operand1 + Operand2|
| 0001 | Operand1 - Operand2|
| 0010 | Operand1 * Operand2|
| 0011 | Operand1 / Operand2|
| 0100 | Operand1 + 1 |
| 0101 | Operand1 - 1 |
| 0110 | Operand1 & Operand2|
| 0111 | Operand1 | Operand2|
| 1000 | ~ Operand1 | Operand2|
| 1001 | Operand1 ^ Operand2|
| 1010 | Operand1 ~^ Operand2|
| 1011 | ~(Operand1 & Operand2)|
| 1100 | ~(Operand1 | Operand2)|


## Simulation Result
### Simulated waveform
![image](https://github.com/875keshav/8_bit_ALU/assets/126338618/979f9a09-0f9c-478b-8230-be26c6dcedcb)

### Schematic Diagram
![image](https://github.com/875keshav/8_bit_ALU/assets/126338618/5af2c8ca-888d-4ea3-b896-48341d0394c9)
