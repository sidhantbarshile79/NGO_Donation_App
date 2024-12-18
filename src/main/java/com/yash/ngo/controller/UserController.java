package com.yash.ngo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yash.ngo.command.LoginCommand;
import com.yash.ngo.command.UserCommand;
import com.yash.ngo.domain.Donation;
import com.yash.ngo.domain.User;
import com.yash.ngo.exception.UserBlockedException;
import com.yash.ngo.service.CampaignService;
import com.yash.ngo.service.DonationService;
import com.yash.ngo.service.UserService;

@Controller
public class UserController 
{

    @Autowired
    private UserService userService;

    @Autowired
    private DonationService donationService;

    @Autowired
    private CampaignService campaignService;

    @RequestMapping(value = {"/", "/index"})
    public String index(Model model) 
    {
        model.addAttribute("command", new LoginCommand());
        return "index"; // /WEB-INF/view/index.jsp
    }


	@RequestMapping(value = "/about")
	public String About()
	{
		return "about";
	}


	@RequestMapping(value = "/link")
	public String Lin()
	{
		return "link";
	}

	
	@RequestMapping(value = "/team")
	public String Team()
	{
		return "team";
	}



//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String handleLogin(@ModelAttribute("command") LoginCommand cmd, Model model, HttpSession session) 
//    {
//        try 
//        {
//            User loggedInUser  = userService.login(cmd.getLoginName(), cmd.getPassword());
//
//            if (loggedInUser  == null) {
//                model.addAttribute("err", "Login failed. Please enter valid credentials.");
//                return "login";
//            } else {
//                // Success
//                session.setAttribute("userId", loggedInUser .getUserId());
//                int id = Integer.parseInt(session.getAttribute("userId").toString());
//
//                if (loggedInUser .getRole().equals(UserService.ROLE_ADMIN)) {
//                    addUserInSession(loggedInUser , session);
//                    return "redirect:admin_dashboard";
//                } else if (loggedInUser .getRole().equals(UserService.ROLE_USER)) {
//                    addUserInSession(loggedInUser , session);
//                    return "redirect:user_dashboard/"+id; // Redirect to donation form
//                } else {
//                    model.addAttribute("err", "Invalid user role.");
//                    return "login";
//                }
//            }
//        } catch (UserBlockedException ex) 
//        {
//            model.addAttribute("err", ex.getMessage());
//            return "index";
//        }
//    }
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String handleLogin(@ModelAttribute("command") LoginCommand cmd, Model model, HttpSession session) {
	    try {
	        User loggedInUser = userService.login(cmd.getLoginName(), cmd.getPassword());

	        if (loggedInUser == null) {
	            model.addAttribute("err", "Login failed. Please enter valid credentials.");
	            return "login";
	        } else {
	            // Success
	            session.setAttribute("userId", loggedInUser.getUserId());
	            session.setAttribute("currentUser", loggedInUser); // Set the current user in the session
	            int id = Integer.parseInt(session.getAttribute("userId").toString());

	            if (loggedInUser.getRole().equals(UserService.ROLE_ADMIN)) {
	                addUserInSession(loggedInUser, session);
	                return "redirect:admin_dashboard";
	            } else if (loggedInUser.getRole().equals(UserService.ROLE_USER)) {
	                addUserInSession(loggedInUser, session);
	                return "redirect:user_dashboard/" + id; // Redirect to donation form
	            } else {
	                model.addAttribute("err", "Invalid user role.");
	                return "login";
	            }
	        }
	    } catch (UserBlockedException ex) {
	        model.addAttribute("err", ex.getMessage());
	        return "index";
	    }
	}

    
    // admin logout
    @RequestMapping(value = {"/logout"})
    public String logout(HttpSession session) 
    {
        session.invalidate();
        return "redirect:index?act=lo";
    }
    
    // user logout
    @RequestMapping(value = "/user_dashboard/logout")
    public String userDashboardLogout(HttpSession session) {
        session.invalidate();
        return "redirect:/index?act=lo";
    }


    //logout from user dashboard
    @RequestMapping(value = "/user_dashboard", method = RequestMethod.GET)
    public String userDashboard(HttpSession session, Model model) {
        // Check if user is logged in
        if (session.getAttribute("userId") == null) 
        {
            return "redirect:/login";
        }
        
        try {
            // Get the user ID from the session
            int userId = Integer.parseInt(session.getAttribute("userId").toString());
            
            // Fetch user details using the user service
            User user = userService.getUserById(userId);
            
            // Add user details to the model
            model.addAttribute("user", user);
            
            return "dashboard_user";
        } catch (Exception e) {
            // Handle any exceptions (e.g., user not found)
            return "redirect:/login";
        }
    }

    @RequestMapping(value = "/login")
    public String login(Model model)
    {
        model.addAttribute("command", new User()); // Assuming LoginForm is your form backing object
        return "login";
    }

    @RequestMapping(value = "/user_dashboard")
    public String userDashboard() 
    {
        return "dashboard_user"; // /WEB-INF/view/dashboard_user.jsp
    }

    @RequestMapping(value = "/admin_dashboard")
    public String adminDashboard() {
        return "dashboard_admin"; // /WEB-INF/view/dashboard_admin.jsp
    }

    @RequestMapping(value = "/reg_form")
    public String registrationForm(Model model) {
        UserCommand cmd = new UserCommand();
        model.addAttribute("command", cmd);
        return "reg_form"; // /WEB-INF/view/reg_form.jsp
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser (@ModelAttribute("command") UserCommand cmd, Model model) 
    {
        try 
        {
            User user = cmd.getUser ();
            user.setRole(UserService.ROLE_USER);
            user.setLoginStatus(UserService.LOGIN_STATUS_ACTIVE);
            userService.register(user);
            return "redirect:login?act=reg"; // Redirect to Login Page
        } catch (DuplicateKeyException e) {
            e.printStackTrace();
            model.addAttribute("err", "Username is already registered. Please select another username.");
            return "reg_form"; // Return to registration form
        }
    }





    
	

    


	  @GetMapping("/users") 
	  public String listUsers(Model model) {
		  try {
			  List<User> userList = userService.getUserList();
			  model.addAttribute("userList", userList);
			  return "users";
		  }catch(Exception e) {
			  model.addAttribute("error","Error fetching users: "+e.getMessage());
			  return "error";
		  }
	  }


	  //count total user.
	  @GetMapping("/admin_dashboard")
	  public String adminDashboard(Model model) {
	      try {
	          int totalUsers = userService.countUsers();
	          int totalDonations = donationService.getTotalDonationAmount();
	          int totalCampaign=campaignService.getCountCampaign();
	          model.addAttribute("totalUsers", totalUsers);
	          model.addAttribute("totalDonations", totalDonations);
	          model.addAttribute("totalCampaign", totalCampaign);
	      } catch (Exception e) {
	          model.addAttribute("error", "Error fetching user count: " + e.getMessage());
	      }
	      return "dashboard_admin"; // /WEB-INF/view/dashboard_admin.jsp
	  }
	  
	  @GetMapping("/user_dashboard/{id}")
	  public String showUserDashboard(@PathVariable Integer id, Model model) {
	      try {
	          User user = userService.getUserById(id);
	          model.addAttribute("user", user);

	          List<Donation> donations = donationService.getAllDonationHistoryList(id);
	          model.addAttribute("donations", donations);

	          double totalDonation = donations.stream().mapToDouble(Donation::getDonationAmount).sum();
	          model.addAttribute("totalDonation", totalDonation);

	          return "dashboard_user";
	      } catch (Exception e) {
	          model.addAttribute("error", "Error fetching user dashboard: " + e.getMessage());
	          return "dashboard_user";
	      }
	  }
	  
	  @RequestMapping("/donationSuccess")
	  public String showDonationSuccess(HttpSession session, Model model) {
	      Donation pendingDonation = (Donation) session.getAttribute("pendingDonation");
	      if (pendingDonation != null) {
	          model.addAttribute("donationId", pendingDonation.getDonationId());
	          model.addAttribute("userId", session.getAttribute("userId"));
	      }
	      return "donationSuccess";
	  }



    private void addUserInSession(User user, HttpSession session) {
        session.setAttribute("user", user);
        session.setAttribute("userId", user.getUserId());
        session.setAttribute("role", user.getRole());
    }

}