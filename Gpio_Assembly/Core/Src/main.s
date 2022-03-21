
// Enable Clock to PortA
// Set PA5 to output mode
// Write to PA5

.cpu cortex-m4
.syntax unified

// GPIOA: ODR, MODER
// GPIOA base : 0x4002 0000

.equ GPIOA_BASE, 0x40020000
.equ GPIOA_MODER_OFFSET, 0x00
.equ GPIOA_ODR_OFFSET, 0x14

.equ GPIOA_MODER, GPIOA_BASE + GPIOA_MODER_OFFSET
.equ GPIOA_ODR, GPIOA_BASE + GPIOA_ODR_OFFSET

// RCC: AHB1ENR
// RCC base: 0x4002 3800
.equ RCC_BASE, 0x40023800
.equ AHB1ENR_OFFSET, 0x30

.equ RCC_AHB1ENR, RCC_BASE + AHB1ENR_OFFSET

.equ GPIOA_EN, 1<<0
.equ MODER5_OUT, 1<<10
.equ LED_ON, 1<<5
.equ LED_OFF, 0<<5

		.section: .text
		.globl 	  main

main:
		BL 			GPIOA_INIT

GPIOA_INIT:
		// Load address of RCC_AHB1ENR to R0
		LDR		R0,=RCC_AHB1ENR
		LDR		R1,[R0]
		ORR		R1,#GPIOA_EN
		// Store the content in R1 at the address found in R0
		STR		R1,[R0]

		LDR		R0,=GPIOA_MODER
		LDR		R1,[R0]
		ORR		R1,#MODER5_OUT

		STR		R1,[R0]

		LDR		R0,=GPIOA_ODR
		LDR		R1,=LED_ON
		STR 	R1,[R0]

		BX		LR

		.end

