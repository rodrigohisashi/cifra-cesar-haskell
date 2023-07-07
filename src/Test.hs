module Test where
import Cesar
import Test.QuickCheck

lowerChar :: Gen Char
lowerChar = elements caracteresValidos
lowerString :: Gen String
lowerString = listOf lowerChar


-- aplicando shift duas vezes, uma com o valor negativo, o caracter
-- deve ser o mesmo
prop_neg_shift :: Int -> Property
prop_neg_shift key =
    forAll lowerChar prop
    where
     prop char = shift (-key) (shift key char ) == char

-- o tamanho da mensagem codificada deve ser o mesmo da original
prop_enc_length :: Int -> Property
prop_enc_length key =
    forAll lowerString prop
    where
     prop txt = length (encode key txt) == length txt

-- o decode do encode deve ser a string original
prop_enc_dec :: Int -> Property
prop_enc_dec key =
    forAll lowerString prop
    where
     prop txt = encode (-key) (encode key txt) == txt

prop_rotate_length :: Int -> [Int] -> Bool
prop_rotate_length n xs = length (rotate n xs) == length xs