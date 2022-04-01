PROGRAM program0
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    COUNT : INT := 3;
    CTU0 : CTU;
    R_TRIG1 : R_TRIG;
  END_VAR

  R_TRIG1(CLK := LocalVar0);
  CTU0(CU := R_TRIG1.Q, R := LocalVar1, PV := 3);
  LocalVar2 := CTU0.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
