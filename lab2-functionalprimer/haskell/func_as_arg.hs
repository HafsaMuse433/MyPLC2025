-- Create inpFunc
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b]

-- Define applicatorFunc
applicatorFunc :: (Int -> Int -> [Int]) -> Int -> Int -> Char -> Double
applicatorFunc inpFunc a b s =
    if s == 's' 
        then fromIntegral (sum (inpFunc a b)) 
        else fromIntegral (sum (inpFunc a b)) / fromIntegral (b - a + 1)

main :: IO ()
main = do
    let result = applicatorFunc inpFunc 1 10 's' -- Call applicatorFunc with inpFunc, integers, and char as args
    putStrLn ("sum = " ++ show result)
