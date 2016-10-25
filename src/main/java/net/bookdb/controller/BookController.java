package net.bookdb.controller;

import net.bookdb.dao.BookRepository;
import net.bookdb.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @author lutfun
 * @since 10/20/16.
 */

@Controller
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @GetMapping("/")
    public String hello() {
        return "redirect:/list";
    }

    @GetMapping("/create")
    public String create() {
        return "create";
    }

    @GetMapping("/list")
    public String list(ModelMap model) {
        model.put("books", bookRepository.findAll());
        return "list";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Book book,
                       @RequestParam("bookPdf") MultipartFile file) throws IOException {

        bookRepository.save(book);

        return "redirect:/list";
    }

    @GetMapping("/show/{id}")
    public String show(@PathVariable long id, ModelMap model) {
        model.put("book", bookRepository.findOne(id));
        return "show";
    }
}
