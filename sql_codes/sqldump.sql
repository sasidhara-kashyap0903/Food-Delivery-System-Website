-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: food_delivery_system
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `building_name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `pin_code` varchar(6) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Building 1','MG Road','560001','Bangalore','Karnataka'),(2,'Building 2','Park Street','700001','Kolkata','West Bengal'),(3,'Building 3','Lalbagh Road','560004','Bangalore','Karnataka'),(4,'Building 4','Bandra Kurla Complex','400051','Mumbai','Maharashtra'),(5,'Building 5','Park Street','700016','Kolkata','West Bengal'),(6,'Building 6','Dhole Patil Road','411001','Pune','Maharashtra'),(7,'Building 7','Anna Salai','600002','Chennai','Tamil Nadu'),(8,'Building 8','Connaught Place','110001','New Delhi','Delhi'),(9,'Building 9','Richmond Road','560025','Bangalore','Karnataka'),(10,'Building 10','Park Street','700071','Kolkata','West Bengal'),(11,'Building 11','Juhu Tara Road','400049','Mumbai','Maharashtra'),(12,'Building 12','Park Street','700017','Kolkata','West Bengal'),(13,'Building 13','MG Road','560001','Bangalore','Karnataka'),(14,'Building 14','Linking Road','400054','Mumbai','Maharashtra'),(15,'Building 15','Park Street','700019','Kolkata','West Bengal'),(16,'Building 16','Residency Road','560025','Bangalore','Karnataka'),(17,'Building 17','Mount Road','600002','Chennai','Tamil Nadu'),(18,'Building 18','Hill Road','400050','Mumbai','Maharashtra'),(19,'Building 19','Gariahat Road','700029','Kolkata','West Bengal'),(20,'Building 20','Magarpatta City','411028','Pune','Maharashtra'),(21,'Building 21','Koramangala','560034','Bangalore','Karnataka'),(22,'Building 22','Salt Lake City','700091','Kolkata','West Bengal'),(23,'Building 23','Nungambakkam High Road','600034','Chennai','Tamil Nadu'),(24,'Building 24','Andheri Kurla Road','400059','Mumbai','Maharashtra'),(25,'Building 25','Dalhousie Square','700001','Kolkata','West Bengal'),(26,'Building 26','Koregaon Park','411001','Pune','Maharashtra'),(27,'Building 27','Indiranagar','560038','Bangalore','Karnataka'),(28,'Building 28','Park Street','700021','Kolkata','West Bengal'),(29,'Building 29','T Nagar','600017','Chennai','Tamil Nadu'),(30,'Building 30','Malabar Hill','400006','Mumbai','Maharashtra');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_address` (
  `customer_id` int NOT NULL,
  `address_id` int NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `Customer_Address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `Customer_Address_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `contact_details` json DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Rajesh','Kumar','Sharma','1980-05-10',41,'{\"email\": \"rajesh.sharma@example.com\", \"phone\": \"9876543210\"}','password1'),(2,'Anjali',NULL,'Singh','1995-08-20',26,'{\"email\": \"anjali.singh@example.com\", \"phone\": \"8765432109\"}','password2'),(3,'Amit','Kumar','Patel','1988-03-15',33,'{\"email\": \"amit.patel@example.com\", \"phone\": \"7654321098\"}','password3'),(4,'Priya',NULL,'Gupta','1992-11-25',29,'{\"email\": \"priya.gupta@example.com\", \"phone\": \"6543210987\"}','password4'),(5,'Manoj','Kumar','Yadav','1982-07-08',39,'{\"email\": \"manoj.yadav@example.com\", \"phone\": \"5432109876\"}','password5'),(6,'Deepika',NULL,'Mishra','1987-09-18',34,'{\"email\": \"deepika.mishra@example.com\", \"phone\": \"4321098765\"}','password6'),(7,'Rahul',NULL,'Verma','1990-02-22',31,'{\"email\": \"rahul.verma@example.com\", \"phone\": \"3210987654\"}','password7'),(8,'Sneha',NULL,'Rajput','1984-04-12',37,'{\"email\": \"sneha.rajput@example.com\", \"phone\": \"2109876543\"}','password8'),(9,'Ajay','Singh','Chauhan','1998-06-30',23,'{\"email\": \"ajay.chauhan@example.com\", \"phone\": \"1098765432\"}','password9'),(10,'Ananya',NULL,'Sharma','1994-10-05',27,'{\"email\": \"ananya.sharma@example.com\", \"phone\": \"0987654321\"}','password10'),(11,'Vikram','Singh','Rathore','1986-12-04',35,'{\"email\": \"vikram.rathore@example.com\", \"phone\": \"9876543210\"}','password11'),(12,'Neha',NULL,'Yadav','1991-03-28',30,'{\"email\": \"neha.yadav@example.com\", \"phone\": \"8765432109\"}','password12'),(13,'Rakesh','Kumar','Sharma','1989-08-15',32,'{\"email\": \"rakesh.sharma@example.com\", \"phone\": \"7654321098\"}','password13'),(14,'Pooja',NULL,'Gupta','1993-05-20',28,'{\"email\": \"pooja.gupta@example.com\", \"phone\": \"6543210987\"}','password14'),(15,'Vijay',NULL,'Yadav','1983-09-10',38,'{\"email\": \"vijay.yadav@example.com\", \"phone\": \"5432109876\"}','password15');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `order_id` int NOT NULL,
  `agent_id` int NOT NULL,
  `delivery_review` varchar(50) DEFAULT NULL,
  `delivery_rating` int DEFAULT NULL,
  `delivery_charges` decimal(10,2) NOT NULL,
  `pickup_time` datetime NOT NULL,
  `delivery_time` datetime NOT NULL,
  `delivery_status` varchar(50) NOT NULL,
  `tip` decimal(10,2) DEFAULT NULL,
  KEY `order_id` (`order_id`),
  KEY `agent_id` (`agent_id`),
  CONSTRAINT `Delivery_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `Delivery_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `delivery_agent` (`agent_id`),
  CONSTRAINT `CHK_delivery_rating_range` CHECK (((`delivery_rating` >= 0) and (`delivery_rating` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,1,'Good service',4,5.00,'2024-02-14 12:00:00','2024-02-14 12:30:00','Delivered',2.50),(2,2,'Prompt delivery',5,4.50,'2024-02-14 13:15:00','2024-02-14 13:45:00','Delivered',3.00),(3,3,'Excellent service',3,6.00,'2024-02-14 11:45:00','2024-02-14 12:15:00','Delivered',4.00),(4,4,'Very fast delivery',4,7.00,'2024-02-14 14:30:00','2024-02-14 15:00:00','Delivered',3.50),(5,5,'Friendly delivery person',5,5.50,'2024-02-14 16:00:00','2024-02-14 16:30:00','Delivered',2.00),(6,6,'Great experience',2,6.50,'2024-02-14 17:15:00','2024-02-14 17:45:00','Delivered',3.00),(7,7,'Polite and efficient',4,7.50,'2024-02-14 18:30:00','2024-02-14 19:00:00','Delivered',2.50),(8,8,'Satisfactory service',1,5.50,'2024-02-14 20:00:00','2024-02-14 20:30:00','Delivered',3.50),(9,9,'Timely delivery',4,6.00,'2024-02-14 21:45:00','2024-02-14 22:15:00','Delivered',4.00),(10,10,'Efficient handling',3,7.00,'2024-02-14 23:30:00','2024-02-15 00:00:00','Delivered',2.00),(11,11,'Good communication',4,5.50,'2024-02-15 01:15:00','2024-02-15 01:45:00','Delivered',3.50),(12,12,'Professional behavior',5,6.00,'2024-02-15 02:30:00','2024-02-15 03:00:00','Delivered',4.00),(13,13,'Fast and reliable',4,7.50,'2024-02-15 04:45:00','2024-02-15 05:15:00','Delivered',2.50),(14,14,'Neat and clean delivery',2,5.50,'2024-02-15 06:00:00','2024-02-15 06:30:00','Delivered',3.50),(15,15,'Friendly and helpful',1,6.00,'2024-02-15 07:15:00','2024-02-15 07:45:00','Delivered',4.00);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_agent`
--

DROP TABLE IF EXISTS `delivery_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_agent` (
  `agent_id` int NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `agent_name` varchar(50) NOT NULL,
  `phone_num` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `license_id` varchar(20) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`agent_id`),
  UNIQUE KEY `vehicle_number` (`vehicle_number`),
  UNIQUE KEY `phone_num` (`phone_num`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `license_id` (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_agent`
--

LOCK TABLES `delivery_agent` WRITE;
/*!40000 ALTER TABLE `delivery_agent` DISABLE KEYS */;
INSERT INTO `delivery_agent` VALUES (1,'KA01AB1234','Rahul Kumar','+91 9876543210','rahul.kumar@example.com','Bangalore','DL123456',1),(2,'WB02CD5678','Priya Sharma','+91 8765432109','priya.sharma@example.com','Kolkata','DL238567',1),(3,'MH03EF9012','Amit Patel','+91 7654321098','amit.patel@example.com','Mumbai','DL945678',1),(4,'TN04GH3456','Sneha Rajput','+91 6543210987','sneha.rajput@example.com','Chennai','DL456789',0),(5,'DL05IJ7890','Rakesh Sharma','+91 5432109876','rakesh.sharma@example.com','Delhi','DL564890',1),(6,'KA06KL1234','Anjali Singh','+91 4321098765','anjali.singh@example.com','Bangalore','DL678901',1),(7,'WB07MN5678','Manoj Yadav','+91 3210987654','manoj.yadav@example.com','Kolkata','DL789012',0),(8,'MH08OP9012','Deepika Mishra','+91 2109876543','deepika.mishra@example.com','Mumbai','DL890123',1),(9,'TN09QR3456','Vikram Rathore','+91 1098765432','vikram.rathore@example.com','Chennai','DL901234',1),(10,'DL10ST7890','Pooja Gupta','+91 0987654321','pooja.gupta@example.com','Delhi','DL012345',1),(11,'KA11UV1234','Ajay Chauhan','+91 8876543250','ajay.chauhan@example.com','Bangalore','DL123457',1),(12,'WB12WX5678','Ananya Sharma','+91 7765432109','ananya.sharma@example.com','Kolkata','DL234567',0),(13,'MH13YZ9012','Neha Yadav','+91 8654361098','neha.yadav@example.com','Mumbai','DL345678',1),(14,'TN14AB3456','Rajesh Verma','+91 5543210987','rajesh.verma@example.com','Chennai','DL556789',1),(15,'DL15CD7890','Suresh Kumar','+91 4432109876','suresh.kumar@example.com','Delhi','DL567890',1);
/*!40000 ALTER TABLE `delivery_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_item`
--

DROP TABLE IF EXISTS `food_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_item` (
  `item_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `item_rating` decimal(3,2) DEFAULT NULL,
  `vegetarian` tinyint(1) NOT NULL,
  `photo_url` varchar(100) DEFAULT NULL,
  `image` longblob,
  `availability` tinyint(1) NOT NULL,
  `order_count` int NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `Food_Item_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_item`
--

LOCK TABLES `food_item` WRITE;
/*!40000 ALTER TABLE `food_item` DISABLE KEYS */;
INSERT INTO `food_item` VALUES (1,1,'Chicken Tikka','Starter',270.00,4.40,0,'https://example.com/chicken_tikka.jpg',NULL,1,40),(2,1,'Vegetable Biryani','Main Course',220.00,4.20,1,'https://example.com/vegetable_biryani.jpg',NULL,1,60),(3,1,'Dal Makhani','Main Course',200.00,4.50,1,'https://example.com/dal_makhani.jpg',NULL,1,55),(4,1,'Gulab Jamun','Dessert',80.00,4.60,1,'https://example.com/gulab_jamun.jpg',NULL,1,70),(5,1,'Aloo Paratha','Breakfast',120.00,4.30,1,'https://example.com/aloo_paratha.jpg',NULL,1,45),(6,2,'Chicken Tikka','Starter',250.00,4.30,0,'https://example.com/chicken_tikka2.jpg',NULL,1,38),(7,2,'Vegetable Biryani','Main Course',240.00,4.10,1,'https://example.com/vegetable_biryani2.jpg',NULL,1,58),(8,2,'Dal Makhani','Main Course',180.00,4.40,1,'https://example.com/dal_makhani2.jpg',NULL,1,42),(9,2,'Gulab Jamun','Dessert',90.00,4.50,1,'https://example.com/gulab_jamun2.jpg',NULL,1,68),(10,2,'Aloo Paratha','Breakfast',130.00,4.20,1,'https://example.com/aloo_paratha2.jpg',NULL,1,47),(11,3,'Chicken Tikka','Starter',260.00,4.20,0,'https://example.com/chicken_tikka3.jpg',NULL,1,36),(12,3,'Vegetable Biryani','Main Course',230.00,4.60,1,'https://example.com/vegetable_biryani3.jpg',NULL,1,63),(13,3,'Dal Makhani','Main Course',190.00,4.30,1,'https://example.com/dal_makhani3.jpg',NULL,1,72),(14,3,'Gulab Jamun','Dessert',85.00,4.40,1,'https://example.com/gulab_jamun3.jpg',NULL,1,49),(15,3,'Aloo Paratha','Breakfast',110.00,4.10,1,'https://example.com/aloo_paratha3.jpg',NULL,1,41),(16,4,'Chicken Tikka','Starter',280.00,4.10,0,'https://example.com/chicken_tikka4.jpg',NULL,1,44),(17,4,'Vegetable Biryani','Main Course',210.00,4.50,1,'https://example.com/vegetable_biryani4.jpg',NULL,1,59),(18,4,'Dal Makhani','Main Course',200.00,4.20,1,'https://example.com/dal_makhani4.jpg',NULL,1,69),(19,4,'Gulab Jamun','Dessert',90.00,4.30,1,'https://example.com/gulab_jamun4.jpg',NULL,1,46),(20,4,'Aloo Paratha','Breakfast',120.00,4.60,1,'https://example.com/aloo_paratha4.jpg',NULL,1,57),(21,5,'Chicken Tikka','Starter',270.00,4.50,0,'https://example.com/chicken_tikka5.jpg',NULL,1,37),(22,5,'Vegetable Biryani','Main Course',220.00,4.30,1,'https://example.com/vegetable_biryani5.jpg',NULL,1,61),(23,5,'Dal Makhani','Main Course',210.00,4.60,1,'https://example.com/dal_makhani5.jpg',NULL,1,67),(24,5,'Gulab Jamun','Dessert',85.00,4.20,1,'https://example.com/gulab_jamun5.jpg',NULL,1,43),(25,5,'Aloo Paratha','Breakfast',100.00,4.50,1,'https://example.com/aloo_paratha5.jpg',NULL,1,56),(26,6,'Chicken Tikka','Starter',290.00,4.40,0,'https://example.com/chicken_tikka6.jpg',NULL,1,39),(27,6,'Vegetable Biryani','Main Course',230.00,4.10,1,'https://example.com/vegetable_biryani6.jpg',NULL,1,62),(28,6,'Dal Makhani','Main Course',220.00,4.50,1,'https://example.com/dal_makhani6.jpg',NULL,1,66),(29,6,'Gulab Jamun','Dessert',80.00,4.30,1,'https://example.com/gulab_jamun6.jpg',NULL,1,48),(30,6,'Aloo Paratha','Breakfast',110.00,4.20,1,'https://example.com/aloo_paratha6.jpg',NULL,1,54),(31,7,'Chicken Tikka','Starter',300.00,4.30,0,'https://example.com/chicken_tikka7.jpg',NULL,1,35),(32,7,'Vegetable Biryani','Main Course',240.00,4.60,1,'https://example.com/vegetable_biryani7.jpg',NULL,1,64),(33,7,'Dal Makhani','Main Course',210.00,4.20,1,'https://example.com/dal_makhani7.jpg',NULL,1,74),(34,7,'Gulab Jamun','Dessert',95.00,4.50,1,'https://example.com/gulab_jamun7.jpg',NULL,1,51),(35,7,'Aloo Paratha','Breakfast',120.00,4.10,1,'https://example.com/aloo_paratha7.jpg',NULL,1,47),(36,8,'Chicken Tikka','Starter',270.00,4.60,0,'https://example.com/chicken_tikka8.jpg',NULL,1,38),(37,8,'Vegetable Biryani','Main Course',220.00,4.30,1,'https://example.com/vegetable_biryani8.jpg',NULL,1,66),(38,8,'Dal Makhani','Main Course',200.00,4.20,1,'https://example.com/dal_makhani8.jpg',NULL,1,70),(39,8,'Gulab Jamun','Dessert',80.00,4.40,1,'https://example.com/gulab_jamun8.jpg',NULL,1,55),(40,8,'Aloo Paratha','Breakfast',120.00,4.50,1,'https://example.com/aloo_paratha8.jpg',NULL,1,59),(41,9,'Chicken Tikka','Starter',260.00,4.30,0,'https://example.com/chicken_tikka9.jpg',NULL,1,42),(42,9,'Vegetable Biryani','Main Course',230.00,4.50,1,'https://example.com/vegetable_biryani9.jpg',NULL,1,68),(43,9,'Dal Makhani','Main Course',200.00,4.40,1,'https://example.com/dal_makhani9.jpg',NULL,1,57),(44,9,'Gulab Jamun','Dessert',90.00,4.30,1,'https://example.com/gulab_jamun9.jpg',NULL,1,46),(45,9,'Aloo Paratha','Breakfast',130.00,4.20,1,'https://example.com/aloo_paratha9.jpg',NULL,1,52),(46,10,'Chicken Tikka','Starter',270.00,4.40,0,'https://example.com/chicken_tikka10.jpg',NULL,1,41),(47,10,'Vegetable Biryani','Main Course',220.00,4.20,1,'https://example.com/vegetable_biryani10.jpg',NULL,1,67),(48,10,'Dal Makhani','Main Course',200.00,4.50,1,'https://example.com/dal_makhani10.jpg',NULL,1,65),(49,10,'Gulab Jamun','Dessert',80.00,4.60,1,'https://example.com/gulab_jamun10.jpg',NULL,1,50),(50,10,'Aloo Paratha','Breakfast',120.00,4.30,1,'https://example.com/aloo_paratha10.jpg',NULL,1,58);
/*!40000 ALTER TABLE `food_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_items`
--

DROP TABLE IF EXISTS `ordered_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered_items` (
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_quantity` int NOT NULL,
  `item_rating` decimal(3,2) DEFAULT NULL,
  `item_review` varchar(50) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `Ordered_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `Ordered_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `food_item` (`item_id`) ON DELETE CASCADE,
  CONSTRAINT `CHK_item_rating_range` CHECK (((`item_rating` >= 0) and (`item_rating` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_items`
--

LOCK TABLES `ordered_items` WRITE;
/*!40000 ALTER TABLE `ordered_items` DISABLE KEYS */;
INSERT INTO `ordered_items` VALUES (1,1,2,4.50,'Excellent dish','Extra spicy please'),(1,3,1,4.20,'Good',NULL),(2,5,3,4.80,'Absolutely delicious!','No onions please'),(2,8,2,NULL,NULL,NULL),(3,10,1,4.50,'Loved it!',NULL),(3,12,2,4.60,'Great taste','Extra sauce on the side'),(4,4,2,NULL,NULL,'Extra crispy dosa'),(4,7,1,4.70,'Wonderful Thali',NULL),(5,9,1,4.90,'Best dessert ever!',NULL),(5,11,3,4.30,'Nice combination',NULL),(6,2,1,4.40,'Tasty biryani',NULL),(6,6,1,4.10,'Good curry',NULL),(7,13,2,4.50,'Spicy and flavorful',NULL),(7,15,1,4.60,'Delicious',NULL),(8,14,1,4.70,'Authentic taste',NULL);
/*!40000 ALTER TABLE `ordered_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `Payment_id` int NOT NULL,
  `order_status` enum('Delivered','Processing','Pending') NOT NULL,
  `placed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `Payment_id` (`Payment_id`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'Delivered','2024-02-16 17:20:06',50.00),(2,2,2,'Processing','2024-02-16 17:20:06',30.50),(3,3,3,'Pending','2024-02-16 17:20:06',25.75),(4,4,4,'Delivered','2024-02-16 17:20:06',40.00),(5,5,5,'Processing','2024-02-16 17:20:06',55.25),(6,6,6,'Pending','2024-02-16 17:20:06',70.00),(7,7,7,'Delivered','2024-02-16 17:20:06',20.00),(8,8,8,'Processing','2024-02-16 17:20:06',45.50),(9,9,9,'Pending','2024-02-16 17:20:06',35.75),(10,10,10,'Delivered','2024-02-16 17:20:06',60.25),(11,11,11,'Processing','2024-02-16 17:20:06',80.00),(12,12,12,'Pending','2024-02-16 17:20:06',55.50),(13,13,13,'Delivered','2024-02-16 17:20:06',15.75),(14,14,14,'Processing','2024-02-16 17:20:06',30.00),(15,15,15,'Pending','2024-02-16 17:20:06',65.25);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` enum('Successful','Failed','Pending') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Credit Card','Successful',50.00,'2024-02-16 17:20:06'),(2,'Debit Card','Successful',30.50,'2024-02-16 17:20:06'),(3,'UPI','Failed',25.75,'2024-02-16 17:20:06'),(4,'Credit Card','Successful',40.00,'2024-02-16 17:20:06'),(5,'Cash','Pending',55.25,'2024-02-16 17:20:06'),(6,'PayPal','Successful',70.00,'2024-02-16 17:20:06'),(7,'Debit Card','Failed',20.00,'2024-02-16 17:20:06'),(8,'Credit Card','Successful',45.50,'2024-02-16 17:20:06'),(9,'UPI','Successful',35.75,'2024-02-16 17:20:06'),(10,'Cash','Pending',60.25,'2024-02-16 17:20:06'),(11,'PayPal','Failed',80.00,'2024-02-16 17:20:06'),(12,'Credit Card','Successful',55.50,'2024-02-16 17:20:06'),(13,'Debit Card','Successful',15.75,'2024-02-16 17:20:06'),(14,'UPI','Failed',30.00,'2024-02-16 17:20:06'),(15,'Cash','Successful',65.25,'2024-02-16 17:20:06');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `password` varchar(50) NOT NULL,
  `restaurant_id` int NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `contact_details` json DEFAULT NULL,
  `timings` varchar(50) NOT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES ('password1',1,'Taj Mahal Restaurant','Indian','{\"email\": \"tajmahal@example.com\", \"phone\": \"+91 9876543210\"}','10:00 AM - 10:00 PM',4.50),('password2',2,'Spice Garden','Indian','{\"email\": \"spicegarden@example.com\", \"phone\": \"+91 8765432109\"}','11:00 AM - 11:00 PM',4.20),('password3',3,'Punjabi Dhaba','North Indian','{\"email\": \"punjabidhaba@example.com\", \"phone\": \"+91 7654321098\"}','12:00 PM - 10:30 PM',4.00),('password4',4,'Southern Spice','South Indian','{\"email\": \"southernspice@example.com\", \"phone\": \"+91 6543210987\"}','11:30 AM - 11:30 PM',4.40),('password5',5,'The Mughal Feast','Mughlai','{\"email\": \"mughalfeast@example.com\", \"phone\": \"+91 5432109876\"}','12:00 PM - 10:00 PM',4.70),('password6',6,'Coastal Curry House','Coastal','{\"email\": \"coastalcurry@example.com\", \"phone\": \"+91 4321098765\"}','11:00 AM - 10:30 PM',4.30),('password7',7,'Rajasthani Delight','Rajasthani','{\"email\": \"rajasthanidelight@example.com\", \"phone\": \"+91 3210987654\"}','12:30 PM - 11:00 PM',4.60),('password8',8,'Gujarati Thali','Gujarati','{\"email\": \"gujaratithali@example.com\", \"phone\": \"+91 2109876543\"}','11:00 AM - 10:00 PM',4.10),('password9',9,'Bengali Bhavan','Bengali','{\"email\": \"bengalibhavan@example.com\", \"phone\": \"+91 1098765432\"}','12:00 PM - 10:30 PM',4.80),('password10',10,'Hyderabadi Biryani House','Hyderabadi','{\"email\": \"hyderabadibiryani@example.com\", \"phone\": \"+91 0987654321\"}','11:30 AM - 11:00 PM',4.50),('password11',11,'Kerala Cuisine Corner','Kerala','{\"email\": \"keralacuisine@example.com\", \"phone\": \"+91 9876543210\"}','12:00 PM - 10:00 PM',4.20),('password12',12,'Maharashtrian Delicacies','Maharashtrian','{\"email\": \"maharashtriandelicacies@example.com\", \"phone\": \"+91 8765432109\"}','11:00 AM - 10:30 PM',4.70),('password13',13,'Goan Flavors','Goan','{\"email\": \"goanflavors@example.com\", \"phone\": \"+91 7654321098\"}','12:30 PM - 11:00 PM',4.40),('password14',14,'Parsi Paradise','Parsi','{\"email\": \"parsiparadise@example.com\", \"phone\": \"+91 6543210987\"}','11:00 AM - 10:00 PM',4.60),('password15',15,'Assamese Aroma','Assamese','{\"email\": \"assamesearoma@example.com\", \"phone\": \"+91 5432109876\"}','12:00 PM - 10:30 PM',4.30);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_address`
--

DROP TABLE IF EXISTS `restaurant_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_address` (
  `restaurant_id` int NOT NULL,
  `address_id` int NOT NULL,
  KEY `restaurant_id` (`restaurant_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `Restaurant_Address_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE CASCADE,
  CONSTRAINT `Restaurant_Address_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_address`
--

LOCK TABLES `restaurant_address` WRITE;
/*!40000 ALTER TABLE `restaurant_address` DISABLE KEYS */;
INSERT INTO `restaurant_address` VALUES (1,16),(2,17),(3,18),(4,19),(5,20),(6,21),(7,22),(8,23),(9,24),(10,25),(11,26),(12,27),(13,28),(14,29),(15,30);
/*!40000 ALTER TABLE `restaurant_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:07:18
