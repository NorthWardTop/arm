	area mycod, code, readonly
	code32

	entry

start
	;ldr r1, =0x88 ;r1������0x40000000������0000000
	;ldr r2, =0x123
	;mov r3, #0x40000000		;��ַ���浽r2��
	;swp r1, r2, [r3]
	;swp r1, r2, [r3]
	;swp r2, r2, [r3] ;�����ڴ�ͼĴ���
    ;swp 1,2,[3]
	;����3λ��ַ���ڴ���ȡ���ݷ���1,����2����3�ĵ�ַ

	;ldr �ڴ�->�Ĵ���
	;str �Ĵ���->�ڴ�
	;mov r1, #0x99
	;ldr r3, =0x40000200
	;str r1, [r3]
	;str r1, [r3, #4]! ;r3+=4					 
	;ldr r4, [r3]
	;str r1, [r3], #4  ;r3+4

	;��������
	ldr r0, =0x40000100
	ldr r1, =0x11
	ldr r2, =0x22
	ldr r3, =0x33
	ldr r4, =0x44
	stmfd r0!, {r1-r4}

	;APCS�涨,r13/sp ָ���ڴ��ַ
	;������֤��תǰ��sp��֤����
	;�����ֳ�
	stmfd sp!, {r0-r12, r14}
	;�ָ��ֳ�
	ldmfd sp!, {r0-r12, r14}


	;b��blΪ�����ת,���ܳ���24bit,+-32MB
	;����ת��Ҫ�޸�pc,������ת

	end
