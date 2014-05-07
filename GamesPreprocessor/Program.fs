open System.IO

type Game =
    {
        Name : string;
        Author : string;
        Info : string;
        Data : byte array;
    }
    
[<EntryPoint>]
let main argv =
    let gamesDirName = argv.[0]
    let outputFileName = argv.[1]

    let allFileNames = Directory.GetFiles gamesDirName

    let gameExtension = "ch8"
    let altGameTag = "(alt)"
    let infoExtension = "txt"

    let isGameFileName (x : string) = x.EndsWith gameExtension
    let isAltGameFileName (x : string) = isGameFileName x && x.Contains altGameTag
    let isInfoFileName (x : string) = x.EndsWith infoExtension

    let gameFileNames = Array.filter isGameFileName allFileNames
    let noAltGamefileNames = Array.filter (fun x -> not (isAltGameFileName x)) gameFileNames
    let altGameFileNames = Array.filter isAltGameFileName gameFileNames
    let infoFileNames = Array.filter isInfoFileName allFileNames

    let getAltGameTag (s : string) =
        match s.Contains altGameTag with
        | true -> Some altGameTag
        | _ -> None

    let getAuthorTag (s : string) =
        match s.Contains "[" && s.Contains "]" with
        | true ->
            let tagStart = s.IndexOf '['
            let tagEnd = s.IndexOf ']' + 1
            Some (s.Substring (tagStart, tagEnd - tagStart))
        | _ -> None

    let getAuthor (s : string) =
        match getAuthorTag s with
        | Some x -> Some (x.Substring (1, x.Length - 2))
        | _ -> None

    let removeTag (s : string) (t : string option) =
        match t with
        | Some x -> (s.Replace (x, "")).Trim()
        | _ -> s

    let removeAuthorTag (s : string) = removeTag s (getAuthorTag s)
    let removeAltGameTag (s : string) = removeTag s (getAltGameTag s)
    let removeTags s = removeAuthorTag (removeAltGameTag s)

    let getTitle (s : string) = removeTags (Path.GetFileNameWithoutExtension s)

    let games =
        seq {
            
        }

    printfn "%A" (Array.map getTitle gameFileNames)

    0
