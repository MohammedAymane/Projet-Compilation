type command = | Push of int| Pop |Swap | Add | Sub | Mul | Div | Rem
  DefineMe (* Question 4.1 *)

type program = int * command list

(* add here all useful functions and types  related to the AST: for instance  string_of_ functions *)

let rec string_of_command = function
  | Push num -> "Push "^(string_of_int num)
  | Pop -> "Pop"
  | Swap -> "Swap"
  | Add -> "Add"
  | Sub -> "Sub"
  | Mul -> "Mul"
  | Div -> "Div"
  | Rem -> "Rem"

let string_of_commands cmds = String.concat " " (List.map string_of_command cmds)

let string_of_program (args, cmds) = Printf.sprintf "%i args: %s\n" args (string_of_commands cmds)

