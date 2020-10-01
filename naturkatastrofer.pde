Table table;
ArrayList<String> land = new ArrayList<String>();
String country;
String year;
String[] consolData = new String[24725];
int counter = 0;
Haloo h1= new Haloo();

void setup() {
  size(500, 500);
  table = loadTable("dnd.csv"); 
  for (int i = 0; i<table.getRowCount(); i++) {
    country = table.getRow(i).getString(1);
    TableRow r=table.getRow(i);
    r.getColumnCount();
    println(country);
    for (int c=2; c<r.getColumnCount(); c++) {
          year = table.getRow(0).getString(c);
      println(country,year,r.getInt(c));
      consolData[counter++]=("LINE"+counter+":"+country+" "+r.getString(1)+" "+r.getInt(c));
    }
    land.add(country);
    saveStrings("cosolOutput.txt", consolData);
    //println("Deaths in " + land + ":" + table.getRow(i).getInt(0));
  }
}
void draw() {
  background(40);
  rect(370,50,100,30);
  rect(370, 100,100,30);
  circle(mouseX, mouseY,10);
}
void mousePressed(){
   
  
}
class Haloo{
}
