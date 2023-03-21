{-# LANGUAGE DuplicateRecordFields #-} -- Для одинаковых названий полей в объектах

data LibraryItem
      = Book { author :: String, title :: String }
      | Magazine { title :: String, month :: Int, year :: Int }
      | Newspaper { title :: String, month:: Int, year :: Int } deriving (Show, Eq)

library :: [LibraryItem]
library = [
  Book "George Orwell" "1984",
  Magazine "National Geographic" 2 2023,
  Newspaper "The New York Times" 2 2023,
  Newspaper "Vlg true" 11 2023,
  Magazine "PlayBoy" 10 2007,
  Magazine "Glamur" 7 2009,
  Book "Zamyatin" "We",
  Newspaper "Zarya" 4 2016,
  Book "Haksley" "Brave new world",
  Book "Tolstoy" "war and piece",
  Book "Griboedov" "Gore from iq",
  Magazine "Kosmo" 11 200
  ]

-- isPeriodic
--
-- Если тип журнал или газета - значит периодик
magazine = Magazine "National Geographic" 2 2023
book = Book "George Orwell" "1984"
isPeriodic :: LibraryItem -> Bool
isPeriodic (Magazine {}) = True
isPeriodic (Newspaper {}) = True
isPeriodic _ = False

-- getByTitle
getByTitle :: String -> [LibraryItem] -> [LibraryItem]
getByTitle search items = filter (\item -> title item == search) items

-- getByMonth - выбирает периодические издания выпущенные в указанный месяц
getByMonth :: Int -> [LibraryItem] -> [LibraryItem]
getByMonth search items = filter(\item -> isPeriodic item && month item == search) items

-- getByMonths - точно так же как и предыдущая, только получается список месяцев
-- elem *var* list - прверяет содержится ли *var* в list
getByMonths :: [Int] -> [LibraryItem] -> [LibraryItem]
getByMonths search items = filter(\item -> isPeriodic item && elem (month item) search) items

-- getAuthors - возвращает список все авторов
getAuthors :: [LibraryItem] -> [String]
getAuthors items = [author | Book author _ <- items]
