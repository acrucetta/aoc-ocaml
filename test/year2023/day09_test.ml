let input = {|
0 3 6 9 12 15
1 3 6 10 15 21
10 13 16 21 30 45
|}

let%expect_test "2023 day9 part1" =
  Printf.printf "%i" @@ Year2023.Day09.part1 input;
  [%expect {|6|}]
;;

let%expect_test "2023 day9 part2" =
  Printf.printf "%i" @@ Year2023.Day09.part2 input;
  [%expect {|-1|}]
;;
