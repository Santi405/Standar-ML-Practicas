(* ----- 1 ----- *)
fun pot (x:real) = 
let
    val five = x * x * x * x * x;
    val ten = five * five;
    val fifty = ten * ten * ten * ten * ten;
    val twohun = fifty * fifty * fifty * fifty;
in
    twohun * twohun * twohun * twohun * twohun
end;

pot(2.0);



(* ----- 2 ----- *)
fun split(nil) = (nil, nil)
  | split([a]) = ([a], nil)
  | split(a::b::cs) =
      let
          val x = split(cs)
      in
          (a::(#1(x)), b::(#2(x)))
      end;
      
split(["hola","buenos","dias","mi","rey"]);



(* ----- 3 ----- *)
fun maxList (x :: (L : real list)) = 
  let
      fun max(x : real, nil) = x
      |   max(x : real, elem :: (lst : real list)) = if elem > x then max(elem, lst) else max(x,lst)
  in
max(x,L)
end;

val L = [1.2,3.4,5.6];
maxList(L);



(* ----- 4 ----- *)
fun sumpar(L : (int * int) list) = 
let
   fun sum(z : (int * int), nil) = z
    |  sum(z : (int * int), (x,y)::(lst:(int * int) list)) = sum((#1(z) + x, #2(z) + y), lst)
in
   sum((0,0), L)
end;

val L = [(1,2),(3,4),(5,6)];
sumpar(L);



(* ----- 5 ----- *)
fun truePot(x : real, i : int) =
let
   fun pot(y : real, 0) = 1.0
    |  pot(y : real, z : int) = y * pot(y, z-1)
in
  pot(x, round(pot(2.0,i))) (* It uses round cause it only acepts int*)
end;

val t = (2.0,);
truePot(t);



(* ----- 6 ----- *)
