program visi
    version 13
    syntax [, nrows(integer `=_N')]
    //disp "N rows: " `nrows'
    preserve
    quietly keep if _n<=`nrows'
    quietly save "/tmp/statadb.dta", replace
    !visidata "/tmp/statadb.dta"
    !rm "/tmp/statadb.dta"
end

