PROGRAM program0
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    LocalVar3 : BOOL;
    LocalVar4 : BOOL;
  END_VAR

  LocalVar2 := NOT(LocalVar1) AND (LocalVar0 OR LocalVar2);
  LocalVar3 := LocalVar2 AND NOT(LocalVar1);
  LocalVar4 := LocalVar2 AND NOT(LocalVar1);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
