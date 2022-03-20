{
  open Parser
  

  let mk_int nb =
    try INT (int_of_string nb)
    with Failure _ -> failwith (Printf.sprintf "Illegal integer '%s': " nb)
}

let newline = (['\n' '\r'] | "\r\n")
let blank = [' ' '\014' '\t' '\012']
let not_newline_char = [^ '\n' '\r']
let digit = ['0'-'9']
let integer = digit+

rule token = parse
  (* newlines *)
  | newline { Location.incr_line lexbuf; token lexbuf }
  (* blanks *)
  | blank + { token lexbuf }
  (* end of file *)
  | eof      { EOF }
  (* comments *)
  | "--" not_newline_char*  { token lexbuf }
  (* integers *)
  | integer as nb           { mk_int nb (Location.curr lexbuf)}
  (* commands  *)
  (***** TO COMPLETE *****)
  | "push"      { PUSH }
  | "pop"       { POP }
  | "swap"      { SWAP }
  | "div"       { DIV }
  | "add"       { ADD }
  | "sub"       { SUB }
  | "mul" 	{ MUL }
  | "div" 	{ DIV }
  | "rem" 	{ REM }

  (* illegal characters *)
  | _ as c  {
      	raise (Location.Error(Printf.sprintf "Illegal character '%c': " c ^"and the location is at "^Location.string_of (Location.curr lexbuf),Location.curr lexbuf));
    }
