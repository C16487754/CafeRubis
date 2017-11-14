//Student name: Calvin Ho
//Student number: C16487754
void setup()
{
 size(800,600);
 loadData();
 printProducts();

 
}

ArrayList<Product> products = new ArrayList<Product>();




void draw()
{
  fill(255);
  displayProducts();
 
  
  
}

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  
  for(TableRow r: table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
  
}

void printProducts()
{
    for(Product a: products)
  {
    println(a.name, a.price);

  }
   for(int i=0; i<products.size(); i++)
  {
   Product a = products.get(i);
   println(a.name, a.price);
  }
  
}


void displayProducts()
{
  for(int i = 0; i < products.size() ;i++)
  {
    rect(20, (i*75), 200, 70);

  }

    
 }
  