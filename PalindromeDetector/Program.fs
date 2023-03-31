open System

let isPalindrome (word : string) =
    word = word[0..]

printfn "Type a word to find out if it's a PALINDROME"
let word = Console.ReadLine()
let result = isPalindrome(word)
printfn $"{result}"
