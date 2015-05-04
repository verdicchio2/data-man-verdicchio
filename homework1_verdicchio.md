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
    
 _Answer_
 
    sqlite> select movies.title, reviews.summary from movies
   ...> join reviews on reviews.movie = movies.id;
    The Replacements|Pretty funny at times
    Cloud Atlas|An amazing journey
    The Replacements|Silly, but fun
    Unforgiven|Dark, but compelling
    The Birdcage|Slapstick redeemed only by the Robin Williams and Gene Hackman's stellar performances
    The Da Vinci Code|A solid romp
    Jerry Maguire|You had me at Jerry
    The Replacements|The coolest football movie ever
    The Da Vinci Code|Fun, but a little far fetched
 

Ohne Duplikate:

    sqlite> select distinct movies.title, reviews.summary from movies
    ...> join reviews on reviews.movie = movies.id;
    The Replacements|Pretty funny at times
    Cloud Atlas|An amazing journey
    The Replacements|Silly, but fun
    Unforgiven|Dark, but compelling
    The Birdcage|Slapstick redeemed only by the Robin Williams and Gene Hackman's stellar performances
    The Da Vinci Code|A solid romp
    Jerry Maguire|You had me at Jerry
    The Replacements|The coolest football movie ever
    The Da Vinci Code|Fun, but a little far fetched

 
__5. What roles were acted in 'Unforgiven'?__

    Didn't know how.
    
     sqlite> select roles.role from roles 
    ...> join movies on roles.movie = movies.id
    ...> where movies.title = "Unforgiven";
    Little Bill Daggett
    English Bob
    Bill Munny

    
    
__6. What roles were acted in 'Cloud Atlas'?__




__7. How many different people acted in 'Cloud Atlas'? (Hint: if you say `SELECT DISTINCT` instead of `SELECT`, all repeated rows will be removed!)__

    sqlite> select distinct people.name from people join roles on people.id = roles.actor join movies on roles.movie = movies.id where movies.title = "Cloud Atlas";
    Hugo Weaving
    Tom Hanks
    Halle Berry
    Jim Broadbent

__Anzahl__

    sqlite> select count(distinct people.name) from people join roles on people.id = roles.actor join movies on roles.movie = movies.id where movies.title = "Cloud Atlas";
    4



__8. Who acted in movies released in 1995?__

    sqlite> select distinct people.name from people join roles on people.id = roles.actor join movies on movies.id = roles.movie where movies.released =1995;
    Keanu Reeves
    Kevin Bacon
    Kiefer Sutherland
    Jerry O'Connell
    River Phoenix
    Corey Feldman
Wil Wheaton
John Cusack
Marshall Bell
Tom Hanks
Takeshi Kitano
Dina Meyer
Ice-T
Gary Sinise
Ed Harris
Bill Paxton



__9. Who reviewed 'Jerry Maguire'?__

sqlite> select people.name from reviews join movies.id = reviews.movie join people on people.id = reviews.author where movies.title like '%Maguire';
Error: near "=": syntax error


Extra credit: Who has both produced and directed a movie? (Hint: the WHERE clause can understand "and" and "or", e.g. SELECT name FROM people WHERE born > 1960 AND name LIKE "John%";

    sqlite> select distinct name from people where id in (select director from directed) and id in (select producer from produced);
    Andy Wachowski
    Lana Wachowski
    Rob Reiner
    Cameron Crowe
    Nora Ephron
    Nancy Meyers









