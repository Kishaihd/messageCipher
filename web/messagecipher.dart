import 'dart:html';
import 'package:web_ui/web_ui.dart';

String originalMsg = "";
String encryptedMsg = "";

void main() {
  
}

int encodeCodeUnit(int codeUnit) {
  //called for each code unit in a string    
  return codeUnit * 90; 
}

int decodeCodeUnit(int codeUnit) {
  //called for each code unit in a string    
  return codeUnit * 90;
}

//called in response to the encipher button
void encrypt() { //could also define this function as "onEncrypt", just to be clearer.
  encryptedMsg = alter(originalMsg, operation: encodeCodeUnit);
}

//called in response to the decipher button
void decrypt() {
  originalMsg = alter(encryptedMsg, operation: decodeCodeUnit);
}

String alter(String msg, {Function operation}) { 
  return new String.fromCharCodes(msg.codeUnits.map(operation));  //maps the codeUnits. maps a list to another list.
}








