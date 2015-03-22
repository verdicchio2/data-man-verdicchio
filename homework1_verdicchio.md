#FS 2015, Digital Data
##Homework 1
###Dirk Verdicchio

__1. When was 'Jerry Maguire' released?__

    sqlite> select title from movies where title glob 'Jer*';
    Jerry Maguire
    sqlite> select released from movies where title glob 'Jer*';
    2000

__2. When was Kevin Bacon born?__

    sqlite> select born from people where name like "Kevin Bacon";
    1958

__3. What is the tagline of 'The Matrix Reloaded'?__

    sqlite> select tagline from movies where title like "The Matrix Reloaded";
    Free your mind

__4. Which movies have reviews?__

    sqlite> select movies.title, reviews.movie from movies
       ...> join reviews on movie = movies.id
       ...> where movie not null;
    The Replacements|17
    Cloud Atlas|22
    The Replacements|17
    Unforgiven|20
    The Birdcage|19
    The Da Vinci Code|23
    Jerry Maguire|7
    The Replacements|17
    The Da Vinci Code|23

 
__5. What roles were acted in 'Unforgiven'?__

    Didn't know how.

__6. What roles were acted in 'Cloud Atlas'?__

__7. How many different people acted in 'Cloud Atlas'? (Hint: if you say `SELECT DISTINCT` instead of `SELECT`, all repeated rows will be removed!)__

__8. Who acted in movies released in 1995?__

__9. Who reviewed 'Jerry Maguire'?__



