package packs.musiccontroller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import packs.dao.ServiceClass;

import packs.model.Member;
import packs.model.Product;

@Controller
public class MusicControl {

	@Autowired
	ServiceClass sc;

	@Autowired
	public MusicControl(ServiceClass sc) {
		this.sc = sc;
	}

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/businessparter")
	public String businessparter() {
		return "businessparter";
	}

	@RequestMapping("/contactus")
	public String contactus() {
		return "contactus";
	}

	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}

	@RequestMapping("/custreview")
	public String custreview() {
		return "custreview";
	}

	@RequestMapping("/sign")
	public String sign() {
		return "sign";
	}

	@RequestMapping("/whatecomm")
	public String whatecomm() {
		return "whatecomm";
	}

	@RequestMapping("/yecomm")
	public String yecomm() {
		return "yecomm";
	}

	@RequestMapping("/house")
	public String house() {
		return "index";
	}

	@RequestMapping("/product")
	public String product(ModelMap model) {
		List<Product> prod = sc.getAllProducts();// getAllProducts();
		/*for (Product p : prod) {
			System.out.println(p.getId());
		}*/

		model.addAttribute("products", prod);
		return "product";
	}

	@RequestMapping(value = "/productDetail", method = RequestMethod.GET)
	public ModelAndView productDesc(@RequestParam int pro) {
		Product pp = new Product();
		pp = sc.getProductById(pro);
		return new ModelAndView("productDesc", "data", pp);
	}

	// below 3 methods are for showing form , creating an object and adding a
	// product
	@RequestMapping("/addnewproduct") // , method=RequestMethod.POST)
	public String addProduct() {
		return "addproduct";
	}

	@ModelAttribute("addpro")
	public Product makeObj() {
		return new Product();
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public ModelAndView gotNewProduct(@ModelAttribute("addpro") Product pob, HttpServletRequest request,
			BindingResult result) {
		//String filename = null;
		int id = 0;
		int res = 0;
		List<Product> productList=sc.getLastID();
		for(Product ppp:productList)
		{
			id=ppp.getId();
		}
		id=id+1;
		ServletContext context = request.getServletContext();
		System.out.println("Product id = "+pob.getId());
		String path = context.getRealPath("./resources/" +id + ".jpg");

		System.out.println("Path = " + path);

		//System.out.println("File name = "+pob.getImage().getOriginalFilename());

		File f = new File(path);

		if (!pob.getImage().isEmpty())

		{
			try {
				// filename=p.getImage().getOriginalFilename();

				byte[] bytes = pob.getImage().getBytes();

				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));

				bs.write(bytes);
				bs.close();
				  res=sc.addNewProduct(pob);
          		//return new ModelAndView("operations","ops",null);
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		else
		{
			res = 0;
		}
		if (res > 0)
		{
			return new ModelAndView("index", "", null);
		} 
		else
		{

		return new ModelAndView("error", "", null);

		}

	}

	// below 3 methods are for showing form , creating an object and adding a
	// member
	@RequestMapping("/register")
	public String addMember()// value="addmember", method=RequestMethod.)
	{
		return "register";
	}

	@ModelAttribute("addmem")
	public Member createMember() {
		return new Member();
	}

	@RequestMapping(value = "/addmember", method = RequestMethod.POST)
	public ModelAndView getNewMember(@Valid @ModelAttribute("addmem") Member mob, BindingResult result) {
		if(result.hasErrors())
		{
			return new ModelAndView("register","",null);
		}
		 sc.addNewUser(mob);
		int cc = sc.addNewMember(mob);
		return new ModelAndView("memberOps", "mops", null);
	}
	/*@RequestMapping(value="/loginError",method=RequestMethod.POST)
	public
	{
		
	}
*/
	@RequestMapping("/deleteProduct")
	public ModelAndView deleteProduct(@RequestParam int pro)
	{
		if(sc.deleteProduct(pro))
		{
			List<Product> prod = sc.getAllProducts();// getAllProducts();
			/*for (Product p : prod) {
				System.out.println(p.getId());
			}*/
			return new ModelAndView("product","products", prod);
		}
		else
		{
			return new ModelAndView("error","",null);
		}
	}
	/*@RequestMapping("/addtocart")
	public String shopping()
	{
		return "shoppingcart";
	}*/
	
	@RequestMapping("/abc")
	public String addToCart()
	{
		return "redirect:start";
	}
	@RequestMapping("/share")
	public String shareOnMail()
	{
		return "shareOnMail";
	}
	 @RequestMapping(value="/sendMail", method=RequestMethod.POST)
	    public String sendMail(HttpServletRequest request)
	    {
	    	try
			{
			String recipientAddress = request.getParameter("recipient");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			
			// prints debug info
			System.out.println("To: " + recipientAddress);
			System.out.println("Subject: " + subject);
			System.out.println("Message: " + message);
			
			// creates a simple e-mail object
			SimpleMailMessage email = new SimpleMailMessage();
			email.setTo(recipientAddress);
			email.setSubject(subject);
			email.setText(message);
			
			// sends the e-mail
			mailSender.send(email);
			
			
			}
			catch(Exception ex)
			{
				System.out.println("Exception = "+ex);
			}
			return "Success";
	    }

}
