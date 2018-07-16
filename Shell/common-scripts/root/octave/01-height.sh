function fitocm {
    # First argument is height in feet rounded down
    # Second is the remaining height in inches
    octe "$1*30+$2*2.5" | sed 's/ans =\s*//g'
}
