;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  128 bit Vesion 1.0 2024_1_7
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.data
higher	qword ?
public  higher

        .code
ConCall proc
	mov	rax,rcx	;keep rcx for original value
	test rax,1 	;this test value is even or odd
	jnz p_odd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This process even number
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; p_even				
	Shr	rax,1					
	test  rdx,1						
	jz t0
	mov rbx,8000000000000000h			
	or rax,rbx					
t0:
	shr	rdx,1
	mov higher,rdx
	jmp	L7
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This process odd number
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

p_odd:
L0:
	mov	rbx,rdx
	shl	rdx,1		
	jnc	L2
	mov	rax,0000004552524F52h
	jmp	L7
L2:
	add	rdx,rbx	
	jnc	L3
	mov	rax,0000004552524F52h
	jmp	L7
L3:
	shl rax,1				
	jnc L4				
	add	rdx,1
	jnc L4				
	mov	rax,0000004552524F52h
	jmp	L7
L4:
	add	rax,rcx
	jnc 	L5				
	add	rdx,1
	jnc 	L5				
	mov	rax,0000004552524F52h
	jmp	L7
L5:
	add	rax,1
	jnc 	L6				
	add	rdx,1
	jnc 	L6				
	mov	rax,0000004552524F52h
L6:
	mov higher,rdx
L7:	
	ret							;  done
ConCall endp
end