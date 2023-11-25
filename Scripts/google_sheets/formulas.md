# Google Sheets Formulas

## Find duplicates between different columns (in this case: B, D, F, H, J)
This was used in a conditional formatting custom formula
```
=OR(COUNTIF(B:B, B1) + COUNTIF(D:D, B1) + COUNTIF(F:F, B1)+ COUNTIF(H:H, B1) + COUNTIF(J:J, B1)>1,
    COUNTIF(B:B, D1) + COUNTIF(D:D, D1) + COUNTIF(F:F, D1)+ COUNTIF(H:H, D1) + COUNTIF(J:J, D1)>1,
    COUNTIF(B:B, F1) + COUNTIF(D:D, F1) + COUNTIF(F:F, F1)+ COUNTIF(H:H, F1) + COUNTIF(J:J, F1)>1,
    COUNTIF(B:B, H1) + COUNTIF(D:D, H1) + COUNTIF(F:F, H1)+ COUNTIF(H:H, H1) + COUNTIF(J:J, H1)>1,
    COUNTIF(B:B, J1) + COUNTIF(D:D, J1) + COUNTIF(F:F, J1)+ COUNTIF(H:H, J1) + COUNTIF(J:J, J1)>1)
```
