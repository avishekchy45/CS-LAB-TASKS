PROGRAM program0
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    TOF0 : TOF;
    TOF1 : TOF;
  END_VAR

  TOF0(IN := NOT(LocalVar0), PT := T#2s);
  LocalVar1 := TOF0.Q;
  TOF1(IN := LocalVar1, PT := T#3s);
  LocalVar2 := TOF1.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
