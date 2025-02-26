-- Regx in SQL
-- In SQL, Regex (Regular Expressions) is used for pattern matching within strings.
-- syntax - SELECT * FROM table_name WHERE column_name REGEXP 'pattern';
/* 
Regular Expressions (Regex) Syntax and Examples:

1. . (dot) – Matches any single character except a newline.
   Example: a.b will match "acb", "a3b", etc.

2. ^ (caret) – Anchors the regex to the start of the string.
   Example: ^a will match any string starting with "a".

3. $ (dollar sign) – Anchors the regex to the end of the string.
   Example: b$ will match any string ending with "b".

4. * (asterisk) – Matches zero or more occurrences of the preceding character.
   Example: a*b will match "b", "ab", "aaab", etc.

5. + (plus) – Matches one or more occurrences of the preceding character.
   Example: a+b will match "ab", "aab", etc., but not "b".

6. ? (question mark) – Matches zero or one occurrence of the preceding character.
   Example: a?b will match "b" or "ab".

7. [] (square brackets) – Matches any single character from the set.
   Example: [aeiou] will match any vowel.

8. | (pipe) – Logical OR; matches one of the alternatives.
   Example: a|b will match either "a" or "b".

9. () (parentheses) – Groups expressions together.
   Example: (ab|cd) will match either "ab" or "cd".

10. {n,m} – Matches between n and m occurrences of the preceding character.
    Example: a{2,4} will match "aa", "aaa", or "aaaa".
*/


use studentinfo;

select *from netflix_shows where title regexp '^s';


