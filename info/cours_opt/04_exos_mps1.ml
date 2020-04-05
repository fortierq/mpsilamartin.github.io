(** Exercice 2 **)
let rec fact n acc =
  match n with
  | 0 -> acc
  | _ -> fact (n-1) (acc*n)
;;

fact 6 1;;

(** Exercice 3 **)
let rec pgcd a b =
  match b with
  | 0 -> a
  | _ -> pgcd b (a mod b)
;;

(* pgcd a b termine si b vaut 0 *)
(* si b est sup�rieur ou �gal � 1, alors 1 seul appel r�cursif dont le 2�me argument est strictement inf�rieur � b*)

(** Exercice 4 **)
(* �crire une fonction r�cursive prenant en argument une somme � atteindre, et une liste de valeurs de pi�ces/billets et qui renvoie le nombre de mani�res d'atteindre la somme *)

(* Cas de tests :
- 11 possibilit�s pour atteindre 10 avec 1,2,5,10
- 451 pour atteindre 50 avec 1, 2, 5, 10, 20, 50
 *)

let rec monnaie x liste =
  match liste with
  | [] -> 0
  | t::q -> if t = x
            then 1 + monnaie x q
            else
              if t < x
              then monnaie x q + monnaie (x-t) liste
              else monnaie x q
;;
