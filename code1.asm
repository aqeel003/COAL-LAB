

.model small
.stack 100h
.data
.code
        main proc
            mov al, 3
            mov bl, 5
            mov cl, 3
            
            add bl, al  
            add cl,bl
            
            mov al,2
            mov bl,1
            add bl,al
            sub cl,bl
            mov dl,cl
            add dl,48
            
            mov ah,2
            int 21h
            
            
            
            
            main endp
        
 end main