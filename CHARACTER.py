.text

main:

  li $v0 , 4
  la $a0 , ask
  syscall
 
  li $v0 , 12
  syscall
  move $t1,$v0
 
  blt	$t1, 'a' , high 
  blt	$t1, 'z' , low
   
 low: 		
 
  li $v0, 4
  la $a0, input
  syscall
  
  li $v0, 4
  la $a0, hey
  syscall
  
  subi $a0, $t1, 0x20
  ori $v0, $zero, 11
  syscall
  j exit
  
high:

  li $v0, 4
  la $a0, input2
  syscall
  
  li $v0, 4
  la $a0, hey
  syscall
  
  ori $a0, $t1, 0x20
  ori $v0, $zero, 11
  syscall
  j exit
  
exit:
  li $v0 , 10
  syscall 
 
 .data
 ask: .asciiz "\nEnter a Character: "
 input: .asciiz "\nCharacter is Lower case"
 input2: .asciiz "\nCharacter is Upper case"
 hey: .asciiz "\nConversion: "
 
 #Gab Dizon
