﻿open System
open System.IO

type Game =
    {
        Title : string;
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
                | Some x -> Some ((File.ReadAllText x).Replace("\n", "\\n").Replace("\r", "").Replace("\"", "\\\""))
                | _ -> None

            {
                Title = getTitle fileName;
                Author = getAuthor fileName;
                Info = getInfo fileName;
                Data = File.ReadAllBytes fileName;
            }

        Array.map loadGame gameFileNames

    let saveGames games (fileName : string) =
        use w = new StreamWriter(fileName)
        let indent = ref 0

        let line s =
            let prefix =
                match !indent with
                | n when n > 0 -> Array.reduce (+) (Array.create !indent "\t")
                | _ -> ""
            w.WriteLine (prefix + s)

        let lineIfNotEmpty (s : string) = if s.Length > 0 then line s

        let push s =
            lineIfNotEmpty s
            indent := !indent + 1

        let pop s =
            indent := !indent - 1
            lineIfNotEmpty s

        line "using Uno;"
        line "using Uno.Collections;"
        line ""
        line "namespace Uno8.Emulator"
        push "{"
        line "public static class Games"
        push "{"

        line "public static readonly IEnumerable<Game> All = new[]"
        push "{"

        let printGame x =
            let stringLiteral s = "\"" + s + "\""
                
            let stringLiteralOrNull s =
                match s with
                | Some x -> stringLiteral x
                | _ -> "null"
                
            line ("new Game(" + (stringLiteral x.Title) + ", " + (stringLiteralOrNull x.Author) + ", " + (stringLiteralOrNull x.Info) + ", new[]")
            push "{"

            let rec printDataLine startIndex =
                let lineLength = 16

                line
                    (Array.reduce
                        (+)

                        [|for i in 0 .. lineLength - 1 ->
                            match startIndex + i with
                            | n when n < x.Data.Length ->
                                "(byte)0x" + x.Data.[n].ToString("x2") + "," +
                                    match i with
                                    | _ when n <> x.Data.Length - 1 && i <> lineLength - 1 -> " "
                                    | _ -> ""
                            | _ -> ""|])

                let nextIndex = startIndex + lineLength
                if nextIndex < x.Data.Length then
                    printDataLine nextIndex
                
            printDataLine 0

            pop "}),"
        
        Array.iter printGame games

        pop "};"
        line ""

        line "public static Game Get(string title)"
        push "{"
        line "foreach (var game in All)"
        push "{"
        push "if (game.Title == title)"
        line "return game;"
        pop ""
        pop "}"
        line ""
        line "throw new Exception(\"Could not find game: \" + title);"
        pop "}"

        pop "}"
        pop "}"

    let games = loadGames argv.[0]// |> Seq.take 5 |> Seq.toArray
    saveGames games argv.[1]

    0
