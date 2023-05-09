# In real life we should not invoke clang directly but use cc instead.
# Since we're exploring llvm and its ir, we're using clang directly here

hello-world.s: hello-world.ll
	llc -filetype=asm hello-world.ll

hello-world: hello-world.s
	clang hello-world.s -o $@

hello-world-run: hello-world.ll
	lli hello-world.ll

hello-world-run-executable: hello-world
	./hello-world

