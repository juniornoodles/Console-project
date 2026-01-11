# Console-project
All of the code that I produce to be used to create my own gaming console



CPU specs:


32 bit cpu

32 registers in register file

524KB of RAM

32KB of instruction storage

Encoding fomrat 

XXXXXXXXXXXXXXXXX XXXXX XXXXX XXXXX

Immediate value    Reg1  Reg2 opcode

cpu instructions
0-ADD

1-SUB

2-AND

3-OR

4-XOR

5-SHIFT LOGICAL

6-SHIFT ARITH

7-IS LESS THAN UNSIGNED

8-IS LESS THAN SIGNED

9-IS EQUAL

10-IS NOT EQUAL

11-ADDI

12-ANDI

13-ORI

14-XORI

15-SHIFT LOGICALI

16-SHIFT ARITHI

17-IS LESS THAN UNSIGNEDI

18-IS LESS THAN SIGNEDI

19-IS EQUALI

20-IS NOT EQUALI

21-LOAD WORD

22-STORE WORD

23-BRANCH IF TRUE

24-BRANCH IF FALSE

25-JUMP AND LINK

26-JUMP AND LINK REG

27 LOAD IMM

28-LOAD UPPER IMM

29-ADD UPPER IMM TO PC

30-ENVIORNMENT CALL

31-ENVIORNMENT BREAK

CPU Notes: 

AUIPC and ECALL currently don not do anything. This is because the PC is 13 bits and the immediate section of the instruction is 17 bits. As for ecall, I do not plan on making an OS, but I kept it in just in case I change my mind later.

With shifts, positive values shift to the right, and negative values shift to the left.

If loading or storing, always make reg1 zero.

False is 0, true is anything else.

With branch instructions, it will check reg1, we do not care what rd is.

With jump and link, we do not care what reg1 is.


# How to use Assembler

The assembler I made is very rudimentry, I made it to make it easier to program the cpu, not for it to be used by others. However, I still think it is worth sharing.

R types:  instr reg1, reg2, rd

I types:  instr reg1, imm, rd

Loads and Stores:  instr rd, imm

branches:  instr reg1(test reg), label

jal:  jal rd, label

jalr:  jalr reg1, imm, rd

ebreak:  ebreak

To put labels, put a colon followed by the name of the label. You must put the label on the same line you want the instruction to jump to. For example:

add 4, 3, 1 :here //This is a comment, even without the slashes this would still be a comment

jal 2, here

Anything written after the instruction (or after the label) on the same line is considered a comment.

If you look at the assembler code, you will probably find work arounds to still assemble the machine code, which is fine if you'd like to do so. I just wanted to explain my intent with the assembler.
