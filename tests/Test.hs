import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 53 96 14 22 5
  expect (score signalcase_1 == 50)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 67 84 16 25 13
  expect (score signalcase_2 == 89)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 101 104 10 14 12
  expect (score signalcase_3 == 260)
  expect (classify signalcase_3 == "accept")
