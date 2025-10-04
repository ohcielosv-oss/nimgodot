var t:array[100000999,int64]

proc numu*():int=
    for i in 0..99999999:
      t[i]=i*i
    return t[99999999]

proc main=
  echo(numu())
main()
