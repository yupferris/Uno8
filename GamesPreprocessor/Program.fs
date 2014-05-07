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
    let loadGames (dirName : string) =
        let isGameFileName (x : string) = x.EndsWith "ch8"
        let isInfoFileName (x : string) = x.EndsWith "txt"

        let allFileNames = Directory.GetFiles dirName
        let gameFileNames = Array.filter isGameFileName allFileNames
        let infoFileNames = Array.filter isInfoFileName allFileNames

        let loadGame (fileName : string) =
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

            let removeAuthorTag s = s |> getAuthorTag |> removeTag s

            let getTitle s = removeAuthorTag (Path.GetFileNameWithoutExtension s)

            let getAuthor s =
                match getAuthorTag s with
                | Some x -> Some (x.Substring (2, x.Length - 3))
                | _ -> None

            let getInfo s =
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

        Array.map loadGame gamefileNames

    let saveGames (games : Game array) (fileName : string) =
        use w = new StreamWriter(fileName)

        let line s = w.WriteLine s

    let games = loadGames argv.[0]
    saveGames games argv.[1]

    0
