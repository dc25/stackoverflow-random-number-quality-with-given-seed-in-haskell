import System.Random.PCG 
import Control.Monad.ST

randomFromSeed :: Int -> Int -> Int
randomFromSeed max seed = runST $ do
  g <- initialize (fromIntegral seed) 0
  uniformR (0, max - 1) g

main :: IO ()
main = print $ map (randomFromSeed 10) [1..20]
