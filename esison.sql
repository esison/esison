-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2015 at 07:54 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esison`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_group`
--

CREATE TABLE IF NOT EXISTS `food_group` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(300) DEFAULT NULL,
  `group_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `food_group`:
--

--
-- Dumping data for table `food_group`
--

INSERT INTO `food_group` (`group_id`, `group_name`, `group_description`) VALUES
(1, 'Fungi', 'So you will not see fungi on the MyPlate Diagram from USDA. Fungi includes mushrooms and yeast that are edible. Only a fraction of mushrooms have any health benefits and only certain kinds of yeast are made for eating. But we need to admit it: eating fungi is awesome. Mushrooms are great in salads and nutritional yeast gives vegan mac n cheese its cheesy flavor. Now you know how awesome eating fungi can be.'),
(2, 'Fruits', 'Fruit has been recognized as a good source of vitamins and minerals, and for their role in preventing vitamin C and vitamin A deficiencies. People who eat fruit as part of an overall healthy diet generally have a reduced risk of chronic diseases.'),
(3, 'Vegetables', 'Vegetables are important part of healthy eating and provide a source of many nutrients, including potassium, fiber, folate (folic acid) and vitamins A, E and C. Eating a diet rich in vegetables may reduce risk for stroke, cancer, heart diseases and type-2 diabetes. One to four cups of vegetables are recommended each day, depending on how many calories you need.'),
(4, 'Grains', 'People who eat whole grains as part of a healthy diet have a reduced risk of some chronic diseases. Grains are important sources of many nutrients, including fiber, B vitamins (thiamin, riboflavin, niacin and folate) and minerals (iron, magnesium and selenium). Dietary fiber from whole grains is important for healthy bowel function and helps reduce constipation.'),
(5, 'Proteins', 'Vegetables are perfectly good sources of protein and good amino acid profiles can be obtained from appropriate combinations. The amino acids and peptides from protein-rich plant-based food get absorbed into the bloodstream and safely delivered at different parts around your body where they are required, either to make new proteins or to be used to release energy. Most arrive first at the liver, where most new protein are made, and where excess protein is broken down ready for burning as a fuel f'),
(6, 'Calcium', 'Among all the benefits of calcium, the most important ones are that it aids in maintaining bone health and dental health, as well as the prevention of colon cancer and the reduction of obesity. Calcium is important for everyone, no matter what your age is. It is required for development as a child and adolescent but also for adults, especially when you reach your golden years. Calcium does not need to be obtained from baby calf growth fluid (milk from a cow).');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE IF NOT EXISTS `food_items` (
  `food_id` int(10) unsigned NOT NULL,
  `food_name` varchar(300) DEFAULT NULL,
  `food_description` varchar(300) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `food_picture_url` varchar(300) DEFAULT NULL,
  `sources` varchar(400) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `food_items`:
--   `group_id`
--       `food_group` -> `group_id`
--

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`food_id`, `food_name`, `food_description`, `group_id`, `food_picture_url`, `sources`) VALUES
(1, 'Nutritional Yeast', 'Nutritional yeast is a microorganism known as Saccharomyces cerevisiae and grown on sugar cane and beet molasses. Once it''s harvested, it undergoes heat treatment to deactivate it; then it''s crumbled or flaked. Despite its distinctly unappetizing name and unappealing appearance, nutritional yeast ma', 1, 'nutritional_yeast.jpg', 'http://nutritiondata.self.com/facts/custom/1323565/2'),
(2, 'Pasta', 'Eaten with a sauce or pesto, you can''t go wrong with pasta! If you can, go for whole grain.', 4, 'pasta.jpg', 'http://nutritiondata.self.com/facts/cereal-grains-and-pasta/5761/2'),
(3, 'Soy Milk', 'Considered the creamiest of the plant-based milks and is available at most grocery stores. Poured on cereal, you won''t even miss the baby calf growth fluid!', 6, 'soy_milk.jpg', 'http://www.livestrong.com/article/268914-soy-milk-nutritional-information/'),
(4, 'Tofu', 'This is another choice granted to use by the great Soybean. You can be so creative with tofu. How about scrambled tofu for breakfast? Plus, tofu comes in different firmness to suit certain recipes. ', 5, 'tofu.jpg', 'http://www.fitday.com/fitness-articles/nutrition/healthy-eating/the-nutrition-of-tofu.html'),
(5, 'Kale', 'Kale is another leafy green that is great in soups and salads. Have you ever tried kale chips? Delicious! Sadly, this super food shrinks when cooked!', 3, 'kale.jpg', 'http://nutritiondata.self.com/facts/vegetables-and-vegetable-products/2461/2'),
(6, 'Beans', 'So many beans and so little time. Cook with rice or in soup, the choice is yours. Protein and tasty goodness in every little one.', 5, 'beans.jpg', 'http://www.fitday.com/fitness-articles/nutrition/healthy-eating/the-nutritional-food-value-of-beans.html'),
(7, 'Oats', 'You can still have your oatmeal in the morning! A great source of fiber. ', 4, 'oats.jpg', 'http://nutritiondata.self.com/facts/cereal-grains-and-pasta/5708/2'),
(8, 'Almond Milk', 'Many people like to make their own homemade almond milk. You can also buy from many grocery stores. Just one of many choices for your vegan cereal.', 6, 'almond_milk.jpg', 'http://nutritiondata.self.com/facts/custom/278488/2'),
(9, 'Strawberries', 'I wish strawberry season was all year because these delicious red morsels are unforgettable. Their color will also make any dessert eye-catching.', 2, 'strawberries.jpg', 'http://nutritiondata.self.com/facts/fruits-and-fruit-juices/2064/2'),
(10, 'Mangos', 'This tropical fruit can be eaten tart or sweetly ripe. Who want a cool smoothie rich in Vitamin C? ', 2, 'mangos.jpg', 'http://www.mango.org/en/About-Mangos/Mango-Nutrition');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_list`
--

CREATE TABLE IF NOT EXISTS `ingredient_list` (
  `recipe_id` int(11) NOT NULL DEFAULT '0',
  `food_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `ingredient_list`:
--   `food_id`
--       `food_items` -> `food_id`
--   `recipe_id`
--       `recipes` -> `recipe_id`
--

--
-- Dumping data for table `ingredient_list`
--

INSERT INTO `ingredient_list` (`recipe_id`, `food_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 3),
(2, 4),
(1, 5),
(1, 6),
(3, 7),
(2, 8),
(3, 8),
(3, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `nutrient_list`
--

CREATE TABLE IF NOT EXISTS `nutrient_list` (
  `food_id` int(10) unsigned NOT NULL DEFAULT '0',
  `nutrition_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `nutrient_list`:
--   `food_id`
--       `food_items` -> `food_id`
--   `nutrition_id`
--       `nutrition_info` -> `nutrition_id`
--

--
-- Dumping data for table `nutrient_list`
--

INSERT INTO `nutrient_list` (`food_id`, `nutrition_id`) VALUES
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(1, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(10, 2),
(1, 3),
(5, 3),
(8, 3),
(9, 3),
(10, 3),
(2, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(1, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(1, 6),
(2, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(4, 7),
(5, 7),
(7, 7),
(8, 7),
(6, 8),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(9, 9),
(10, 9),
(1, 10),
(3, 10),
(5, 10),
(1, 11),
(2, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(1, 12),
(6, 12),
(1, 13),
(2, 13),
(3, 13),
(5, 13),
(6, 13),
(7, 13),
(1, 14),
(2, 14),
(6, 14),
(1, 15),
(6, 15),
(7, 15),
(1, 16),
(5, 16),
(6, 16),
(10, 16),
(5, 17),
(6, 17),
(1, 18),
(2, 18),
(6, 18),
(7, 18),
(9, 18),
(10, 18),
(5, 19),
(9, 19),
(10, 19),
(3, 20),
(5, 21),
(10, 21),
(1, 22),
(6, 22),
(7, 22),
(5, 23),
(10, 23);

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_info`
--

CREATE TABLE IF NOT EXISTS `nutrition_info` (
  `nutrition_id` int(10) unsigned NOT NULL,
  `nutrition_name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `nutrition_info`:
--

--
-- Dumping data for table `nutrition_info`
--

INSERT INTO `nutrition_info` (`nutrition_id`, `nutrition_name`) VALUES
(1, 'Calcium'),
(2, 'Copper'),
(3, 'Dietary Fiber'),
(4, 'Iron'),
(5, 'Magnesium'),
(6, 'Manganese'),
(7, 'Phosphorus'),
(8, 'Polyunsaturated Fat'),
(9, 'Potassium'),
(10, 'Protein'),
(11, 'Vitamin B1/Thiamine'),
(12, 'Vitamin B12/Cobalamins'),
(13, 'Vitamin B2/Riboflavin'),
(14, 'Vitamin B3/Niacin'),
(15, 'Vitamin B5/Pantothenic Acid'),
(16, 'Vitamin B6/Pyridoxine'),
(17, 'Vitamin B7Biotin'),
(18, 'Vitamin B9/Folate'),
(19, 'Vitamin C'),
(20, 'Vitamin D'),
(21, 'Vitamin K'),
(22, 'Zinc'),
(23, 'Vitamin A');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `recipe_id` int(11) NOT NULL,
  `recipe_url` varchar(300) DEFAULT NULL,
  `recipe_picture_url` varchar(300) DEFAULT NULL,
  `recipe_name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `recipes`:
--

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_url`, `recipe_picture_url`, `recipe_name`) VALUES
(1, 'http://bit.ly/1Qn926w', 'http://bit.ly/1YepNoE', 'Kale, Tomato, and White Bean Stew'),
(2, 'http://bit.ly/1Yix5Cu', 'http://bit.ly/1P5TXVi', 'Best Vegan Mac and Cheese in the entire world...seriously'),
(3, 'http://bit.ly/1O3HU5H', 'http://bit.ly/1QKkSpJ', 'Summer Berry Porridge');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_group`
--
ALTER TABLE `food_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`food_id`,`group_id`);

--
-- Indexes for table `ingredient_list`
--
ALTER TABLE `ingredient_list`
  ADD PRIMARY KEY (`recipe_id`,`food_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `nutrient_list`
--
ALTER TABLE `nutrient_list`
  ADD PRIMARY KEY (`food_id`,`nutrition_id`),
  ADD KEY `nutrition_id` (`nutrition_id`);

--
-- Indexes for table `nutrition_info`
--
ALTER TABLE `nutrition_info`
  ADD PRIMARY KEY (`nutrition_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `food_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nutrition_info`
--
ALTER TABLE `nutrition_info`
  MODIFY `nutrition_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ingredient_list`
--
ALTER TABLE `ingredient_list`
  ADD CONSTRAINT `ingredient_list_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ingredient_list_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nutrient_list`
--
ALTER TABLE `nutrient_list`
  ADD CONSTRAINT `nutrient_list_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`food_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nutrient_list_ibfk_2` FOREIGN KEY (`nutrition_id`) REFERENCES `nutrition_info` (`nutrition_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
