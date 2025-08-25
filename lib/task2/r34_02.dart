void main() {
  print(solution([5, 2, 7, 4, 9], 5));
}

//ribbons : عدد الشرائط
//k  طول الشريط
int solution(List<int> ribbons, int k) {
  ribbons.sort();
  List<int> ribbonsResult = [];
  for (int i = ribbons.length; i > 0; i--) {
    int sum = 0;
    ribbons.forEach((r) => {sum += (r / k).toInt()});
    ribbonsResult.add(sum);
    print(ribbonsResult);
  }
  print(ribbonsResult);
  ribbonsResult.sort();
  return ribbonsResult.last;
}
