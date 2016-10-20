package net.bookdb.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author lutfun
 * @since 10/20/16.
 */

@RestController
public class BookController {

    @GetMapping("/")
    public String hello() {
        return "hello from book world";
    }
}
