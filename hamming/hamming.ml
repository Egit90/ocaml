type nucleotide = A | C | G | T

let hamming_distance strand1 strand2 =
  if strand2 = [] && strand1 != [] then Error "right strand must not be empty"
  else if strand1 = [] && strand2 != [] then Error "left strand must not be empty"
  else
  let rec count_mismatches s1 s2 acc = 
    match s1, s2 with
    | [], [] -> Ok acc
    | x1 :: rest1, x2 :: rest2 when x1 = x2 -> count_mismatches rest1 rest2 acc
    | _ :: rest1, _ :: rest2 -> count_mismatches rest1 rest2 (acc + 1)
    | _ :: _, [] | [] , _ :: _ -> Error "left and right strands must be of equal length"

  in
  count_mismatches strand1 strand2 0