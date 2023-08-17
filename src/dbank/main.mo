import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor Dbank {
  stable var currentValue : Float = 300;
  currentValue := 300;

  // let id = 894528528359983;
  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show (startTime));

  // Debug.print(debug_show (id));

  public func topUP(amount : Float) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));

  };

  public func withDraw(amount : Float) {
    let tempValue : Float = currentValue -amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("the number is less than more that the current value");
    };

  };
  public query func checkBalance() : async Float {
    return currentValue;
  };

  public func compound() {
    let currentTime = Time.now();
    let timeElapseNS = currentTime -startTime;
    let timeElapseS = timeElapseNS / 1000000000;

    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapseS));
    startTime := currentTime;
  };

};
