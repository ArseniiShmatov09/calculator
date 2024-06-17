  String inputDigit = '0';
  String inputResult = '0';
  String resultValue = '0';
  List<double> values = [];
  List<String> operations = [];

  List<String> enterNumber(String enteredDigit) {
    if (inputDigit == '0' && enteredDigit != '.') {
      inputDigit = enteredDigit;
      inputResult = inputDigit;
    }
    else if ((inputDigit.contains('.') && enteredDigit == '.') || inputDigit.length == 12) {
    } 
    else {
      inputDigit += enteredDigit;
      inputResult = inputDigit;
    }
    return [inputDigit, inputResult];
  }

   List<String> setOperation(String newOperation) {
   
    if (inputDigit.isNotEmpty) {
      values.add(double.parse(inputDigit));
      operations.add(newOperation);
      inputDigit = '0';
    } else if (operations.isNotEmpty) {
      operations[operations.length - 1] = newOperation;
    }
    return operations;
  }

  List? calculateResult() {  
      
    if (inputDigit.isNotEmpty) {
      values.add(double.parse(inputDigit));
    }

    if (values.length == operations.length + 1) {
      for (int i = 0; i < operations.length; i++) {
        if (operations[i] == '*' || operations[i] == '/') {
          double tempResult;
          if (operations[i] == '*') {
            tempResult = values[i] * values[i + 1];
          } else {
            if (values[i + 1] == 0) {
              resultValue = 'Error';
              return null;
            }
            tempResult = values[i] / values[i + 1];
          }
          values[i] = tempResult;
          values.removeAt(i + 1);
          operations.removeAt(i);
          i--;
        }
      }

      double finalResult = values[0];
      for (int i = 0; i < operations.length; i++) {
        if (operations[i] == '+') {
          finalResult += values[i + 1];
        } else if (operations[i] == '-') {
          finalResult -= values[i + 1];
        }
      }

      resultValue = finalResult.toString();
      inputDigit = resultValue;
      values.clear();
      operations.clear();
      
    }
   return [resultValue, inputDigit];
  }

  String percentOperation() {
    final double value = double.tryParse(resultValue)!;
    return resultValue = (value / 100).toString();
  }

  String changeSign() {
   
    if (inputDigit != '0') {
      if (inputDigit.startsWith('-')) {
        inputDigit = inputDigit.substring(1);
      } else {
        inputDigit = '-$inputDigit';
      }
      inputResult = inputDigit;
    }
    return inputResult;
  }

  List<String> clearInput() {
    inputResult = '0';
    inputDigit = '0';
    resultValue = '0';
    return [inputResult, inputDigit, resultValue];
  }
  
