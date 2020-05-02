<!-- 02.05 2020 -->

# format.awk
script to help converting source files into header files.

It expects GNU-like formating and C syntax:
  - function type on a separate line from a function name and argument list
  - `{ }` in function definitions on separate lines


## Example
``` sh
	cat example.c | ./format.awk >| out.h`
```
