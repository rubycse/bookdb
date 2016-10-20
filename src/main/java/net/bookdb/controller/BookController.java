package net.bookdb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author lutfun
 * @since 10/20/16.
 */

@Controller
public class BookController {

    @GetMapping("/")
    public String hello() {
        return "redirect:create";
    }

    @GetMapping("/create")
    public String create() {
        return "create";
    }
}
