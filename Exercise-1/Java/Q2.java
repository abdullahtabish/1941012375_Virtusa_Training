class Q2 {
    public static void main(String[] args) {
        Product pr = new Product();
        pr.getProductName();

        Price p = new Price();
        p.getPrice();
    }
}

abstract class Market {
    abstract void getPrice();

    abstract void getProductName();
}

class Price extends Market {
    @Override
    public void getPrice() {
        System.out.println("The price is " + 10);
    }

    @Override
    public void getProductName() {

    }
}

class Product extends Market {
    @Override
    public void getProductName() {
        System.out.println("Product = Oreo");
    }

    @Override
    public void getPrice() {

    }
}