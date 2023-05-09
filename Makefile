# In real life we should not invoke clang directly but use cc instead.
# Since we're exploring llvm and its ir, we're using clang directly here

LLC := llc
CLANG := clang
LLI := lli

hello-world.s: hello-world.ll
	$(LLC) -filetype=asm hello-world.ll

hello-world: hello-world.s
	$(CLANG) hello-world.s -o $@

hello-world-run: hello-world.ll
	$(LLI) hello-world.ll

hello-world-run-executable: hello-world
	./hello-world

