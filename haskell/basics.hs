import Control.Monad (guard)
import Data.Char (ord, chr)

main = do
    guard $ 3 * 8 + 5 ^ 2 == 49
    guard $ 19 / 5 == 3.8
    guard $ div 19 5 == 3
    guard $ mod 19 5 == 4
    guard $ 2 ^ 128 == 340282366920938463463374607431768211456
    guard $ 2 ** 128 == 3.402823669209385e38
    guard $ ord '¢' == 162
    guard $ chr 162 == '¢' 
    guard $ even 100 == True
    guard $ (False && (1 < 5)) == False
