# zig-spork

zig-spork is a zig library offering a simple, low-level and allocation free
abstraction for creating TUI programs. zig-spork takes care of wrangling the
terminal, but unlike other TUI libraries it does not get in the way when you
want to render the interface.

zig-spork supports the kitty keyboard protocol.

The text attribute code can be used independently, so zig-spork is also useful
for non-TUI terminal programs that still want fancy text.

```
    _
  /   \
 |     |
  \   /
   | |
   | |
   | |
   | |
   (_)
```


## License

zig-spork is licensed under version 2.0 of the MPL.

zig-spork is based on a pre-GPL commit of https://git.sr.ht/~leon_plickat/zig-spoon.

The code of the exmaple programs in `example/` are released into the public
domain.

