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


-- dirAll, возвращающую список полных имен всех файлов каталога, включая подкаталоги.
-- concatMap - удобен при работе со списками. Применяет функцию к каждому элементу списка и
-- объединяет все в один список
dirAll :: FileSystem -> [String]
dirAll (File name _) = [name]
dirAll (Directory _ contents) = concatMap dirAll contents

-- find, возвращающая путь, ведущий к файлу с заданным именем. Например, если каталог содерит файлы a, b и c, и b
-- является каталогом, содержащим x и y, тогда функция поиска
-- для x должна вернуть строку "b/x"
find :: String -> FileSystem -> Maybe String
find target (File name _) | name == target = Just name
find target (Directory name fs) =
  let subdirResults = map (\f -> find target f) fs
      subdirs = [s | Just s <- subdirResults]
  in case subdirs of
       [] -> Nothing
       (s:_) -> Just (name ++ "/" ++ s)
find _ _ = Nothing

-- subdirResults - массив [Nothing, Nothing, Just "subdir/test"]
-- subdirs получаем новый массив где лежит только тип Just


-- du, для заданного каталога возвращающая количество байт,
-- занимаемых его файлами (включая файлы в подкаталогах).
du :: FileSystem -> Int
du (File _ size) = size
du (Directory _ contents) = sum (map du contents)

