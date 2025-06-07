zig build-exe main.zig \
  -I termbox2 termbox2/libtermbox2.a \
  -lc \

 rm main.o

 ./main
