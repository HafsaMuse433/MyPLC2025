import System.Exit (exitSuccess)

ask :: String -> IO ()
ask prompt = do
  putStrLn (">" ++ prompt)
  line <- getLine
  if line == "quit" then putStrLn "quitting..." >> exitSuccess
  else if line == "" then ask (prompt ++ "!") -- adds ! on enter
    else putStrLn ("you said: " ++ reverse line) >> ask prompt

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt