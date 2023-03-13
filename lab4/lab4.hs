data FileSystem = File String Int | Directory String [FileSystem] deriving(Show)

root = Directory "root"
  [ File "file1.txt" 100,
    File "file6.txt" 100,
    Directory "subdir1"
    [ File "file2.txt" 200,
      File "file3.txt" 300
    ]
  , Directory "subdir2"
    [ File "file4.txt" 400
    , Directory "subsubdir"
      [ File "file5.txt" 500
      ]
    ]
  ]



--dirAll :: FileSystem -> [String]
--dirAll (File name _) = [name]
--dirAll (Directory name contents) = concatMap (\x -> case x of
--                                                     File n _ -> [n]
--                                                      Directory _ _ -> dirAll x) contents

dirAll :: FileSystem -> [String]
dirAll (File name _) = [name]
dirAll (Directory _ contents) = concatMap dirAll contents


find :: String -> FileSystem -> Maybe String
find target (File name _) | name == target = Just name
find target (Directory name fs) =
  let subdirResults = map (\f -> find target f) fs
      subdirs = [s | Just s <- subdirResults]
  in case subdirs of
       [] -> Nothing
       (s:_) -> Just (name ++ "/" ++ s)
find _ _ = Nothing

--subdirResults - массив [Nothing, Nothing, Just "subdir/test"]
--subdirs получаем новый массив где лежит только тип Just

du :: FileSystem -> Int
du (File _ size) = size
du (Directory _ contents) = sum (map du contents)

