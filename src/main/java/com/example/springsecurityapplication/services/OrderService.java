package com.example.springsecurityapplication.services;

import com.example.springsecurityapplication.models.Order;
import com.example.springsecurityapplication.repositories.OrderRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class OrderService {
    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    // Данный метод позволяет получить список всех товаров
    public List<Order> getAllOrder(){
        return orderRepository.findAll();
    }

    // Данный метод позволяет получить товар по id
    public Order getOrderId(int id){
        Optional<Order> optionalOrder = orderRepository.findById(id);
        return optionalOrder.orElse(null);
    }

    // Данный метод позволяет сохранить товар
    @Transactional
    public void saveOrder(Order order){
        orderRepository.save(order);
    }

    // Данный метод позволяет обновить данные о товаре
    @Transactional
    public void updateOrder(int id, Order order){
        order.setId(id);
        orderRepository.save(order);
    }

    // Данный метод позволяет удалить товар по id
    @Transactional
    public void deleteOrder(int id){
        orderRepository.deleteById(id);
    }
}
