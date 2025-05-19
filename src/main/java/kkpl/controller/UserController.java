package kkpl.controller;

import org.springframework.web.bind.annotation.*;

import kkpl.model.User;
import kkpl.repo.UserRepository;

import java.util.List;

@RestController
@RequestMapping("/users")
@CrossOrigin(origins = "*")
public class UserController {

    private final UserRepository repo;

    public UserController(UserRepository repo) {
        this.repo = repo;
    }

    @PostMapping
    public String addUser(@RequestBody User user) {
        repo.save(user);
        return "User added!";
    }

    @GetMapping
    public List<User> getAllUsers() {
        return repo.findAll();
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable String id) {
        return repo.findById(id);
    }
}
