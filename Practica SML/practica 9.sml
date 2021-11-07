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

