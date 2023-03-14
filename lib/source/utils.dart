double catNumberEdgesOneToZero(num value) {
  num val = value;
  if (val >= 1) {
    val = 0.99999;
  } else if (value <= 0) {
    val = 0.00001;
  }
  return val.toDouble();
}
