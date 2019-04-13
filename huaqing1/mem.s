	area mycod, code, readonly
	code32

	entry

start
	;ldr r1, =0x88 ;r1将放入0x40000000的内容0000000
	;ldr r2, =0x123
	;mov r3, #0x40000000		;地址保存到r2中
	;swp r1, r2, [r3]
	;swp r1, r2, [r3]
	;swp r2, r2, [r3] ;交换内存和寄存器
    ;swp 1,2,[3]
	;从以3位地址的内存中取内容放入1,并将2放入3的地址

	;ldr 内存->寄存器
	;str 寄存器->内存
	;mov r1, #0x99
	;ldr r3, =0x40000200
	;str r1, [r3]
	;str r1, [r3, #4]! ;r3+=4					 
	;ldr r4, [r3]
	;str r1, [r3], #4  ;r3+4

	;连续操作
	ldr r0, =0x40000100
	ldr r1, =0x11
	ldr r2, =0x22
	ldr r3, =0x33
	ldr r4, =0x44
	stmfd r0!, {r1-r4}

	;APCS规定,r13/sp 指向内存地址
	;函数保证跳转前后sp保证不变
	;保存现场
	stmfd sp!, {r0-r12, r14}
	;恢复现场
	ldmfd sp!, {r0-r12, r14}


	;b和bl为相对跳转,不能超过24bit,+-32MB
	;长跳转需要修改pc,绝对跳转

	end
