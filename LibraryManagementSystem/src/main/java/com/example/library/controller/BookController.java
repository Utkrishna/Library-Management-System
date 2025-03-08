package com.example.library.controller;

import com.example.library.dao.BookDAO;
import com.example.library.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/books")
public class BookController {

    private BookDAO bookDAO = new BookDAO();

    // List all books
    @GetMapping
    public String listBooks(Model model) {
        model.addAttribute("books", bookDAO.getAllBooks());
        model.addAttribute("totalBooks", bookDAO.getAllBooks().size());
        return "listBooks";
    }

    // Show the add book form
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("book", new Book());
        return "addBook";
    }

    // Save a new book
    @PostMapping("/save")
    public String saveBook(@ModelAttribute("book") Book book) {
        bookDAO.saveBook(book);
        return "redirect:/books";
    }

    // Show the edit book form
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        Book book = bookDAO.getBook(id);
        model.addAttribute("book", book);
        return "editBook";
    }

    // Update an existing book
    @PostMapping("/update")
    public String updateBook(@ModelAttribute("book") Book book) {
        bookDAO.updateBook(book);
        return "redirect:/books";
    }

    // Delete a book
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable("id") int id) {
        bookDAO.deleteBook(id);
        return "redirect:/books";
    }
}
