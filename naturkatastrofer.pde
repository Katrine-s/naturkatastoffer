Table table;
ArrayList<String> land = new ArrayList<String>();
String country;

void setup() {
  size(250, 250);
  table = loadTable("dnd.csv"); 
  for(int i = 0; i<table.getRowCount();i++){
    country = Integer.toString(table.getRow(i).getInt(0));
    land.add(country);
  println("Deaths in " + land + ":" + table.getRow(i).getInt(3));
  }
}

void draw() {
  background(40);
}
