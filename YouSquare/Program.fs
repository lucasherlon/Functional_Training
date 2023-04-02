open System

let isSquare x: bool =
    if x < 0 then
        false
    else
        Math.Sqrt(x) = int(Math.Sqrt(x))

let res = isSquare(9)
let res2 = isSquare(-3)
let res3 = isSquare(5)

