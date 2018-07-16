function bmiim {
    # BMI from imperial measurements
    # $1 is weight in lb
    # $2 is height in ft, rounding down
    # $3 is the remainder height in inches
    kg=$(octe "0.4535924*$1" | sed 's/ans =\s*//g')
    cm=$(fitocm $2 $3)
    mt=$(octe "$cm/100" | sed 's/ans =\s*//g')
    octe "$kg/($mt^2)" | sed 's/ans =\s*//g'
}

function bmi {
    # First input is weight in kg
    # Second input is height in m
    octe "$1/(${2}^2)" | sed 's/ans =\s*//g'
}
