package model;
import java.util.ArrayList;
import java.util.List;

public class ProductModel {

	private List<Product> products;

	public ProductModel() {
		this.products = new ArrayList<Product>();
		this.products.add(new Product("p01", "最終幻想14 5.0:暗影之逆焰", "images/p1.jpg", 350));
		this.products.add(new Product("p02", "魔獸世界 9.0:暗影之境", "images/p2.jpg", 450));
		this.products.add(new Product("p03", "碧血狂殺2:救贖", "images/p3.jpg", 1800));
		this.products.add(new Product("p04", "隻狼:暗影雙死", "images/p4.jpg", 1400));
		this.products.add(new Product("p05", "暗黑靈魂3", "images/p5.jpg", 1500));
		this.products.add(new Product("p06", "尼爾2:自動人形", "images/p6.jpg", 1600));
		this.products.add(new Product("p07", "魔物獵人:崛起", "images/p7.jpg", 1550));
		this.products.add(new Product("p08", "人中之龍極2", "images/p8.jpg", 1450));
		this.products.add(new Product("p09", "對馬戰鬼", "images/p9.jpg", 1650));
	}

	public List<Product> findAll() {
		return this.products;
	}

	public Product find(String id) {
		for (Product product : this.products) {
			if (product.getId().equalsIgnoreCase(id)) {
				return product;
			}
		}
		return null;
	}

}