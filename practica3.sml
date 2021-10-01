--- 1 ---

fun cubo


--- 2 ---

fun menor(a,b,c) = 
        if a>b andalso a>c then
          a
        else if b>c then
          b
        else c;
           

val tup = (45,63,79);
menor(tup);

--- 2.1 ---

fun menAMay(a,b,c) = 
if a > b then
        if c < b then
                [c,b,a]
        else
                [b,c,a]            
        else if c < a then
                [c,a,b]
        else
                [a,c,b];
        
menAMay(4,2,1);
