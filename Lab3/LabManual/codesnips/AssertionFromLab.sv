//| This assertion will list an error if not met
  assert (Sum == SpecifiedConstant + Number)
  $display("Case %d: Pass", Number);
  else
  $error("Case %d: FAIL:%d + %d /= %d", Number, Number, SpecifiedConstant, Sum);