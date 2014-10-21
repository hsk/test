let get_ext name =
  if Str.string_match (Str.regexp ".*\\.\\([^.]*\\)$") name 0 then
    Str.matched_group 1 name
  else
    ""

let replace_ext name ext =
  Str.global_replace (Str.regexp "\\(\\.[^.]*$\\)") ext name

let _ =
  Printf.printf "regexp test\n";
  let name = "test.exe" in
  Printf.printf "%s ext %s\n" name (get_ext name);
  Printf.printf "%s to %s\n" name (replace_ext name ".o");
