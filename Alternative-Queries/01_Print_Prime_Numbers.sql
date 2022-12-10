/*

Write a query to print all prime numbers less than or equal to 1000.
Print your result on a single line,
and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers  would be:
2&3&5&7

*/

DELIMITER //                /* set the delimiter to // characters */

CREATE PROCEDURE print_primes(IN num INT, OUT output VARCHAR(500))

BEGIN

DECLARE i, j, flag INT;     /* declare variables */
SET i := 2;
SET output := ' ';

WHILE(i < num) DO  -- loop from 2 to num
    SET j := 2;
    SET flag := 0;

    WHILE (j <= i) DO       /* loop from 2 to j */
        IF (i%j = 0) THEN
            SET flag := flag +1;
        END IF;
        SET j := j+1;   /*  increment j */
    END WHILE;

    IF (flag = 1) THEN
        SET output := CONCAT(output, i, '&'); /* concat the prime num with & */
    END IF;

    SET i := i+1;   /* increment i */

END WHILE;


END

//                      /*  end of procedure */

CALL print_primes(1000, @output);
SELECT SUBSTR(@output, 1, (LENGTH(@output)-1)); /* trim the ending & */

