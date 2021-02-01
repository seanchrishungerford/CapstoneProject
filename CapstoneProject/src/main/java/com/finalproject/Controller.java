package com.finalproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class Controller {

	@Autowired
    private AProductRepository aProductData;
    
    @Autowired
    private AUserRepository aUserData;
    
    @Autowired
    private AnOrderRepository anOrderData;
	
    
    @GetMapping("/delete")
	public ModelAndView getPage() {
		AProduct usr = new AProduct();
		return new ModelAndView("searchProducts", "fn", usr);       
	}

	@PostMapping("/delete")
	public ModelAndView find(@RequestParam long id) {
		AProduct usr = aProductData.findById(id).get();
		return new ModelAndView("delete", "hello", usr);       
	}
	
   	@GetMapping("/create")
	public ModelAndView getPage2() {
   		AProduct usr = new AProduct();
		return new ModelAndView("createProduct", "fn2", usr);       
	}

	@PostMapping("/create")
	public ModelAndView createProduct(AProduct task) {
		AProduct newTask = aProductData.save(task);
		
		return new ModelAndView("create", "hello2", newTask);

	}
	
   	@GetMapping("/register")
	public ModelAndView getPage3() {
		AUser usr = new AUser();
		return new ModelAndView("registerUser", "fn8", usr);       
	}

	@PostMapping("/register")
	public String createUser2(AUser user) {
		AUser newUser = aUserData.save(user);
		//List<Task> users = (List<Task>) userData.findAll();
		return "Registration Successful. <a href=\"/login\">Login</a>";

	}
	
   	@GetMapping("/login")
	public ModelAndView getPage4() {
		AUser usr = new AUser();
		return new ModelAndView("login", "fn10", usr);       
	}

	@PostMapping("/login")
	public String createUser3(AUser u) {
		
		AUser aUser = aUserData.getUserByPassword(u.getPassword());
		aUser = aUserData.getUserByUsername(u.getUsername());
		
		if(aUser != null) {
			return "Login Successful. <a href=\"/welcome\">Welcome</a>";
		}
		else {
		return "Login Unsuccessful.";
		}
	}
	
   	@GetMapping("/welcome")
	public ModelAndView getPage5() {
//		User usr = new User();
//		return new ModelAndView("welcome", "fn11", usr);    
		List<AProduct> products = (List<AProduct>) aProductData.findAll();
		return new ModelAndView("read","product", products);
	}

	@GetMapping("/editemp")
	public ModelAndView getupdate() {
		AProduct prod = new AProduct();


		return new ModelAndView("searchProducts2", "fn5" , prod);
	}
	@PostMapping("/editemp")
	public ModelAndView updateProd(AProduct product) {

		aProductData.save(product);
		
		return new ModelAndView("updateProducts", "hello10", product);
	}
	
	@GetMapping("/read")
	public ModelAndView listProduct() {
		List<AProduct> products = (List<AProduct>) aProductData.findAll();
		return new ModelAndView("read","product", products);
	}
	
	@RequestMapping(value="/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") long theId)  
	{  

		aProductData.deleteById(theId);
		return "Product deleted successfully <a href=\"/welcome\">Welcome</a>";

	} 
	
	@GetMapping("/search1")
	public ModelAndView search2() {
   		AProduct prod = new AProduct();
		return new ModelAndView("search", "fn13", prod);   
		
		
	}
	
	@PostMapping("/search1")
	public ModelAndView searchProd(@RequestParam(value = "name") String theName) {
		
		AProduct prod = aProductData.findByName(theName);
		if(aProductData.findByName(theName) != null) {
			return new ModelAndView("searchProduct1", "hello12", prod);
		}
		
			else return new ModelAndView("read", "product", prod);
	}
	
	
	
	@GetMapping("/search2")
	public ModelAndView search3() {
   		AProduct prod = new AProduct();
		return new ModelAndView("search2", "fn20", prod);   
		
		
	}
	
	@PostMapping("/search2")
	public ModelAndView searchProd2(@RequestParam(value = "description") String desc) {
		
		AProduct prod = aProductData.findByDescription(desc);
		if(aProductData.findByDescription(desc) != null) {
			return new ModelAndView("SearchDescr", "hello20", prod);
		}
		
			else return new ModelAndView("read", "product", prod);
	}
	
	@GetMapping("/search3")
	public ModelAndView search100() {
   		AProduct theProd = new AProduct();
		return new ModelAndView("search3", "fn100", theProd);   
		
		
	}
	
	@PostMapping("/search3")
	public ModelAndView searchProd100(@RequestParam(value = "name") String name) {
		
		AProduct theProd = new AProduct();
		if((aProductData.findByName(name) != null)) {
			theProd = aProductData.findByName(name);
			return new ModelAndView("SearchDescr", "hello20", theProd);
		}
		
			else return new ModelAndView("NoProdFound","none", theProd);
	}
	
	
	
	@GetMapping("/search4")
	public ModelAndView search101() {
   		AProduct theProd = new AProduct();
		return new ModelAndView("search4", "fn101", theProd);   
		
		
	}
	
	@PostMapping("/search4")
	public ModelAndView searchProd101(@RequestParam(value = "genre") String genre) {
		
		AProduct theProd = new AProduct();
		if((aProductData.findByGenre(genre) != null)) {
			theProd = aProductData.findByGenre(genre);
			return new ModelAndView("SearchDescr", "hello20", theProd);
		}
		
			else return new ModelAndView("NoProdFound","none", theProd);
	}
	
	
	@GetMapping("/search5")
	public ModelAndView search102() {
   		AProduct theProd = new AProduct();
		return new ModelAndView("search5", "fn102", theProd);   
		
		
	}
	
	@PostMapping("/search5")
	public ModelAndView searchProd102(@RequestParam(value = "price") double price) {
		
		AProduct theProd = new AProduct();
		if((aProductData.findByPrice(price) != null)) {
			theProd = aProductData.findByPrice(price);
			return new ModelAndView("SearchDescr", "hello20", theProd);
		}
		
			else return new ModelAndView("NoProdFound","none", theProd);
	}
	
	@RequestMapping(value="create2/{id}", method = RequestMethod.GET)
	public ModelAndView addToCart(@PathVariable("id") long theId)  
	{  
		AnOrder order = new AnOrder();
		AProduct product = new AProduct();
		String username;
		//Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//username = auth.getName();
		product = aProductData.findById(theId).get();
		
		order.setId(theId);
		order.setName(product.getName());
		order.setPrice(product.getPrice());
		order.setQuantity(1);
		order.setStatus("processing");
		order.setUsername("User");
		
		return new ModelAndView("Cart", "hello1000", order);

	} 
	
	

}
