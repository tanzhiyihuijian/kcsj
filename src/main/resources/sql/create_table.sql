CREATE TABLE items
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80),
    price FLOAT(7, 4),
    detail VARCHAR(100)
);

INSERT INTO items (name, price, detail) VALUES ('联想笔记本', 999.9999 ,'ThinkPad T430 联想笔记本电脑！');
INSERT INTO items (name, price, detail) VALUES ('华硕笔记本', 888.8888 ,'坚如磐石');
INSERT INTO items (name, price, detail) VALUES ('小米笔记本', 666.66 ,'为发烧而生');



DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30),
    birthday DATE,
    sex CHAR(1),
    address VARCHAR(256)
) ENGINE = InnoDB AUTO_INCREMENT = 27 DEFAULT CHARSET = utf8;



DROP TABLE IF EXISTS orders;

CREATE TABLE orders
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id int(11) NOT NULL COMMENT '下单用户 id',
    number VARCHAR(80) NOT NULL COMMENT '订单号',
    createtime DATE NOT NULL COMMENT '创建订单时间',
    note VARCHAR(100) NOT NULL COMMENT '备注',

    CONSTRAINT user_id_FK FOREIGN KEY (user_id) REFERENCES user (id)
) ENGINE = InnoDB AUTO_INCREMENT = 27 DEFAULT CHARSET = utf8;



DROP TABLE IF EXISTS orderdetail;

CREATE TABLE orderdetail
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    orders_id int(11) NOT NULL COMMENT '订单 id',
    items_id int(11) NOT NULL COMMENT '商品 id',
    items_num int(11) DEFAULT NULL COMMENT '商品购买数量',

    CONSTRAINT orders_id_FK FOREIGN KEY (orders_id) REFERENCES orders(id),
    CONSTRAINT items_id_FK FOREIGN KEY (items_id) REFERENCES items(id)
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARSET = utf8;



