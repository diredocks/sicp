> In respect and admiration, to the spirit that lives in the computer.

Visit [Structure and Interpretation of Computer Programs](https://sarabander.github.io/sicp) to read the book online.

## Tips of using Racket to learn SICP

### Use the SICP Language Package

The SICP book uses the Scheme language. You can install the sicp package in Racket to ensure compatibility with SICP exercises. Install it with: `raco pkg install sicp`

### REPL with SICP Language

To use the sicp language in the REPL, start it with: `racket -I sicp`

### Run SICP Scripts

Create a file named `sicp-example.rkt`:

```scheme
#lang sicp
(inc 232)
```

Run the file using the command: `racket sicp-example.rkt`, output as:

```
233
```
