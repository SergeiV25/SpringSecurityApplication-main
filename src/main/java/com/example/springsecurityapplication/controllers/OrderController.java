package com.example.springsecurityapplication.controllers;

import com.example.springsecurityapplication.repositories.OrderRepository;
import com.example.springsecurityapplication.services.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/order")
public class OrderController {
    private final OrderRepository orderRepository;
    private  final OrderService orderService;

    public OrderController(OrderRepository orderRepository, OrderService orderService) {
        this.orderRepository = orderRepository;
        this.orderService = orderService;
    }

    @GetMapping("")
    public String getAllProduct(Model model){
        model.addAttribute("orders", orderService.getAllOrder());
        return "/orders/orders";
    }

    @PostMapping("/search")
    public String productSearch(@RequestParam("search") String search, Model model){
        model.addAttribute("orders", orderService.getAllOrder());
        model.addAttribute("search_order", orderRepository.findByLastFourOfNumber(search.toLowerCase()));


        model.addAttribute("value_search", search);
        return "/orders/orders";

    }
}
