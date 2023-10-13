let leap_year inYear = 
    (inYear mod 4 == 0) && (inYear mod 100 <> 0 || inYear mod 400 == 0)
