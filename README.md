## AUTHORS

- OUGGADI Mohammed-Aymane
- KOURKI Kamal

===============

## Description of the project

This μ-project is a very simple compiler…

===============

## Sources

Git repository: https://github.com/MohammedAymane/Projet-Compilation

(obviously, you _will_ use a version control system such as Git, IMT
Atlantique provides a project management platform: use it!)

Release : tag 1.0 or commit acdeacdacdacdacd

===============

## How to…

…retrieve the sources?

git clone https://github.com/MohammedAymane/Projet-Compilation.git

…compile?

dune …

…execute and test?

dune exec ./pfxVM.exe -- TESTFILE.pfx

===============

## Structure of the project

The project is organized as following:

Explain here the organization of your project, what is the use of each file or
group of files, etc.

You may also show the file tree as the following example:

project
├── README
├── dune-project
├── expr: the expr compiler
│ ├── README
│ ├── basic
│ │ ├── ast.ml
│ │ ├── ast.mli
│ │ ├── dune
│ │ ├── eval.ml
│ │ ├── eval.mli
│ │ ├── lexer.mll
│ │ ├── parser.mly
│ │ ├── tests: for tests
│ │ │ └── an_example.expr
│ │ ├── toPfx.ml <- To edit
│ │ └── toPfx.mli
│ ├── common
│ │ ├── binOp.ml
│ │ ├── binOp.mli
│ │ └── dune
│ ├── compiler.ml: main file for the expr compiler
│ ├── dune
│ ├── fun: the expr parser for section 7
│ │ ├── ast.ml
│ │ ├── ast.mli
│ │ ├── lexer.mll
│ │ └── parser.mly
│ └── main.ml
├── pfx: the pfx VM
│ ├── basic
│ │ ├── ast.ml <- To edit
│ │ ├── ast.mli
│ │ ├── dune
│ │ ├── eval.ml <- To edit
│ │ ├── eval.mli
│ │ ├── lexer.mll <- To edit
│ │ ├── parser.mly <- To edit
│ │ └── tests: for tests
│ │ └── ok_prog.pfx
│ └── pfxVM.ml: main file for the pfx VM
└── utils
├── dune
├── location.ml: module offering a data type for a location in a file
└── location.mli

===============

## Know bugs and issues

- We were not able to manage question 10.3 completely

===============

## Helpful resources
- we used this youtube channel for the parser & lexer https://www.youtube.com/channel/UCSZ5lYLg6ARj4Wow3ZQXQzA
- we used Stack Ocaml documentation:
  https://www.ocaml.org/docs/

===============

## Difficulties
- Setting up the environment (WSL)
- Running and testing the code
- thinking functional
- changing habits by using an unknown language
