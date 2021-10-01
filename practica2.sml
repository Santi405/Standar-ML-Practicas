--- 1 ---
fun cubo


--- 2.1 ---
fun menor(a,b,c) = 
        if a>b andalso a>c then
          a
        else if b>c then
          b
        else c;
           

val tup = (45,63,79);
menor(tup);



--- 2.2 ---
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

--- 2.3 ---
fun redond(x : real) =
    let
        val num = round(x)
    in
        if (num mod 10) > 5 then
            (num - (num mod 10)) + 10
        else
            num - (num mod 10)
    end;

val real = 56.0;
redond(real);


--- 2.4 ---
fun chauSeg(nil) = nil
|   chauSeg(x::xs) = [x] @ tl(xs);

val L = [1,2,3,4,5];
chauSeg(L);


--- 7.1 ---
fun sumElem(nil) = 0
|   sumElem(x::xs) = sumElem(xs) + x;

sumElem([1,2,3]);


--- 7.2 ---
fun sumElem(nil) = 1
|   sumElem(x::xs) = sumElem(xs) * x;

sumElem([1,2,3]);


--- 7.3 ---
fun sumTupla(tup:int*int) = #1 tup + #2 tup;

fun sumListElem(nil) = nil
|   sumListElem(x::xs) = [sumTupla(x)] @ sumListElem(xs);

sumListElem([(1,2), (3,4), (5,6)]);


--- 7.4 ---
fun switch(nil) = nil
|   switch(x::nil) = [x]
|   switch(x::xs) = [hd(xs)] @ [x] @ switch(tl(xs));


switch([1,2,3,4,5,6,7,8,9]);
