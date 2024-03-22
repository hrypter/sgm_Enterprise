package in.suman.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SgmController {
	
@GetMapping("/index")
public String smgMethod(Model m1) {
	return "index";

}
}
