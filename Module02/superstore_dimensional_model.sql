CREATE TABLE Customer_dim
(
 customer_id   varchar(50) NOT NULL,
 customer_name text NOT NULL,
 segment       varchar(50),
 CONSTRAINT PK_1 PRIMARY KEY (customer_id)
);

CREATE TABLE Address_dim
(
 address_id  int NOT NULL,
 country     varchar(50) NOT NULL,
 region      varchar(50) NOT NULL,
 state       varchar(50) NOT NULL,
 city        varchar(50) NOT NULL,
 postal_code int NOT NULL,
 CONSTRAINT PK_1 PRIMARY KEY ( address_id )
);

CREATE TABLE Date_dim
(
 date_id int NOT NULL,
 date    date NOT NULL,
 day     int NOT NULL,
 month   int NOT NULL,
 year    int NOT NULL,
 CONSTRAINT PK_1 PRIMARY KEY ( date_id )
);

CREATE TABLE Product_dim
(
 product_id   varchar(50) NOT NULL,
 product_name text NOT NULL,
 category     varchar(50),
 subcategory  varchar(50),
 CONSTRAINT PK_1 PRIMARY KEY ( product_id )
);

CREATE TABLE Ship_dim
(
 ship_id   int NOT NULL,
 ship_mode varchar(50) NOT NULL,
 CONSTRAINT PK_1 PRIMARY KEY ( ship_id )
);

CREATE TABLE Sale_fact
(
 row_id      int NOT NULL,
 order_id    varchar(50) NOT NULL,
 customer_id varchar(50) NOT NULL,
 ship_id     int NOT NULL,
 product_id  varchar(50) NOT NULL,
 date_id     int NOT NULL,
 address_id  int NOT NULL,
 sale        numeric(9, 4) NOT NULL,
 quantity    int NOT NULL,
 discount    numeric(4, 2) NOT NULL,
 profit      numeric(9, 4) NOT NULL,
 CONSTRAINT PK_1 PRIMARY KEY ( row_id ),
 CONSTRAINT FK_1 FOREIGN KEY ( customer_id ) REFERENCES Customer_dim ( customer_id ),
 CONSTRAINT FK_3 FOREIGN KEY ( ship_id ) REFERENCES Ship_dim ( ship_id ),
 CONSTRAINT FK_3_1 FOREIGN KEY ( product_id ) REFERENCES Product_dim ( product_id ),
 CONSTRAINT FK_4 FOREIGN KEY ( date_id ) REFERENCES Date_dim ( date_id ),
 CONSTRAINT FK_5 FOREIGN KEY ( address_id ) REFERENCES Address_dim ( address_id )
);
