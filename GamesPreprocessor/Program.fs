open System.IO

type Game =
    {
        Name : string;
        Author : string option;
        Info : string option;
        Data : byte array;
    }
    
[<EntryPoint>]
let main argv =
    let gamesDirName = argv.[0]
    let outputFileName = argv.[1]

    let allFileNames = Directory.GetFiles gamesDirName

    let gameExtension = "ch8"
    let infoExtension = "txt"

    let isGameFileName (x : string) = x.EndsWith gameExtension
    let isInfoFileName (x : string) = x.EndsWith infoExtension

    let gameFileNames = Array.filter isGameFileName allFileNames
    let infoFileNames = Array.filter isInfoFileName allFileNames

    let getGame (fileName : string) =
        let removeTag (s : string) (t : string option) =
            match t with
            | Some x -> (s.Replace (x, "")).Trim()
            | _ -> s

        let getAuthorTag (s : string) =
            match s.Contains "[" && s.Contains "]" with
            | true ->
                let tagStart = s.IndexOf '[' - 1
                let tagEnd = s.IndexOf ']' + 1
                Some (s.Substring (tagStart, tagEnd - tagStart))
            | _ -> None

        let removeAuthorTag (s : string) = s |> getAuthorTag |> removeTag s

        let getTitle (s : string) = removeAuthorTag (Path.GetFileNameWithoutExtension s)

        let getAuthor (s : string) =
            match getAuthorTag s with
            | Some x -> Some (x.Substring (2, x.Length - 3))
            | _ -> None

        let getInfo (s : string) =
            let title = getTitle s
            match Array.tryFind (fun (x : string) -> x.Contains title) infoFileNames with
            | Some x -> Some (File.ReadAllText x)
            | _ -> None

        {
            Name = getTitle fileName;
            Author = getAuthor fileName;
            Info = getInfo fileName;
            Data = File.ReadAllBytes fileName;
        }
        
    let games = Array.map getGame gameFileNames
    printfn "%A" games

    0
