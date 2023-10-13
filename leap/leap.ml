let leap_year inYear = 
    if inYear mod 4 == 0 then
        if inYear mod 100 == 0 && inYear mod 400 <> 0 then
            false
        else 
            true
    else
        false