import 'dart:math';

void main(List<String> args) {
  double z = calc(2, 3, (double x, double y) {
    return x * y;
  }, (double x, double y) {
    return sqrt(x.toDouble()) + pow(y, 2.0);
  });

  print('\n Passando funções como parâmetro p/ função!!!');
  print('o valor de X é = [$z]');
}

double calc(int a, int b, num Function(double, double) func1, Function func2) {
  return func1(a.toDouble(), b.toDouble()) + func2(a.toDouble(), b.toDouble()) as double;
}
