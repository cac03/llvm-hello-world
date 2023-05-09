@hello_world = constant [13 x i8] c"Hello world!\00"; (1)

declare i32 @puts(ptr); (2)

define i32 @main() { ; (3)
	call i32 @puts(ptr @hello_world); (4)
	ret i32 0; (5)
}

