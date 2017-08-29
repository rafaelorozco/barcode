import java.util.*;

int WINWIDTH = 800;
int WINHEIGHT = 800;

int BARFAT = 10;
int BARSLIM = BARFAT / 3;
int CHARSPACE = BARFAT / 5;
int SPACEWIDTH = BARFAT;

int barHeight = 350;
int YCOORD = 20;

String MESSAGE = "1111";

Map<char, String> mainMap;

void setup() {
  size(800, 400);
  background(255);
  fill(0);
  
  mainMap = new HashMap<char, String>();
  
  //init dictionary values
  mainMap.put('1', "fs ssf");
  mainMap.put('*', "s sffs");
  //map.put("3", "type of animal");
  //map.put("4", "type of animal");
  //System.out.println(map.get("dog"));
}

void draw() {
  
  String messageTest = "111";
  //String oneCode = "fs ";
  int currXCoord = 10;
  
  //start messsage
  currXCoord = drawSymbol(currXCoord, '*');
  
  for(int i = 0; i < messageTest.length(); i++) {
    
    char currLetter = messageTest.charAt(i);
    String currSymbols = mainMap.get(currLetter);
    
    for(int j = 0; j < currSymbols.length(); j++) {
      char currSymbol = currSymbols.charAt(j);
      currXCoord = drawSymbol(currXCoord, currSymbol);
      
    }
     
  }
  
  //end messsage
  currXCoord = drawSymbol(currXCoord, '*');
}

int drawSymbol(int startX, char symbolType) {
 
  //draw fat
  if(symbolType == 'f') {
    rect(startX,YCOORD,BARFAT,barHeight);
    return startX + BARFAT + CHARSPACE;
  }
  
  //draw skinny 
  if(symbolType == 's') {
    rect(startX,YCOORD,BARSLIM,barHeight);
    return startX + BARSLIM + CHARSPACE; 
  }
  
  //draw space 
  return startX + SPACEWIDTH + CHARSPACE;
}