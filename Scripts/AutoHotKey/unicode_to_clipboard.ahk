^.:: ; Ctrl+.
{
    IB := InputBox("Please enter a unicode value (with the 0x prefix for hex values).", "Unicode to clipboard")
if IB.Result = "Cancel"
    MsgBox "You entered '" IB.Value "' but then cancelled."
else
    A_Clipboard := Chr(IB.Value)
}
