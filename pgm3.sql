DECLARE
  num NUMBER;
  result NUMBER := 1;
BEGIN
  -- Accept user input for the number
  num := &num_input;

  -- Validate that the number is non-negative
  IF num < 0 THEN
    DBMS_OUTPUT.PUT_LINE('Error: Factorial is undefined for negative numbers.');
  ELSE
    -- Calculate the factorial
    FOR i IN 1..num LOOP
      result := result * i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('The factorial of ' || num || ' is: ' || result);
  END IF;
END;
/
