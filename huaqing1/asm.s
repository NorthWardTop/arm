

	area mycode, code, readonly
	code32

	entry

	;寄存器放入数据的三方法
	;mov  有效立即数
	;mvn  按位取反有效立即数
	;ldr,=xxx 伪指令, 任意int数

	;基本运算指令add  sub  mul
	;注意不能是两个立即数运算

	;按位运算指令orr见1为1 and bic位取反

	;内存操作指令
	;swp内存和寄存器交换
	;ldr 内存->
start
	mov r0, #11
	mov r1, #0x20000000		
	mov r2, r1
	mvn r3, #0xff ;按位取反
	mvn r4, r3
	ldr r5, =0x123  ;伪指令, 可存放非法立即数, 先放内存, 再从内存

	;常用运算指令
	;将8-11位变为0xe
	ldr r0, =0x1200
	bic r0, r0, #0xf << 8	;8-11位置零
	orr r0, r0, #0xe << 8   ;0xe为要设置的数

	;让12-15位为0
	ldr r1, =0x12010  ;->0x10010
	bic r1, r1, #0xf << 12


	swp r0, r1, [r2]


	end

