class StringUtils {

  static const String KEY_LANGUAGE_pleaseWait = 'KEY_LANGUAGE_pleaseWait';
  static const String KEY_LANGUAGE_ok = 'KEY_LANGUAGE_ok';
  static const String KEY_LANGUAGE_cancel = 'KEY_LANGUAGE_cancel';

  static bool contains(String toCheck, String inString, {bool isEqualIgnoreCase = true}) {
    try {
      if(isEqualIgnoreCase) {
        return (inString.toLowerCase().contains(toCheck.toLowerCase()));
      } else {
        return (inString.contains(toCheck));
      }
    } catch(e) {
      e.toString();
    }
    return false;
  }

  static bool exact(String toCheck, String withCheck, {bool isEqualIgnoreCase = true}) {
    try {
      if(isEqualIgnoreCase) {
        return (toCheck.toLowerCase() == (withCheck.toLowerCase()));
      } else {
        return (toCheck == withCheck);
      }
    } catch(e) {
      e.toString();
    }
    return false;
  }
}