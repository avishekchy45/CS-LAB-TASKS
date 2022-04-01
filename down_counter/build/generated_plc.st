PROGRAM program0
  VAR
    LocalVar0 : BOOL;
    LocalVar1 : BOOL;
    LocalVar2 : BOOL;
    CTD0 : CTD;
    R_TRIG1 : R_TRIG;
  END_VAR

  R_TRIG1(CLK := LocalVar0);
  CTD0(CD := R_TRIG1.Q, LD := NOT(LocalVar1), PV := 3);
  LocalVar2 := CTD0.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
