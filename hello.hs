main :: IO ()
main = putStrLn myhtml

myhtml :: [Char]
myhtml = makeHtml "hello title" (h1_ "Kia ora!" <> p_ "learnin' some haskell.")

html_ :: [Char] -> [Char]
html_ = el "html"

body_ :: [Char] -> [Char]
body_ = el "body"

head_ :: [Char] -> [Char]
head_ = el "head"

title_ :: [Char] -> [Char]
title_ = el "title"

p_ :: [Char] -> [Char]
p_ = el "p"

h1_ :: [Char] -> [Char]
h1_ = el "h1"

el :: [Char] -> [Char] -> [Char]
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

makeHtml :: [Char] -> [Char] -> [Char]
makeHtml title content = html_ (head_ (title_ title) <> body_ content)
