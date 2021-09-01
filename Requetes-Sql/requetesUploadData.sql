COPY tags (userId, movieId, tag, timestamp) 
from 'C:\Users\Public\Data\tags.csv' 
with csv header encoding 'UTF8' DELIMITER ',' QUOTE '"';