package com.codingdojo.NowakWork.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.NowakWork.models.Job;
import com.codingdojo.NowakWork.models.LoginUser;
import com.codingdojo.NowakWork.models.User;
import com.codingdojo.NowakWork.services.JobService;
import com.codingdojo.NowakWork.services.UserService;

@Controller
public class HomeController {
	
	private final UserService userService;
	private final JobService jobService;
	
	public HomeController(UserService userService, JobService jobService) {
		this.userService = userService;
		this.jobService = jobService;
	}

//**** Login In and Reg ****//
	
		@GetMapping("/")
		public String index(Model model) {
			model.addAttribute ("newUser", new User());
			model.addAttribute ("newLogin", new LoginUser());
			return "index.jsp";
	}

// ROUTE TO REGISTER
		@PostMapping("/register")
		public String register(@Valid @ModelAttribute("newUser")User newUser, BindingResult result, Model model, HttpSession session) {
			userService.register(newUser, result);
			if(result.hasErrors()) {
				model.addAttribute("newLogin", new LoginUser());
				return "index.jsp";
			}
			session.setAttribute ("user_id", newUser.getId());
			return "redirect:/dashboard";
		}
		
// ROUTE TO LOGIN
		
		@PostMapping("/login")
		public String login(@Valid @ModelAttribute("newLogin")LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
			User user = userService.login(newLogin, result);
			if(result.hasErrors()) {
				model.addAttribute("newUser", new User());
				return "index.jsp";
			}
			session.setAttribute ("user_id", user.getId());
			return "redirect:/dashboard";
		}
	
//**** Dashboard with all for user****//
	
		@GetMapping("/dashboard")
		public String dashboard(HttpSession session, Model model) {
			if(session.getAttribute("user_id")!=null){
				model.addAttribute("allJobs", jobService.allJobs());
				
				model.addAttribute("user", userService.oneUser((long)session.getAttribute("user_id")));
				return "dashboard.jsp";
				
				
			} else {
				return "redirect:/";
			}
			
		}
		
//**** Logout ****//
		
		@GetMapping("/logout")
		public String logout(HttpSession session) {
		
			session.invalidate();
			return "redirect:/";
		}
			
//**** Create Job ********//
		@GetMapping("/create")
		public String create(@ModelAttribute("job")Job job, Model model, HttpSession session) {
			model.addAttribute("user", userService.oneUser((long)session.getAttribute("user_id")));
			
			return "create.jsp";
		}	
		
//POST CREATE
		@PostMapping("/createOne")
		public String createOne(@Valid @ModelAttribute("job")Job job, BindingResult result, Model model,  HttpSession session ) {
			if(result.hasErrors()) {
				model.addAttribute("user", userService.oneUser((long)session.getAttribute("user_id")));
				return "create.jsp";
			}
			jobService.create(job);
			return "redirect:/dashboard";
		}

		
		
			
//**** View One Job ****//
		
		@GetMapping("/showOne/{id}")
		public String showOne(@PathVariable("id") Long id, Model model, HttpSession session) {
			model.addAttribute("user", userService.oneUser((long)session.getAttribute("user_id")));
			model.addAttribute("job", jobService.findOne(id));
			return "showOne.jsp";
		}
		
//**** Deleting One Job ****//
		
		@GetMapping("/delete/{id}")
		public String delete(@PathVariable("id") Long id) {
			jobService.delete(id);
			return "redirect:/dashboard";
		}	

//POST Edit
//**** Editing a Job ****//	
		@GetMapping("/edit")
		public String edit() {
			return "edit.jsp";
		}
	

}
