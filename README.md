# CSG_Shop_Base
Project for the development of a database for online trading

This is an university project in collaboration with [Giovanni Lopopolo](https://github.com/giovannilopopolo98) and [Claudio Canulla](https://github.com/claudioc93).


This work was intended to Build a Prototype Database Management System for a possible online trade shop to Store the items and transactions of customers. It is a store with the followind information:

1. Customers: Id, name, surname, e-mail, password
2. Supplier: VAT number, cel, E-mail, Address
3. Shipping company: VAT numver, name, e-mail, cell, Address
4. Item: name, id, cost, brand, model
5. Sale Item: Id, date_start. date_end, discount%, category, item, brand
6. Add_payment: Id, Card_number, date. amount, user, order

All Items it is devided by categories, in that case we have 4 different class
Each product is supplied by only one supplier

A user can make several payments within the store and each individual payment is
associated only with the user who made it.

The shop does not directly manage the shipments of orders to customers but relies on various companies of
shipment identified by VAT number, name, location, email and optional telephone number.

![Screenshot (24)](https://user-images.githubusercontent.com/71655239/170264194-a46102b7-130d-47fd-ae8e-940c4181d887.png)


More information on requaire [Project file](https://github.com/Sigma117/CSG_Shop_Base/blob/main/Negozio%20Elettronica%20FINALE%20V2.5.pdf)
the file information include:
### - Conceptual design
-   Analysis of the specifications
-   Operations list
-   Entity-Relationship model


#### N.B. I'm sorry but at the moment the complete documentation is only available in Italian

## This Proeject includes all the SQL queries
The queries file is available here! [queries](https://github.com/Sigma117/CSG_Shop_Base/blob/main/query%20V5.3.SQL)

# Usage

This Databse was Designed and Tested for PostgresSQL 9.4
