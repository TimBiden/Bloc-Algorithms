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
