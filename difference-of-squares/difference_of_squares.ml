let square_of_sum n = 
    let a = List.fold_left (+) 0 (List.init n (fun x -> x + 1)) in 
    a * a
let sum_of_squares n =
    let a = List.fold_left (fun acc x -> acc + x * x) 0 (List.init n (fun x -> x + 1 )) in
    a
let difference_of_squares n =
    square_of_sum n - sum_of_squares n
    
