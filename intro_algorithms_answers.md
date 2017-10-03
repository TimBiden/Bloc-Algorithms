Calculating a tip:

GET totalBill
SET numPeople to 0
SET serviceQuality to 0
SET tip to 0

FOR people in group
  ADD 1 to numPeople
  GET happiness

  IF happiness is 1
    ADD 15 to serviceQuality
  ELSE if happiness is 2
    ADD 20 to serviceQuality
  ELSE
    ADD 25 to serviceQuality
  END
END

SET tip equal to serviceQuality divided by numPeople
SET tip equal to tip multiplied by totalBill

RETURN tip


When to go to Costco:

IF item is needed for dinner AND can't be bought at grocery store
  SET Costco to True
ELSE IF day isn't Saturday AND day isn't Sunday AND hour is less than 1700
  SET Costco to True
ELSE
  SET Costco to False
End

RETURN Costco


Determining what to wear:

GET highTemp
GET day

IF day is Sunday
  SET pants equal to Slacks
  SET shirt equal to Button-Down
  SET shoes to Leather
ELSE IF day is Saturday
  IF highTemp is greater than or equal to 80
    SET pants equal to Shorts
    SET shirt equal to null
    SET shoes to null
  ELSE
    SET pants equal to Jeans
    SET shirt equal to T-Shirt
    SET shoes to Flip-Flops
  END
ELSE
  IF highTemp is greater than or equal to 80
    SET pants equal to Shorts
    SET shirt equal to T-Shirt
    SET shoes to Flip-Flops
  ELSE
    SET pants equal to Jeans
    SET shirt equal to T-Shirt
    SET shoes to Sneakers
  END
END

SET wardrobe to be an array containing Jeans, shirt, shoes
RETURN wardrobe
