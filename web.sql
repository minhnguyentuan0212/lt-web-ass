

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web`;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `init` varchar(255) DEFAULT '0',
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `init`, `createAt`, `updateAt`) VALUES
('admin', '$2y$10$16nKrw2Lk8TGRgEF0VYwqevMqG3JnEIkw3kmKqd2KDkvkxoskBiZu', '0', '2023-08-16 19:49:49', '2023-08-16 19:49:49'),
('tandung', '$2y$10$7MwPTLycJRZNwFzHnHrYWO2VkFKfgYLKmQUIWBUMSlghO8hucC6jy', '0', '2023-08-16 19:50:22', '2023-08-16 19:50:22'),
('tminh', '$2y$10$13d5OlDv5R74P6lemUMVJejsNjwq1IbuMqCR0LzlLn0KWKx5MnpWm', '0', '2023-08-16 19:51:23', '2023-08-16 19:51:23'),
('vdung', '$2y$10$ng45/YpuZVsHo5CnlEYazOsnCSpgvkJ552vFBKSwN4yB147/FAH0u', '0', '2023-08-16 19:52:02', '2023-08-16 19:52:02'),
('blvan', '$2y$10$r0MLe8ouBSK8u3Nn8tWwV.JMVM9GdktQS3Tleo5wv5uEJfiD2ALrq', '0', '2023-08-16 19:53:37', '2023-08-16 19:53:37');

-- --------------------------------------------------------


-- --------------------------------------------------------

CREATE TABLE `news` (
  `id` int(11) AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
	PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `news` ( `status`, `date`, `description`, `content`, `title`) VALUES
( 1, '2023-08-16 08:01:04', 'Back in January, rumours that the Nike Air Footscape Woven was making a comeback began to surface. While these leaks were initially taken with a grain of salt, eight months later, they\'ve now been officially confirmed by the American sportswear giant itself – and whether this is good news or bad news is entirely up to you.','The Air Footscape Woven was never really beloved by the sneakerheads of yore. A hybrid between the Air Footscape and the Air Woven (both of which were extremely sought-after by themselves), when Nike decided to combine both of these silhouettes into one back in the mid 00s, the trainer community was torn.\r\nOne half really liked the mash-up aesthetic (happy!), while the other half thought it was a monstrosity that deserved to be cast away (sad!). The model was eventually cancelled because of its lukewarm reception, but over the past couple of years, Swoosh fans have started pining for it largely due to its pretty unusual design\r\nOne of the first pairs to return is the Nike Air Footscape Woven ‘Black.’ Dressed from heel to toe in faux fur, the signature woven design glides across the lateral and medial sidewalls in ‘Smoke Grey.’ An asymmetrical lacing system features along the upper (just like the OG), and all of this sits atop a chunky midsole that\'s infused with Air tech for extra comfort and bounce.\r\nAs well as this, the cult classic that is the ‘Cow Print’ will also be making a comeback, and Air Footscape Woven-inspired detailing will also be hitting big collabs such as the Bephie\'s Beauty Supply x Union LA x Air Jordan 1 and the Sacai x Nike Air Footscape, which was teased during the Japanese label\'s Paris Fashion Week runway earlier this year.','Nike\'s Air Footscape Woven is back, and everyone is either very happy or very sad'),

(1, '2023-08-10 05:05:00', 'Much like in the UK, the TN’s story in France is one of rags to riches, where the shoe quickly became a status symbol for those growing up in the country\'s big cities. As French rappers transcended Paris, the style quickly spread to other parts of the country, including Marseille, and the uniform of choice became a Lacoste tracksuit with a pair of TNs on foot.', ' In fact, at this point, TNs were so embedded within French culture, that they even gave the style its own name - one that remains unique to French sneakerheads to this day.\r\nThough the history of the Nike TN’s development is fairly well documented, it seems that each country seems to have its own interpretation of the sneaker. While Australians likened the style’s sunset-inspired gradient finish to spray paints and graffiti culture, the French had their own ideas. In France, the shoe was nicknamed “The Shark”, thanks to its OG blue colourway, “gill-like” overlays, and aggressive-looking shape.\r\nHere, the Nike TN (or should we say Nike Shark) “Marseille”, pays tribute to the city, decked out in a colour scheme that both nods to its flag and its aquatic nickname. Working on top of a white base, the pair features printed uppers that nod to the city’s Velodrome stadium, while a light blue gradient effect dresses the exoskeleton. Swooshes arrive in a silver-toned hue, while a jewelled badge at the tongue houses the flag itself. Finally, it wouldn’t be a TN without that all-too-familiar yellow branding, so expect this to land on the heel logo as well as the medial side of the treads.', 'The Nike TN Traces Its French Footsteps With This Air Max Plus "Marseille"'),


( 1, '2023-08-10 09:00:00', 'Nike and Supreme are no strangers to collaboration. Each season, the duo teams up for a joint project or two, often choosing to focus their efforts on reimagining or resurrecting some of the Swoosh’s edgier silhouettes, creating bold statements that reflect both brands’ disruptive attitudes.', ' At the same time, the partnership also recognises that sometimes less is more, and since 2020 its also offered up much more minimalist Air Force 1s for those looking for an elevated take on an everyday classic.\r\nHaving restocked multiple times in both “Black” and “White” colourways, the pair also appeared in “Wheat” before rumours of this “Baroque Brown” version surfaced. Now it\'s clear that Supreme is looking to make good on the promise, as the pair has been featured in the label’s latest lookbook. Arriving in an all-over chocolate brown shade, the pair arrives exactly how you’d expect an Air Force 1 to, with smooth leather uppers, perforated toe boxes and its iconic chunky sole. From here, the streetwear imprint gives the pair its stamp of approval, coming in the form of a box logo detail at the lateral heels, and an additional branded pair of laces.\r\nThough the history of the Nike TN’s development is fairly well documented, it seems that each country seems to have its own interpretation of the sneaker. While Australians likened the style’s sunset-inspired gradient finish to spray paints and graffiti culture, the French had their own ideas. In France, the shoe was nicknamed “The Shark”, thanks to its OG blue colourway, “gill-like” overlays, and aggressive-looking shape.\r\n The Supreme x Nike Air Force 1 “Baroque Brown” will be dropping at Supreme sometime over the next few weeks. Until then, check out the label’s latest photo tee.', 'Finally, The Supreme x Nike Air Force 1 "Baroque Brown" Is Dropping This Season'),

( 1, '2023-06-12 10:06:32', 'It\'s amazing how a simple logo resembling the flick of a pen, three-quarters of a boomerang, and winged eyeliner can solidify itself as an Americana staple over the course of 60 years. You know, the iconic Nike swoosh. Carolyn Davidson\'s sleek design has become a symbol of strength, dedication, and, well, mass consumerism.', '\r\nHome to Nike, Jordan, and Converse brands, the success of NIKE, Inc. — founded by Phil Knight and Bill Bowerman — is undeniable. But, like many uber-profitable mainstream apparel corporations, Nike has landed itself in hot water numerous times.\r\nNike\'s behind-the-scenes practices have been repeatedly scrutinized and criticized by the media, as poisonous whisperings of sweatshops and forced labor have haunted the brand for decades.\r\nDespite its commendable mission to "bring inspiration and innovation to every athlete in the world," Nike\'s cloudy reputation may complicate a conscious consumer\'s desire to "just do it" in 2023. So, all in all, is Nike ethical? Let\'s get into it.\r\nWe\'re neither here to judge your athleisure collection nor bash Nike. We are, however, here to shine a light on realities the average consumer may have turned a blind eye to in the past.
Like those of many modern corporations, Nike\'s website is brimming with progressive brags and diversity claims.
"With a global footprint, culture of innovation and team-first mentality, we take action to create a future of continual progress for athletes, sport, and our world," the website reads. Below that, the brand relays that "43 percent of Nike\'s leadership positions are held by women," "78 percent renewable energy in owned or operated facilities, up from 48 percent in FY20," and "$97.7 million [was] invested in NIKE, Inc.\'s fiscal year 2021 to drive positive impact in communities around the world."', '"Just Do It," but at What Cost? Exploring the Complex History of Nike\'s Ethics'),
(1, '2023-04-22 09:06:58', 'The Vomero is one of the lesser-known lines from Nike and the 17th edition is unlikely to garner as much attention as the Nike Pegasus 40 and Nike Invincible 3. However, I’d say it’s the best shoe of that trio, and also better than the Nike Infinity 4 based on my testing of that shoe so far.\r\n', 'Its one of the best cushioned shoes available from any brand and certainly one of the best Nike running shoes. It’s best suited to easy and long runs, but reasonably versatile and a good all-rounder for those who like a cushioned daily trainer.\r\nThe Nike Vomero 17 doesn’t have a launch date yet but is due to be available at the beginning of fall 2023. It will cost $160 in the US, with the UK price to be confirmed.\r\nI have run 30 miles in the Nike Vomero 17, around half of that in a 15-mile long run. Most of my runs in the shoe have been at an easy pace, with one progression run finishing at tempo pace with some strides afterwards. I’ve also tested most of Nike’s current range, including the Nike Invincible 3 and Nike Pegasus 40.\r\nI’m excited any time a Nike shoe has ZoomX foam in the midsole. This is the PEBA-based foam used in Nike’s top racing shoes, the Nike Vaporfly and Alphafly, as well as the Invincible cushioned shoe, and it’s springy and light.\r\nThe Vomero 17 has a layer of ZoomX foam in its midsole with a layer of Cushlon 3.0 beneath. The Cushlon 3.0 foam is a more traditional material that’s still soft, but firmer and less bouncy than ZoomX. In combination the two foams are designed to deliver a comfortable and stable ride that has some added spring from the ZoomX top layer.\r\nWith a stack height that nears 40mm at the heel (the exact height has not been confirmed by Nike), the Vomero is one of the most cushioned shoes in Nike’s line-up, with a similar-sized stack to the Invincible. The shoe has a 10mm drop, and weighs 10.7oz/303g in my UK size 9, which is lighter than the Invincible 3 and Infinity 4 shoes from Nike.', 'Nike Vomero 17 Review'),
( 1, '2023-08-02 09:07:28', 'LONDON/AUCKLAND (Reuters) – The unpredictability of the Women’s World Cup, with the U.S. knocked out early and a first-time champion assured, is forcing major global marketers such as Adidas and Nike to move fast to adapt to shoppers’ quick shifts in preferences and demand.\r\n', 'The tournament in Australia and New Zealand promises to be among the most popular standalone women’s sporting events ever held, with FIFA expecting viewing figures of some two billion, despite time zone differences that make it difficult for many Europeans and Americans to tune in.\r\nAdidas and Nike and retailers like DICK’S Sporting Goods and Fanatics have made significant investments in merchandise. Total sponsorship value grew to at least $349 million, from $342 million in 2019, according to GlobalData, with many brands aligning themselves with themes of women’s empowerment.\r\nAt DICK’s, where 76 clothing and products tied to the 2023 U.S. Women’s National Team were available online on Monday, more than two-thirds are discounted by 25% to 35%, including jerseys, tee-shirts and hoodies, according to a check of its website.\r\nNike’s marketing ahead of the Women’s World Cup featured a football fan telling her father that “the competition is better than ever,” with cameos from a roster of past and current stars, including U.S. players Megan Rapinoe and Alex Morgan, French player Grace Geyoro, and Barcelona forward Asisat Oshoala.\r\nThe retailer also released a collaboration with designer Martine Rose worn by the United States Women’s National Team ahead of their first match. The collection included tailored pieces such as trousers, a suit jacket and a trench coat featuring the Nike swoosh, along with a slip-on mule resembling a football cleat.\r\n', 'As World Cup breaks records, Adidas, Nike navigate bumps in retail demand'),
( 1, '2023-08-02 09:07:28', 'Kobe Bryant‘s line of signature sneakers with Nike returned last March following an inability between the brand and Bryant’s wife, Vanessa, to come to terms on a deal that continued their long-standing relationship in the aftermath of Bryant’s passing in 2020. With the sneakers being in high demand both by fans and among NBA players, the hope was that they’d be able to sort something out and get Kobe’s line of shoes back on the market.\r\n', 'That ended up happening, with both the line coming back and Vanessa announcing that there would be conditions to the deal with Nike that will benefit Mamba and Mambacita Sports Foundation and youth basketball in Southern California. Fast forward to Wednesday and Nike announced that a new Kobe sneaker is on the horizon in a pair of tweets.\r\nWhile details about the shoe are unknown — all we can really tell from the video is that they’ll be a low top, which is not out of the ordinary for the Kobe line — Nike did say that more information will become available via the SNKRS app on Aug. 10. Additionally, the video announcing the news indicates that they’ll be released on Aug. 23, 2023, which would have been Bryant’s 45th birthday.', 'Nike Announced It Will Release A New Sneaker In Its Kobe Line');


CREATE TABLE `comment` (
  `id` int(11) AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `comment` ( `date`, `approved`, `content`, `news_id`, `user_id`, `parent`) VALUES
('2023-06-23 02:09:04', 1, 'Great !!', 2, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-06-23 02:09:55', 1, 'Great! Nice writting', 4, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-07-22 02:11:05', 1, 'That amazing !!', 2, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-07-21 02:11:19', 1, 'I do not think so', 6, 'van.buile@hcmut.edu.vn', NULL),
('2023-05-22 02:11:57', 1, 'That is entirely thinking', 7, 'van.buile@hcmut.edu.vn', NULL),
('2023-06-23 02:12:24', 1, 'Welcome very much!!', 7, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-06-23 02:12:24', 1, 'Welcome very much!!', 7, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL);


--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_note` varchar(1000) DEFAULT NULL,
  `product_subcategory` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL, 
  `color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--
INSERT INTO `product` (`id`, `product_name`, `image_path`, `product_note`, `product_subcategory`, `product_price`, `types`, `color`, `style`) VALUES
(1, 'Nike ACG Aysén', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e84d3ed7-c2e2-4f83-88b9-9c60f2df48ae/acg-aysen-day-pack-2XPr4k.png', 'Sustainable Materials', 'Bag ', 100, 'accessory', 'Red', 'CW2288-111'),
(2, 'Nike NV07', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f60b7f7a-930e-40b3-90f9-b45ded140d1e/nv07-sunglasses-MZFFT1.png', '', 'Sunglasses', 100, 'accessory', 'Yellow', 'CW2288-111'),
(3, 'Nike Club', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/9c39ece2-e859-4821-b7fa-1aac80cd67cf/club-unstructured-jdi-cap-Xr7txF.png', 'Sustainable Materials', 'Unstructured JDI Hat', 28, 'accessory', 'Yellow/White', 'CW2288-111'),
(4, 'Brasilia', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f22d080c-a3f1-4230-8587-7e06c92e4f6f/brasilia-insulated-fuel-pack-Pzq8B9.png', 'Back to School', 'Insulated Fuel Bag', 28, 'accessory', 'Blue/White', 'CW2288-111'),
(5, 'Premier League Academy', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/48a07106-0db9-440c-94b6-0b10ea1e78ef/premier-league-academy-soccer-ball-NJR7L1.png', '', 'Soccer Ball', 37, 'accessory', 'White/Pink', 'CW2288-111'),
(6, 'Jordan Championship 8P', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/888d46d8-7656-4552-9404-5835aa338c3c/jordan-championship-8p-basketball-LQQVHZ.png', '', 'Basketball', 75, 'accessory', 'Blue/White', 'CW2288-111'),
(7, 'Nike Apex', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/5e96eabe-c882-4b94-b875-249416902e4b/apex-tie-dye-bucket-hat-NSq1Kd.png', 'Sustainable Materials', 'Tie Dye Bucket Hat', 36, 'accessory', 'Red', 'CW2288-111'),
(8, 'Nike Dri-FIT Apex', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/d87b7c2b-d31a-41aa-a834-2da304feb32f/dri-fit-apex-camo-print-bucket-hat-Cvk6bB.png', '', 'Camo Print Bucket Hat', 36, 'accessory', 'Pink', 'CW2288-111'),
(9, 'Nike ACG ', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/522a8b76-47b2-454d-aeff-eadfa2732699/acg-wolf-tree-polartec-mens-full-zip-top-DwxmXv.png', 'Sustainable Materials', 'Pullover Hoodie', 135, 'accessory', 'White/White', 'CW2288-111'),
(10, 'Nike ACG \"Cinder Cone\"', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/08b0ea87-9f9c-43c9-beb1-5e96bff90e39/acg-cinder-cone-mens-windshell-pants-D2qL9d.png', 'Sustainable Materials', 'Men\'s Windshell Pants', 0, 'clothing', 'White/White', 'CW2288-111'),
(11, 'Nike ACG \"Oregon Series\" Reissue', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/a89d146a-3838-48bb-8317-ed6906bb60db/acg-oregon-series-reissue-mens-reversible-jacket-kJS6bb.png', 'Sustainable Materials', 'Men\'s Reversible Jacket', 193, 'clothing', 'Red', 'CW2288-111'),
(12, 'Nike Sportswear Premium Essentials', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/01b0748e-2d19-4257-8f4f-51859f929039/sportswear-premium-essentials-mens-tie-dye-max90-t-shirt-WxWgmV.png', '', 'Men\'s Tie-Dye Max90 Tops', 50, 'clothing', 'White/Blue', 'CW2288-111'),
(13, 'Nike ACG \"Snowgrass\"', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9c9e9169-4980-494e-83b5-6c7d1cb43d4a/acg-snowgrass-mens-cargo-shorts-DBGWD1.png', 'Sustainable Materials', 'Men\'s Cargo Shorts', 135, 'clothing', 'White/White', 'CW2288-111'),
(14, 'Nike SB Kearny', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e946f9c7-a13d-4192-8d44-658cdcdf6d8a/sb-kearny-mens-cargo-skate-pants-lfqJ2t.png', '', 'Men\'s Cargo Skate Pants', 100, 'clothing', 'White/Pink', 'CW2288-111'),
(15, 'Nike Sportswear Tech Pack', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/73b1eaf7-03be-4817-8814-9aacbf6d77a8/sportswear-tech-pack-mens-woven-hooded-jacket-RpVXVK.png', 'Just In', 'Men\'s Woven Hooded Jacket', 230, 'clothing', 'Blue', 'CW2288-111'),
(16, 'Nike Sportswear Tech Fleece', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b837f7d1-8450-441c-a22c-b6ab1eb6a130/sportswear-tech-fleece-mens-bomber-jacket-rXx6mF.png', 'Coming Soon', 'Men\'s Bomber Jacket', 155, 'clothing', 'White/Blue', 'CW2288-111'),
(17, 'Nike Everyday Plus', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3aab5292-2ac5-4a74-baa6-c843761bb131/everyday-plus-slouchy-cushioned-crew-socks-1-pair-5vSTZm.png', '', 'Slouchy Cushioned Crew Socks (1 Pair)', 18, 'clothing', 'White/Yello', 'CW2288-111'),
(18, 'Nike Sportswear Phoenix Fleece', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9206da4e-3c99-44b6-8725-f5887a3248a6/sportswear-phoenix-fleece-womens-over-oversized-crewneck-sweatshirt-Wj2Rd6.png', 'Best Seller', 'Women\'s Over-Oversized Crewneck Sweatshirt - Tops', 70, 'clothing', 'White/White', 'CW2288-111'),
(19, 'Nike Sportswear Phoenix Fleece', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5b00cbac-f0f1-49c4-9f03-ac07b65cff87/sportswear-phoenix-fleece-womens-oversized-pullover-hoodie-bs372Q.png', 'Just In', 'Women\'s Oversized Pullover Hoodie', 75, 'clothing', 'Blue/White', 'CW2288-111'),
(20, 'Nike Multi', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b6e77e69-443d-4476-bd11-0f979b7a01d3/multi-big-kids-boys-dri-fit-graphic-training-top-dFRNMp.png', 'Sustainable Materials', 'Big Kids\' (Boys\') Dri-FIT Graphic Training Tops', 30, 'clothing', 'Yello/White', 'CW2288-111'),
(21, 'Nike Sportswear', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/i1-af25497f-2123-4413-be41-52635f219c37/sportswear-t-shirt-zmMkxS.png', 'Essential', 'Men\'s Tops', 35, 'clothing', 'White/Yello', 'CW2288-111'),
(22, 'Nike Dunk Low Retro', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/67fcdb78-eda4-4aaa-885e-de5c585d729b/dunk-low-retro-shoes-bCzchX.png', 'Promo Exclusion', 'Men\'s Shoes', 110, 'shoes', 'White/Pink', 'CW2288-111'),
(23, 'Nike Alpha Menace Elite 3 ', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/59e7edb1-2d19-4148-865a-17cebf8dd118/alpha-menace-elite-3-travis-kelce-mens-football-cleats-6m4HNQ.png', 'Member Access', 'Football Cleats', 200, 'shoes', 'Pink/White', 'CW2288-111'),
(24, 'Nike Free Metcon 5', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/7542fe72-eae6-49a2-8918-28a17aaf2c4c/free-metcon-5-mens-workout-shoes-Vfsbpq.png', 'Best Seller', 'Training Shoes', 120, 'shoes', 'White/Pink', 'CW2288-111');




-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `profile_photo`, `fname`, `lname`, `gender`, `age`, `phone`, `createAt`, `updateAt`, `password`) VALUES
('minh.nguyentuankhmt02@hcmut.edu.vn', '', 'Nguyễn Tuấn', 'Minh', 1, 20, '0705660477', '2023-08-16 20:23:23', '2023-08-16 20:23:23', '$2y$10$3jGkRsV5PvDFEbh1488AguInIHWg5lxp7S49LKIXYIvSxvE0zDpCu'),
('van.buile@hcmut.edu.vn', '', 'Bùi Lê', 'Văn', 1, 20, '0972784829', '2023-08-16 20:35:24', '2023-08-16 20:35:24', '$2y$10$3jGkRsV5PvDFEbh1488AguInIHWg5lxp7S49LKIXYIvSxvE0zDpCu');

--
-- Chỉ mục cho bảng `product`
--
  ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

CREATE TABLE `order` (
  `iduser` VARCHAR(255) NOT NULL ,
  `num` INT NOT NULL ,
  `pid` int(11) NOT NULL , 
  PRIMARY KEY (`iduser`, `pid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Chỉ mục cho các bảng đã đổ
--
CREATE TABLE `review` (
  `review_id` int(11) AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `uid` VARCHAR(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent` (`parent`);


--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`parent`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
