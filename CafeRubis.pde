//Student name: Calvin Ho
//Student number: C16487754
void setup()
{
 size(800,800);
 loadData();
}

ArrayList<Product> products = new ArrayList<Product>();




void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  
  for(TableRow r: table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
  
  for(Product a: products)
  {
    println(a.name);
  }
  
  for(int i=0; i<products.size(); i++)
  {
   Product a = products.get(i);
   println(a.name);
    
  }
  
}