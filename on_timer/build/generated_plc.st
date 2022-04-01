PROGRAM program0
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    LocalVar3 : BOOL;
    TON0 : TON;
    TON1 : TON;
    TON2 : TON;
  END_VAR

  TON0(IN := LocalVar0, PT := T#10s);
  LocalVar1 := TON0.Q;
  TON1(IN := LocalVar1, PT := T#5s);
  LocalVar2 := TON1.Q;
  TON2(IN := LocalVar2, PT := T#3s);
  LocalVar3 := TON2.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
