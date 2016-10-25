package net.bookdb.controller;

import net.bookdb.dao.BookRepository;
import net.bookdb.domain.Attachment;
import net.bookdb.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomNumberEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/**
 * @author lutfun
 * @since 10/20/16.
 */

@Controller
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }

    @GetMapping("/")
    public String hello() {
        return "redirect:/list";
    }

    @GetMapping("/create")
    public String create(@ModelAttribute Book book) {
        return "create";
    }

    @GetMapping("/list")
    public String list(ModelMap model) {
        model.put("books", bookRepository.findAll());
        return "list";
    }

    @PostMapping("/save")
    public String save(@Valid @ModelAttribute Book book,
                       BindingResult result,
                       @RequestParam("bookPdf") MultipartFile file) throws IOException {

        if (result.hasErrors()) {
            return "create";
        }
        if (!file.isEmpty()) {
            Attachment attachment = new Attachment(file.getOriginalFilename(), file.getBytes(), file.getSize());
            book.setPdf(attachment);
        }

        bookRepository.save(book);

        return "redirect:/list";
    }

    @GetMapping("/show/{id}")
    public String show(@PathVariable long id, ModelMap model) {
        model.put("book", bookRepository.findOne(id));
        return "show";
    }

    @GetMapping(value = "/downloadPdf/{id}", produces = "application/pdf")
    public ResponseEntity<InputStreamResource> downloadPdf(@PathVariable long id) throws IOException {

        Attachment pdf = bookRepository.findOne(id).getPdf();

        return ResponseEntity
                .ok()
                .header("content-disposition", "attachment; filename=" + pdf.getFileName())
                .contentLength(pdf.getFileSize())
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .body(new InputStreamResource(new ByteArrayInputStream(pdf.getFile())));
    }
}
