import 'dart:io';
import 'dart:math';

enum State {rock,paper,scissors}
void main() {
  var user_point=0;
  var pc_point=0;
print(
"press 1 for rock\n"+
"press 2 for paper\n"+
"press 3 for scissors\n"
  );
  while(true){
    print("Please select move");
    var value=stdin.readLineSync();
    var randomState=State.values[Random().nextInt(3)+0].index;
  if(value=='1'){
  if(randomState==0){
   print("pc selection:rock\n"+
    "draw\n"+
   "user point:$user_point\n"+
   "pc point:$pc_point");
  }
  else if(randomState==1){
    print("pc selection:paper\n"+
      "you lost");
   pc_point++;
   print("user point:$user_point\n"+
   "pc point:$pc_point");
  }
  else{
   print("pc selection:scissors\n"+
    "you won");
   user_point++;
   print("user point:$user_point\n"+
   "pc point:$pc_point");
  }
  }
  else if(value=='2'){
  if(randomState==1){
   print(
    "pc selection:paper\n"+
    "draw\n"+
   "user point:$user_point\n"+
   "pc point:$pc_point");
  }
  else if(randomState==2){
  print("pc selection:scissors\n"+
    "you lost");
   pc_point++;
   print("user point:$user_point\n"+
   "pc point:$pc_point");
  }
  else{
   print("pc selection:rock\n"+
    "you won");
   user_point++;
   print("user point:$user_point\n"+
   "pc point:$pc_point");
  }
  }
  else if(value=='3'){
  if(randomState==2){
  print(
    "pc selection:scissors\n"+
    "draw\n"+
   "user point:$user_point\n"+
   "pc point:$pc_point");
  }
  else if(randomState==0){
  print("pc selection:rock\n"+
    "you lost");
   pc_point++;
   print("user point:$user_point\n"+
   "pc point:$pc_point");
  }
  else{
   print("pc selection:paper\n"+
    "you won");
   user_point++;
   print("user point:$user_point\n"+
   "pc point:$pc_point");
  }
  }
  else{
    print("you have selected an invalid move");
    continue;
  }
  if(user_point==3){
    print("you won the game $user_point-$pc_point");
    break;
  }
  else if(pc_point==3){
    print("you lost the game $pc_point-$user_point");
    break;
  }
  }
  
  
}