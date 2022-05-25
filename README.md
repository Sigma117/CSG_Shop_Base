# CSG_Shop_Base
Project for the development of a database for online trading

## Introduction
This is an university project in collaboration with [Giovanni Lopopolo](https://github.com/giovannilopopolo98) and [Claudio Canulla](https://github.com/claudioc93).


This work was intended to Build a Prototype Database Management System for a possible online trade shop to Store the items and transactions of customers. It is a store with the followind information:

1. Customers: Id, name, surname, e-mail, password
2. Supplier: VAT number, cel, E-mail, Address
3. Shipping company: VAT numver, name, e-mail, cell, Address
4. Item: name, id, cost, brand, model
5. Sale Item: Id, date_start. date_end, discount%, category, item, brand
6. Add_payment: Id, Card_number, date. amount, user, order

more information on 

all Items it is devided by categories, in that case we have 4 different class
each product is supplied by only one supplier


Development and experimentation of a database fot the possibile online trade shop, using PostgresSQL
