.section .data
msg:
    .asciz "Hello, World!\n"

.section .text
.global _start

_start:
    movl $4, %eax          # 系统调用号 (sys_write)
    movl $1, %ebx          # 文件描述符 1 (stdout)
    movl $msg, %ecx        # 消息地址
    movl $13, %edx         # 消息长度
    int $0x80              # 调用内核

    movl $1, %eax          # 系统调用号 (sys_exit)
    xorl %ebx, %ebx        # 退出状态码 0
    int $0x80              # 调用内核
