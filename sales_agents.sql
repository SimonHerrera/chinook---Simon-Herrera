# Technically there are none with title of 'Sales Agent' but I'm returning all with title of 'Sales Support Agent'
SELECT  e.*
FROM Employee as e
WHERE e.Title = 'Sales Support Agent'