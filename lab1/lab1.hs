--1. ((Char,Integer), String, [Double])
---- (('a', 345), "word", [13.2, 35.3, 66.3])

--2. [(Double,Bool,(String,Integer))]
---- [(13.4, True, ("string", 56)), (53.6, False, ("long string", 42))]

--3. ([Integer],[Double],[(Bool,Char)])
---- ([34,624,63], [24.53, 64.26, 74.4], [(False, 'g'), (True, 'm')])

--4. [[[(Integer,Bool)]]]
---- [[[(54, False), (46, True)], [(347, False), (25, True)]], [[(33, False), (76, True)], [(1, False), (87, True)]]]

--5. (((Char,Char),Char),[String])
---- ((('a', 'b'), 'c'), ["word", "long word"])

--6. (([Double],[Bool]),[Integer])
---- (([3.5, 3.2, 35.6], [True, True, False]), [46, 33, 246, 64])

--7. [Integer, (Integer,[Bool])]
---- daamn wtf

--8. (Bool,([Bool],[Integer]))
---- (True, ([True, True, False], [35, 66, 62]))

--9. [([Bool],[Double])]
---- [([True, True, False], [45.6, 34.2, 63.2]), ([True, False, True], [3.6, 34.2, 61.5])]

--10. [([Integer],[Char])]
---- [([45, 346, 346], "word"), ([45, 77, 34], "word")]


--1.2

--1
max3 ::
