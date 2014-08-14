
structure MT = State.Trans(struct con m = Basis.transaction end)

(* Haskell-style helper *)
fun forM_ [m ::: (Type -> Type)] (_ : monad m) [a] (ls:list a) (f:a -> m {}) : m {} =
    let
        fun mapM' ls =
            case ls of
              | []      => return {}
              | x :: ls => f x; mapM' ls
    in
        mapM' ls
    end


table t : {Id : int, Nam: string}

task initialize = fn _ =>
  dml(DELETE FROM t WHERE Id >= 0);
  dml(INSERT INTO t(Id,Nam) VALUES(1,"Name1"));
  dml(INSERT INTO t(Id,Nam) VALUES(2,"Name2"));
  dml(INSERT INTO t(Id,Nam) VALUES(3,"Name3"));
  dml(INSERT INTO t(Id,Nam) VALUES(4,"Name4"));
  return {}


fun push [ctx:::{Unit}] (x:xml ctx [] []) : MT.state (xml ctx [] []) {} =
  MT.modify (fn s => <xml>{s}{x}</xml>)

fun nest [a ::: Type] [ctx:::{Unit}] [ctx2 :::{Unit}]
    (f:xml ctx2 [] [] -> xml ctx [] [])
    (x:MT.state (xml ctx2 [] []) a)
      : MT.state (xml ctx [] []) a =
  (xml2,a) <- MT.lift (MT.run <xml/> x);
  push (f xml2);
  return a

fun query [ctx ::: {Unit}] [tables ::: {{Type}}] [exps ::: {Type}] [tables ~ exps] [state ::: Type]
  (q:sql_query [] [] tables exps) 
  (st:state)
  (f:$(exps ++ map (fn fields :: {Type} => $fields) tables) -> state -> MT.state (xml ctx [] []) state)
    : MT.state (xml ctx [] []) state =
  x <- MT.get {};
  (x',st') <- MT.lift( Basis.query q (fn r (xx,ss) => MT.run xx (f r ss)) (x,st) );
  MT.set x';
  return st'

fun query_ [ctx ::: {Unit}] [tables ::: {{Type}}] [exps ::: {Type}] [tables ~ exps]
  (q:sql_query [] [] tables exps) 
  (f:$(exps ++ map (fn fields :: {Type} => $fields) tables) -> MT.state (xml ctx [] []) {})
    : MT.state (xml ctx [] []) {} =
  x <- MT.get {};
  x' <- MT.lift( Basis.query q (fn r xx => MT.eval xx (f r)) x);
  MT.set x';
  return {}

fun source [st:::Type] [t:::Type] (x:t) : MT.state st (source t) =
  MT.lift (Basis.source x)

fun viewm {} : transaction page =
  (xml,i) <- MT.run <xml/> (
    s <- source False;

    push (<xml>Test1<br/></xml>);
    push (<xml>Test2<br/></xml>);

    nest (fn x => <xml><table>{x}</table></xml>) (
      push (<xml><tr><td>1</td><td>2</td></tr></xml>);
      push (<xml><tr><td>3</td><td>4</td></tr></xml>);
      return {}
    );

    query_ (SELECT * FROM t) (fn r =>
      push (<xml><div>{[r.T.Id]}{[r.T.Nam]}</div><br/></xml>);
      return {}
    );

    (*
    n <- query (SELECT * FROM t) 0 (fn r i =>
      push (<xml><div>{[r.T.Id]}{[r.T.Nam]}</div></xml>);
      return (i+1)
    );
    *)

    return 0);

  return
    <xml>
      <body>
        {xml}
        <br/>
        {[i]}
      </body>
    </xml>
