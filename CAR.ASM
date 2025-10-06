MODEL small
STACK 256
DATASEG
CODESEG

start:
    mov ax,0013h      
    int 10h

    mov cx,100
draw_body_x:
    mov dx,120
draw_body_y:
    mov al,4           
    mov ah,0Ch
    int 10h
    inc dx
    cmp dx,160
    jle draw_body_y
    inc cx
    cmp cx,220
    jle draw_body_x

    mov cx,130
draw_roof_x:
    mov dx,100
draw_roof_y:
    mov al,2           
    mov ah,0Ch
    int 10h
    inc dx
    cmp dx,120
    jle draw_roof_y
    inc cx
    cmp cx,190
    jle draw_roof_x

    mov cx,135
draw_window1_x:
    mov dx,105
draw_window1_y:
    mov al,3          
    mov ah,0Ch
    int 10h
    inc dx
    cmp dx,115
    jle draw_window1_y
    inc cx
    cmp cx,160
    jle draw_window1_x

    mov cx,160         
draw_door_lines:
    mov dx,130        
    mov al,0
    mov ah,0Ch
    int 10h
    mov dx,133         
    int 10h
    mov dx,136         
    int 10h
    mov dx,139        
    int 10h
    inc cx
    cmp cx,210
    jle draw_door_lines

    mov cx,110
draw_wheel1_x:
    mov dx,160
draw_wheel1_y:
    mov al,8           
    mov ah,0Ch
    int 10h
    inc dx
    cmp dx,180
    jle draw_wheel1_y
    inc cx
    cmp cx,130
    jle draw_wheel1_x

    mov cx,190
draw_wheel2_x:
    mov dx,160
draw_wheel2_y:
    mov al,8           
    mov ah,0Ch
    int 10h
    inc dx
    cmp dx,180
    jle draw_wheel2_y
    inc cx
    cmp cx,210
    jle draw_wheel2_x

wait_key:
    mov ah,1
    int 16h
    jz wait_key

    mov ax,0003h
    int 10h
    mov ah,4Ch
    int 21h

end start
