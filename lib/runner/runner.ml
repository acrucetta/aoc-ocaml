let run2022 day part input =
  match day, part with
  | 1, 1 -> Printf.printf "%i\n" (Year2022.Day01.part1 input)
  | 1, 2 -> Printf.printf "%i\n" (Year2022.Day01.part2 input)
  | 2, 1 -> Printf.printf "%i\n" (Year2022.Day02.part1 input)
  | 2, 2 -> Printf.printf "%i\n" (Year2022.Day02.part2 input)
  | 3, 1 -> Printf.printf "%i\n" (Year2022.Day03.part1 input)
  | 3, 2 -> Printf.printf "%i\n" (Year2022.Day03.part2 input)
  | 4, 1 -> Printf.printf "%i\n" (Year2022.Day04.part1 input)
  | 4, 2 -> Printf.printf "%i\n" (Year2022.Day04.part2 input)
  | day, part -> failwith (Printf.sprintf "Unknown day %i and part %i" day part)
;;

let run year day part =
  let path = Printf.sprintf "data/%i/day%02i.txt" year day in
  let input = In_channel.read_all path in
  match year with
  | 2022 -> run2022 day part input
  | year -> failwith (Printf.sprintf "Unknown year: %i" year)
;;