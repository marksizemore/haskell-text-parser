module Main where

import System.Environment
import Data.Char

main :: IO ()
main = do
  args <- getArgs
  file <- readFile (head args)
  print (length (wordsSansPunctuation(words file)))

--returns the words in the text file after removing punctuation
--to more accurately count and index words
wordsSansPunctuation :: [String] -> [String]
wordsSansPunctuation x = [removePunctuation y | y <- x]

--helper function to remove any punctuation from a string
removePunctuation :: [Char] -> [Char]
removePunctuation x = [y | y <- x, isLetter y]
