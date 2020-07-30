
class Utility { 
  
  static const SUPERMODE = true; 
  static const USERMODE = false; 

  bool managerMode; 

  Utility() {
    managerMode = false; 
  }

  changeMode(bool mode) {
    if (managerMode == mode) {
      print("Already the same mode"); 
    } else {
      managerMode = mode; 
      if (managerMode == SUPERMODE) {
        print("Now operating in manager mode."); 
      } else {
        print("Now operating in employee mode."); 
      }
    }
  }

  

}