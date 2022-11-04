import 'package:dart_numerics/dart_numerics.dart';

class Solution {
  List<int> bestTimeToBuyAndSellStock(List<int> prices) {
    int minValue = int64MaxValue;
    int maxProfit = 0;
    int buyingDay = 0;
    int sellingDay = 0;

    for (int i = 0; i < prices.length; i++) {
      if (prices[i] < minValue) {
        minValue = prices[i];
        buyingDay = i + 1;
      } else if (prices[i] - minValue > maxProfit) {
        maxProfit = prices[i] - minValue;
        sellingDay = i + 1;
      }
    }
    return [maxProfit, buyingDay, sellingDay];
  }
}

void main(List<String> args) {
  List<int> bestTimeToBuyAndSellStock =
      Solution().bestTimeToBuyAndSellStock([4, 5, 2, 3, 1, 6, 7, 9]);
  print(
      'MaxProfit = ${bestTimeToBuyAndSellStock[0]}, buy on day ${bestTimeToBuyAndSellStock[1]}, sell on day ${bestTimeToBuyAndSellStock[2]}');
}
