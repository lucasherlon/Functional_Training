module LogLevels

let message (logLine: string): string =
    let substrings = logLine.Split(":")
    let message = substrings[1].Trim()
    message

let logLevel(logLine: string): string =
    let substrings = logLine.Split(":")
    let substring = substrings[0].Trim().ToLower()
    let log = substring
            |> String.filter(fun c -> c <> '[')
            |> String.filter(fun c -> c <> ']')
    log

let reformat(logLine: string): string =
    let reformated = message(logLine) + " " + "("+ logLevel(logLine) + ")"
    reformated
