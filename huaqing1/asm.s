

	area mycode, code, readonly
	code32

	entry

	;�Ĵ����������ݵ�������
	;mov  ��Ч������
	;mvn  ��λȡ����Ч������
	;ldr,=xxx αָ��, ����int��

	;��������ָ��add  sub  mul
	;ע�ⲻ������������������

	;��λ����ָ��orr��1Ϊ1 and bicλȡ��

	;�ڴ����ָ��
	;swp�ڴ�ͼĴ�������
	;ldr �ڴ�->
start
	mov r0, #11
	mov r1, #0x20000000		
	mov r2, r1
	mvn r3, #0xff ;��λȡ��
	mvn r4, r3
	ldr r5, =0x123  ;αָ��, �ɴ�ŷǷ�������, �ȷ��ڴ�, �ٴ��ڴ�

	;��������ָ��
	;��8-11λ��Ϊ0xe
	ldr r0, =0x1200
	bic r0, r0, #0xf << 8	;8-11λ����
	orr r0, r0, #0xe << 8   ;0xeΪҪ���õ���

	;��12-15λΪ0
	ldr r1, =0x12010  ;->0x10010
	bic r1, r1, #0xf << 12


	swp r0, r1, [r2]


	end

