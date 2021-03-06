-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2018 at 03:51 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.3-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pjltt`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) NOT NULL,
  `guest` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `packageitenary_id` int(10) NOT NULL,
  `departuredate` datetime NOT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `enddate` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_proofs`
--

CREATE TABLE `booking_proofs` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `picture_path` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', 'test', '2018-04-16 15:11:25', '2018-04-16 15:11:25'),
(2, 'jhondee', 'jhondee@gmail.com', 'huy', '2018-04-19 15:45:37', '2018-04-19 15:45:37'),
(3, 'jhondee', 'jhondee@gmail.com', 'huy', '2018-04-19 15:47:13', '2018-04-19 15:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `login_reports`
--

CREATE TABLE `login_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_reports`
--

INSERT INTO `login_reports` (`id`, `user_id`, `action`, `created_at`, `updated_at`) VALUES
(5, 13, 'Signed Out', '2018-04-19 15:21:58', '2018-04-19 15:21:58'),
(6, 10, 'Signed Out', '2018-04-19 15:32:15', '2018-04-19 15:32:15'),
(7, 13, 'Signed In', '2018-04-19 15:33:43', '2018-04-19 15:33:43'),
(8, 13, 'Signed Out', '2018-04-19 15:36:16', '2018-04-19 15:36:16'),
(9, 10, 'Signed Out', '2018-04-19 15:41:13', '2018-04-19 15:41:13'),
(10, 13, 'Signed In', '2018-04-19 15:41:32', '2018-04-19 15:41:32'),
(11, 13, 'Signed Out', '2018-04-19 15:46:05', '2018-04-19 15:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `user_id`, `code`) VALUES
(1, 5, 'Nd2nKsJROU'),
(2, 11, 'xA904vx6o1'),
(3, 12, 'ZXAj4doNmY'),
(5, 6, 'oTbLoH0cj7'),
(6, 7, 'P1qla6JHCX'),
(7, 8, 'SxTpiSJWBR'),
(9, 10, 'eQ6QbcsZr1'),
(10, 11, 'OTjqPHJqCI'),
(11, 12, 'RxjBmVF7fx'),
(12, 13, 'pwFRR1Vih8');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packageitenary`
--

CREATE TABLE `packageitenary` (
  `id` int(10) NOT NULL,
  `tour_id` int(10) NOT NULL,
  `day` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packageitenary`
--

INSERT INTO `packageitenary` (`id`, `tour_id`, `day`) VALUES
(1, 1, '            <b><h5>DAY 1:</h5></b>\r\n            <b><h5>Arrival</h5></b>\r\n            <p>Arrive in Godofredo Ramos Caticlan Airport / Kalibo International Airport. Meet our transfer representive holding a signboard with your name and proceed for transfer to the hotel. (Consist of Sea and Land Transfers).\r\n              Overnight Stay at the hotel. (No Meal)\r\n            </p>\r\n            <b><h5>DAY 2:</h5></b>\r\n            <ul><b><h5>Free Own Leisure/Included Tour</h5></b>\r\n              <li><b>Boracay Island Hopping Tour</b></li><br>\r\n              <div class="col-md-4 col-sm-4 col-xs-12">\r\n                <ul><b>Inclusions:</b>\r\n                  <li>All Terrain Vehicle</li>\r\n                  <li>Helmet Diving</li>\r\n                  <li> RT Hotel Transfer (Activity Duration 15 mins)</li>\r\n                  \r\n                </div>\r\n                <h5>&nbsp;</h5>\r\n                <h5>&nbsp;</h5>\r\n                <h5>&nbsp;</h5>\r\n                <h5>DAY 3:</h5>\r\n                </b>\r\n                <ul><b><h5>Departure</h5></b>\r\n                  <p>After hotel breakfast, enjoy free time until transfers to Godofredo Ramos Caticlan Airport / Kalibo International Airport.\r\n                    (Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)\r\n                  </p>\r\n                </p></ul>\r\n                <hr attribute1=".." attribute2="..">\r\n                <h4>Hotel Included:</h4>\r\n                <b>2 Nights Boracay:</b>\r\n                <b>Blue Dawn Boracay</b><br><br>\r\n                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ambulong, Manoc-Manoc, Station 3<br><br>\r\n                \r\n                <p> <b>Description:</b> Offering quality accommodations in the sports, restaurants, and beaches district of Boracay Island, Blue Dawn Resort is a popular pick for both business and leisure travelers. From here, guests can enjoy easy access to all that the lively city has to offer. With its convenient location, the hotel offers easy access to the citys must-see destinations. Blue Dawn Resort also offers many facilities to enrich your stay in Boracay Island. A restaurant and room service are just a few of the facilities that set Blue Dawn Resort apart from other hotels in the city. Guests can choose from 21 rooms, all of which exude an atmosphere of total peace and harmony. The hotels host of recreational offerings ensures you have plenty to do during your stay. Discover an engaging blend of professional service and a wide array of features at Blue Dawn Resort.</p>\r\n                <center><br></br>'),
(2, 2, '        <b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival</h5></b>\r\n         <p>Arrive at Davao International Airport. Meet and transfer to hotel for check in. Overnight stay at the hotel. (No Meal)\r\n\r\n \r\n</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/Included Tour</h5></b>\r\n          <li><b>Enjoy whole day free time (Overnight Stay at the hotel.)</b></li>\r\n        \r\n          <li><b>8-Hrs Samal Island Hopping Tour with Picnic Lunch</b></li>\r\n         <p>Pick Up Time: 8:00AM - 9:00AM\r\n          <p>Est. Tour Duration: 8 hours</p></ul>\r\n\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>Private Aircon Transfers</li>\r\n             <li>Applicable Entrance Fees</li>\r\n              <li> Guide Services</li>\r\n               <li>Picnic Lunch</li>\r\n               \r\n</div>\r\n\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n                <ul><b>Highlights of the Tour:</b>\r\n            <li>Lon Wah Buddhist Temple</li>\r\n             <li>Puentespina Orched Garden</li>\r\n              <li>Crocodile Park</li>\r\n               <li>Tribung K\'mindanawan</li>\r\n                <li>Jacks Ridge</li>\r\n                 <li>Durian Candy Factory</li>\r\n                  <li>Museo Dabawenyo</li>\r\n                   <li>Bone Museum</li>\r\n                    <li>Fruit Market</li>\r\n                     <li>Aldevinco Souvenirs</li>\r\n                </ul>\r\n                </div>\r\n               \r\n\r\n<b><h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>DAY 3:</h5>\r\n</b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>After hotel breakfast, enjoy free time until transfers to Davao International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)</p>\r\n\r\n\r\n</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Davao:</b>\r\n            <b>Red Planet Davao</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; J.P. Laurel Ave, Bahada, Davao City, 8000 Davao del Sur.<br><br>\r\n            \r\n           <p> <b>Description:</b> The 155-room Red Planet Davao is situated near several popular shopping hot spots including the popular Abreeza Mall, Victoria Plaza Mall, and Gaisano Mall of Davaoas well as the SMX Convention Centre Davao, corporate offices, and this buzzing citys host of restaurants, shops, bars, and other entertainment options. The stunning destination on the Davao Gulf has an array of excellent tourist attractions including Mount Apo, Philippine Eagle Centre, Jacks Ridge, and Davao Crocodile Park. The 155-room hotel is ideal for business and leisure travellers. The hotel facilities include disabled facilities, three wheelchair accessible rooms, and a car park.</p>\r\n\r\n           <center><br></br>'),
(3, 3, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival/ Half-day PPS City Tour</h5></b>\r\n         <p>Arrive at Puerto Princesa City Airport. Transfer to the hotel. By 1:00pm-1:30pm, you will be pick-up by our Tour Representative for your PPS City Tour.\r\n</p>\r\n<br>\r\n<p><b>Tour Highlights are:</b> Crocodile Farm, Mitra\'s Ranch, Baker\'s Hill, Binatuan Creation. Tours also include a running tour of the following destination: Puerto Princesa City Coliseum, Puerto Princesa Baywalk, Immaculate Conception Cathedral, Plaza Cuartel and Souvenir Shop. </p><br>\r\n<p><b>Est. Tour Duration:</b> (01:30pm- 05:00pm) </p>\r\n<p><b>Note:</b> Half-day City Tour is possible to move on 2nd Day provided it was advice to us 2 days prior the travel date. </p><br>\r\n\r\nOvernight stay at the hotel.\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/ Included Tour</h5></b>\r\n        \r\n          <li><b>Underground River Tour</b></li><br>\r\n           <p>Pick Up Time: 6:00AM - 8:00AM</p>\r\n            <p>Est. Tour Duration: 8 hours</p>\r\n\r\n       <div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>Van Transfer</li>\r\n             <li>Travel Insurance</li>\r\n              <li> Licensed Tour Guide</li>\r\n              <li> Lunch</li>\r\n              <li> Environmental Fee</li>\r\n            \r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n                 <ul><b>Highlights of the Tour:</b>\r\n              <li>Explore the Underground River Tour via Boat Ride</li></ul>\r\n</div>\r\n            \r\n               \r\n</div>\r\n<p><br>\r\n  \r\n</p>\r\n<h5>DAY 3:</h5>\r\n</b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>After hotel breakfast, enjoy free time until transfers to Puerto Princesa International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)\r\n\r\n</p>\r\n\r\n\r\n</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Puerto Princesa:</b>\r\n            <b>Raq Pensionne Bed and Breakfast</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   361 Malvar Street<br><br>\r\n            \r\n           <p> <b>Description:</b> Designed for both business and leisure travel, Raq Pensionne is ideally situated in Puerto Princesa Town Proper; one of the citys most popular locales. From here, guests can enjoy easy access to all that the lively city has to offer. A well-kept environment and its proximity to Puerto princesa city colesium, NCCC Mall, Mendoza Park give to this hotel a special charm. All guest accommodations feature thoughtful amenities to ensure an unparalleled sense of comfort. The hotels massage are ideal places to relax and unwind after a busy day. Enjoy unparalleled services and a truly prestigious address at the Raq Pensionne.</p>\r\n\r\n           <center><br></br>'),
(4, 4, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival/ Half-day Town Tour</h5></b>\r\n         <p>Arrive at Busuanga Airport. Meet and transfer to hotel for check in. Lay down and rest for a while and be ready for your pick-up at around 4:00pm for your Coron Town Tour. Tour Highlights include Reclamation Area/ Lualhati Park, St. Augustine Church, Coron Souvenir Shop, Coron Municipal, Trekking at Mt. Tapyas (724 Steps), Maquinit Hot Spring.\r\n        <p>Est. Tour Duration: 04:00pm- 07:30pm\r\n          <p><b>Note:</b> Half-day Coron Town Tour is possible to move on 2nd Day provided it was advice to us 2 days prior the travel date. \r\nOvernight Stay at the hotel.</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/ Included Tour</h5></b>\r\n         <li><b>Coron Island Tour</b></li>\r\n         <p>Pick Up Time: 8:00AM - 8:30AM\r\n          <p>Est. Tour Duration: 8 hours</p></ul>\r\n\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>Boat  Transfer</li>\r\n             <li>Life Vest</li>\r\n              <li>  All Entrance Fees</li>\r\n               <li> Lunch (Buffet Style) with Complementary fruit</li>\r\n                <li>Snacks and Drinks</li>\r\n                <li>Tour Guide</li></ul>\r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n                <ul><b>Highlights of the Tour:</b>\r\n            <li>Kayangan Lake</li>\r\n             <li>Smith Coral Garden</li>\r\n              <li>Banol Beach</li>\r\n               <li>Twin Lagoon</li>\r\n                <li>CYC Beach</li>\r\n                <li>Balinsasayaw Beach</li></ul>\r\n                <p>Note: Mask and Snorkels not included in the Package</p>\r\n</div></div>\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time until transfers to Busuanga Airport</b></li>\r\n         <p>(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n<h4>Hotel Included: </h4>\r\n   <b>2 Nights Puerto Princesa: </b>\r\n            <b>Abhrys Ridge Inn</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;361 Malvar Street\r\n<p> <b>Description:</b> The modern-arabic inspired building is located at Brgy. 6 Coron Palawan. It?s a 30-minute drive from Busuanga Airport and 5 minutes away to town proper. You will enjoy the serenity of the place since it is a little bit far from the busy streets of the town, and has a breathtaking view of the famous Mt. Tapyas.? It has a restaurant serving delicious meals for in-house guests. It is an ideal choice for those who want a quiet place after a long day of island hopping, close to all key destinations. Operated by the owner, it offers personal touch accommodation at the right price.?</p>\r\n\r\n           <center><br></br>'),
(5, 5, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival/ Half-day Town Tour</h5></b>\r\n         <p>Arrive at Puerto Princesa International Airport. Meet and transfer to hotel for check in. \r\n</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/ Included Tour</h5></b>\r\n          <li><b>Shrine and Hidden Beach Tour</b></li>\r\n         <p>Pick Up Time: 8:00AM - 9:00AM\r\n          <p>Est. Tour Duration: 8 hours</p></ul>\r\n\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>Boat  Transfer</li>\r\n             <li>1 way transfer from Hotel to wharf</li>\r\n              <li> Travel Insurance</li>\r\n               <li>Licensed Tour Guide</li>\r\n                <li>Lunch</li>\r\n                <li>Entrance Fee/Permits/Cottage Fee</li></ul>\r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n                <ul><b>Highlights of the Tour:</b>\r\n            <li>Helicopter Island</li>\r\n             <li>Hidden Beach</li>\r\n              <li>Secret Beach</li>\r\n               <li>Star Beach</li>\r\n                <li>Matinloc Shrine</li>\r\n               \r\n</div></div>\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time until transfers to Puerto Princesa International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)\r\n</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Puerto Princesa:</b>\r\n            <b>St. John Island View Pensionne</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;361 Malvar Street<br>\r\n           <p> <b>Description:</b> Family-friendly abode, ideal for group getaway and family bonding time. Striking crystal clear water, limestone cliff, colorful coral reefs, pure and fine white sands.</p>\r\n\r\n           <center><br></br>'),
(6, 6, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival</h5></b>\r\n         <p>Arrive at Davao International Airport. Meet and transfer to hotel for check in. Overnight stay at the hotel. (No Meal)\r\n \r\n</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>4 Hours Half Day Iloilo City Tour</h5></b>\r\n          <li><b>Breakfast inside the Hotel. By 8:00am you will be pick up by our Tour Representative for your Iloilo City Tour.r</b></li>\r\n          <p>Tour Highlights are: Iloilo City Gallery, Museo Iloilo, the St. Elizabeth Metropolitan Cathedral and National Shrine, Sto. Nino De Arevalo Parish (La Villa Rica de Arevalo Church, Balay na Bato, Sinamay House, Molo Mansion and River Esplanade. Running Tour includes Calle Real or Royal Street, Mulley Loney Wharf, Fort San Pedro, and Plaza Libertad, district of La Paz. \r\nAfter the tour, you will be transferred back to the hotel. \r\nOvernight stay at the hotel.\r\n</p></ul>\r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <li><b>?	After hotel breakfast, enjoy free time until transfers to Iloilo International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)\r\n\r\n</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Iloilo:</b>\r\n            <b>Go Hotels Iloilo</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ledesma cor. Mabini St.<br>\r\n           <p> <b>Description:</b> The seventh branch of the hotel chain, Go Hotels Iloilo is 45 minutes to an hour\'s ride away from the airport. Let the food, the culture and the tourist destinations take your breath away and leave you wanting more. When you return, take a relaxing bath with its super shower after all those activities!</p>\r\n\r\n           <center><br></br>'),
(7, 7, ' <b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival</h5></b>\r\n         <p>Arrive in Mactan-Cebu International Airport. Meet and transfer to hotel for check in. \r\nOvernight stay at the hotel. (No Meal)\r\n</p>\r\n<br>\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Cebu City Tour</h5></b>\r\n<p>Breakfast inside the hotel. After lunch, proceed to Ayala Center Turista Desk for your Cebu City Tour.\r\n(Note: transfer to pick-up point is on guest account). \r\nTour Highlights include Taoist Temple, Heritage of Cebu Monument, Yap-San Diego Ancestral House, Magellan\'s Cross, Basilica Minore Del Sto. Nino.<br>\r\n<b>Running Tour: </b>Colon Street, Fuente Osmena Circle, Capitol Site <br><br>\r\n<b>**Pick-up and drop-off: Ayala Center Turista Desk </b><br>\r\n\r\n<b>**Pick-up Time strictly: 1:00PM - 1:30PM only. </b><br>(Guest may not be able to join the tour if they are not at the picked-up area by 1:30 PM) \r\nOvernight stay at the hotel.\r\n</p>\r\n          <li><b>Skip Trip with the Whale Shark in Oslob, Cebu - Viewing and Snorkeling</b></li><br>\r\n           <p>Pick Up Time: 04:30AM for Cebu City Hotels</p>\r\n           <p>Pick Up Time: 04:00AMfor Mactan City Hotels</p>\r\n            <p>Location: Oslob, South of Cebu(3 hours travel from City)</p>\r\n            <p>Vehicle: 1-2 pax- Car; 3-5 pax- Innova; 6-12 pax- Van</p>\r\n\r\n       <div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>AC Transportation</li>\r\n             <li>Tour Coordinator</li>\r\n              <li> Refreshment upon arrival in Oslob Lunch at Native Restaurant w/1 round of softdrink</li>\r\n              <li> Pick-up and drop-off (Cebu City & Mactan Hotel)</li>\r\n              <li> Whaleshark Encounter Briefing and Permit Whaleshark Viewing Fee Only</li>\r\n              <li> Banca (boat) with Steward</li>\r\n            \r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n                 <ul><b>Highlights of the Tour:</b>\r\n              <li>PWhaleshark Encounter, Sidetrip at Tumalog Falls, Running Tour/Picture Taking: Baluarte, Cartel, Boljoon Church and Carcar Shoe Expo </li>\r\n              <li>Additional Foreign Surcharge:\r\nPhp 765.00/per person- If guest/s are Non-Philippine passport holder. \r\n(It will be deducted by our Agent Representatve upon confirmation of booking)\r\n</li></ul>\r\n</div>\r\n            \r\n               \r\n</div>\r\n<p><br>\r\n  \r\n</p>\r\n<h5>DAY 3:</h5>\r\n</b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>After hotel breakfast, enjoy free time until transfers to Tagbilaran International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)\r\n\r\n</p>\r\n\r\n\r\n</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Cebu:</b>\r\n            <b>City Suites Ultima Residences - Ramos Tower</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  F. Ramos Street<br><br>\r\n            \r\n           <p> <b>Description:</b> While other places force travelers to choose between comfort and accessibility, City Suites Ramos Tower in Cebu City, Philippines stands out by providing them with both plus so much more. Visitors from all over will find our 33-storey condotel more than enough to handle all their basic and even crucial needs to make their business trip or vacation a success. Here, we present guests with an excellent selection of modern and well-furnished rooms and suites where you can rest and relax after hours of working or sightseeing. Also available for your convenience is an array of superior facilities and reliable services that help get you through the day. Moreover, our location along F. Ramos Street, just about 30 minutes from Mactan-Cebu International Airport, makes it easier to reach nearby offices, establishments, and other attractions in the metro. Such advantages will surely lead you to the conclusion that our condotel is the accommodation of choice of discerning individuals when in Cebu City.</p>\r\n\r\n           <center><br></br>'),
(8, 8, '<b><h5>DAY 1:</h5></b>\r\n      <b><h5>Arrival</h5></b>\r\n         <p>Arrive at Laguindingan International Airport. Meet and transfer to hotel for check in. Overnight stay at the hotel. (No Meal) </p>\r\n         <b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>4 hrs Cagayan de Oro City via RELA</h5></b>\r\n          <li><b>Breakfast inside hotel. By 8:00-8:30 am you will be met by our tour representative at the hotel lobby. Experience a unique way to tour Cagayan de Oro, on board Cagayan de Oros very own version</b></li>\r\n          <p>Tour Highlights are: St. Augustine Cathedral, Sendong marker, City museum (in a water tank), Divisoria Plaza, Museum of 3 cultures, Provincial Capitol Grounds, Gen. Douglas MacArthur Marker (for car & van transfers) and pasalubong shopping. (Please note however that this tour is limited to hotels located within downtown area.)\r\nAfter the tour, you will be transferred back to the hotel. \r\nOvernight Stay at the hotel.\r\n</p></ul>\r\n\r\n          <li><b>Iligan Day Tour with Divine Mercy Hills </b></li>\r\n         <p>Pick Up Time: 7:00AM - 7:30AM\r\n          <p>Est. Tour Duration: 11 hours</p></ul>\r\n\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>RT Transfer from CDO to Iligan</li>\r\n             <li>Services of a licensed tour guide</li>\r\n              <li> Travel Insurance</li>\r\n               <li>Licensed Tour Guide</li>\r\n                <li>Lunch</li>\r\n                <li>Set Lunch for a taste of Iligan?s delicacy, Lechon</li>\r\n                <li>1 bottled water</li>\r\n                <li>Entrance fee & Parking fee</li></ul>\r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n            <ul><b>Divine Mercy Hills Shrine</b>\r\n            <li>Ma. Cristina Falls</li>\r\n             <li>Pass by Timoga Spring Pool</li>\r\n              <li>Macapagal-Macaraeg Ancestral House</li>\r\n               <li>Tinago Falls & Pass by Initao Lasang Secret Garden</li></ul></div>\r\n               \r\n               \r\n\r\n<b><h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>&nbsp;</h5><br>\r\n<h5>DAY 3:</h5>\r\n</b>\r\n         <ul><h5>Departure</h5>\r\n       <p> After hotel breakfast, enjoy free time until transfers to Laguindingan International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)</p>\r\n\r\n\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Cagayan:</b>\r\n            <b>Miami Inn</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vamenta Boulevard Carmen<br>\r\n           <p> <b>Description:</b> Miami Inn offer easy access to Cagayan de Oro Citys hottest spots. Leisure and business travelers will find the modest accommodations well-designed for their comfort and convenience. We offer reasonable rates for business functions, with complete facilities ideal for corporate events, sales and board meetings, or even just for travelling families. \r\nThe hotel is conveniently located along Vamenta Boulevard, Carmen, Cagayan de Oro City - the gateway to some of the tourist spots in Mindanao - Camiguin, Surigao, Bukidnon, Iligan and other Philippine Islands. We are practically about 10-15 minutes away from both Cagayan de Oro Airport and Cagayan de Oro Sea Port. About 10-15 minutes to the malls and shopping centers and just a few steps to pharmacies and convenience stores.\r\n</p>\r\n\r\n           <center><br></br>'),
(9, 9, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival</h5></b>\r\n         <p>Arrive at Mactan - Cebu International Airport. Meet and transfer to hotel for check in. \r\n? Overnight stay at the hotel. (No Meal)\r\n</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Canyoneering and Kawasan Waterfalls</h5></b>\r\n         <li><p> By 05:00am you will be pick-up by our Tour Representative going to Badian, Cebu where Canyoneering Adventure would commence. Canyoneering activities includes estimated 3-5 hours trekking, jumping on 20-50 feet canyons, rappeling and swimming at Kawasan Falls. After tour, you will then proceed to your hotel. \r\nEst. Tour Duration: 10 hours \r\nPick-up: 05:00am \r\nImportant Note: Guest/s with the following conditions: Expectant Mother, Heart / Blood Pressure Conditions, Back & Neck Disorders, Motion Sickness / Dizziness will be prohibited to join the tour. \r\nOvernight stay at the hotel.\r\n</p></ul>\r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time until transfers to Mactan - Cebu International Airport</b></li>\r\n         <p>(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>2 Nights Cebu:</b>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Express Inn Cebu</b><br><br>\r\n            M.J. Cuenco Avenue corner Pope John Paul II<br>\r\n           <p> <b>Description:</b> Express Inn Cebu is a newly open budget hotel, this 3 star hotel offers affordable accomodation, a convenient location, and all the comforts the hotel guest expects. Each of the 84 rooms comes equipped with comfortable beds for a great nights sleep, a flatscreen cable tv, air conditioning,soothing hot and cold shower, toiletries kit and a great ambiance. Wi-fi is accessible througout the hotel. The hotel is open 24 hours, with reception and room service manned daily.There is elevator add a free parking at the hotel, . Guests can also have their fill from Sammys Cafe, or have your food served rightin your room.</p>\r\n\r\n           <center><br></br>'),
(10, 10, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival + Half Day Panglao Tour</h5></b>\r\n         <p>Arrive at Tagbilaran Airport. You will be pick-up by our tour operator for your transfer to hotel. \r\nJoin compulsory Half-day Panglao Tour.\r\n</p><br>\r\n\r\n<p><b>Tour highlight</b> includes Hinagdanan Cave, Bohol Bee Farm, Dauis Church, Panglao Watch Tower, Cafe Lawis, Alona Beach and Shell Museum.</p><br>\r\n<p><b>Est. Tour Duration:</b> 4 hours (either am/pm) \r\n  Note:Half-day Panglao Tour is possible to move on 2nd Day provided it was advice to us 2 days prior the travel date. <br><br>\r\n  Overnight stay at the hotel.</p>\r\n<br><br>\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/Included Tour</h5></b>\r\n<p>Enjoy whole day free time (Overnight Stay at the hotel.)</p>\r\n          <li><b>Pamilacan Island</b></li><br>\r\n           <p>Pick Up Time: 05:30AM</p>\r\n            <p>Est. Tour Duration: 10 hours</p>\r\n\r\n       <div class="col-md-4 col-sm-4 col-xs-12">\r\n          <ul><b>Inclusions:</b>\r\n            <li>All Entrance Fees</li>\r\n             <li>Air-conditioned RT Land Transfer from Hotel to Baclayon</li>\r\n              <li> Tour Guide</li>\r\n              <li> RT Pump Boat Transfer w/ spotter</li>\r\n              <li> Dolphin and Whale watching (by chance only)</li>\r\n              <li> Lunch</li>\r\n              <li> Village Tour</li>\r\n              <li>Swimming and Snorkeling(free mask & snorkel)</li></ul>\r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-12">\r\n                 <ul><b>Highlights of the Tour:</b>\r\n              <li>Pamilacan Island</li>\r\n               <li>Dolphin watching is a daily attraction at Pamilacan Island.</li>\r\n                <li>Sperm Whale and Brydes whale season: Mar-June</li></ul>\r\n</div>\r\n            \r\n               \r\n</div>\r\n<br><br>\r\n<h5>DAY 3:</h5>\r\n</b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>After hotel breakfast, enjoy free time until transfers to Tagbilaran International Airport\r\n(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)\r\n\r\n</p>\r\n\r\n\r\n</p></ul>\r\n<hr attribute1=".." attribute2="..">\r\n         <h4>Hotel Included:</h4>\r\n            <b>3 Nights Panglao:</b>\r\n            <b>Coco Mangos Place</b><br><br>\r\n            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Purok 5, Danao<br><br>\r\n            \r\n           <p> <b>Description:</b> If what youre looking for is a conveniently located hotel in Bohol, look no further than Coco Mangos Place. Situated only 5.0 Km from the city center, guests are well located to enjoy the towns attractions and activities. With the citys main attractions such as Alona Beach, The Philippine Tarsier Foundation, Panglao Church within close reach, visitors to the hotel will just love its location. Coco Mangos Place offers impeccable service and all the essential amenities to invigorate travelers. Top features of the hotel include family room, smoking area, shuttle service, laundry service/dry cleaning, bicycle rental. Experience high quality room facilities, including fan, seating area, air conditioning, microwave, separate dining area, to help you recharge after a long day. The hotels outdoor pool, garden are ideal places to relax and unwind after a busy day. Discover an engaging blend of professional service and a wide array of features at Coco Mangos Place.</p>\r\n\r\n           <center><br></br>'),
(11, 11, ' <b><h5>DAY 1:</h5></b>\r\n         <ul><b><h5>Arrival in Siem Reap (No Meals)</h5></b>\r\n         <li><p>Arrive at Siem Reap International Airport. Meet and transfer to\r\nhotel to check in. Enjoy free time on own leisure. Over night at\r\nthe hotel</p></li></ul>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/Included Tour</h5></b>\r\n         <li><b>Itinerary</b></li>\r\n         <p><b>Morning:</b>Visit the South Gate of Angkor Thom - Bayon, Taprohm\r\nTemple and the Grand Temple - Angkor Wat.\r\n<p><b>Afternoon:</b>After lunch, visit the BanteaySrei Temple and\r\nproceed to Pre Rub temple until sunset and visit Souvenir Shop.\r\n<br>\r\n<p><b>Note:</b>During the visit of BanteaySrei & Angkor Wat Temple,\r\nvisitors are required to wear shirts or blouse covering shoulders\r\nand arms and long skirts or trousers covering legs (no miniskirt\r\nor short trousers).</p>\r\n\r\n<p>Timing:0800 hrs - 1700 hrs\r\n          \r\n\r\n<div class="col-md-4 col-sm-4 col-xs-10">\r\n          <ul><b>Inclusions:</b>\r\n            <li>All ground transfer & entrance fees as per itinerary</li>\r\n             <li>Assistance of English Speaking Tour Guide</li>\r\n              <li>A bottle of mineral water per person</li>\r\n               <li>Compulsory Tipping for the guide</li>\r\n                <li>Buffet Lunch</li></ul>\r\n                \r\n</div>\r\n<div class="col-md-4 col-sm-4 col-xs-10">\r\n                <ul><b>Exclusions:</b>\r\n            <li>Peak season surcharge(TBA upon booking)</li>\r\n             <li>Beverage during meal</li>\r\n              <li>Anything that is not specifically mentioned in the INCLUSIONS is on pax account</li>\r\n               <li>Any kind of personal expenses or Optional tours/extra meals ordered by the guest</li>\r\n                </ul>\r\n\r\n\r\n                \r\n</div></div>\r\n  <br>\r\n                <ul><b>Remarks:</b>\r\n            <li>Minimum of 2 paxs to go.</li>\r\n             <li>Rates are valid for Philippines masrket only. Foreign surcharge for other nationality should be checked with us accordingly.</li>\r\n              <li>All tours & transfers are based on seat in coach only.</li>\r\n               \r\n                </ul>\r\n\r\n  <b><h5>DAY 3:</h5></b>\r\n  <ul><b><h5>Departure</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time until transfers to Siem\r\nReap International Airport</b></li>\r\n         <p>(Itinerary is subject to change depending on the local weather &\r\ntraffic condition without prior notice.)</p></ul>\r\n\r\n          <ul><p><b>Hotel Included: </b></p>\r\n            <li><b>2 Nights Siem Reap</b></li>\r\n            <h5>National Road no 6</h5>\r\n           <p> <b>Description:</b> Property Location In the heart of Siem Reap,\r\nKhemara Angkor Hotel & Spa is close to Lucky Mall Super Market\r\nand Angkor Shopping Center. This hotel is within close proximity\r\nof Siem Reap Royal Residence and Angkor Night Market. Rooms\r\nMake yourself at home in one of the 130 air-conditioned rooms\r\nfeaturing minibars. Your bed comes with cotton sheets, down\r\ncomforters, and down blankets. Windows open to city and pool\r\nviews. Complimentary wireless Internet access keeps you\r\nconnected, and cable programming is available for your\r\nentertainment. Private bathrooms with shower/tub\r\ncombinations feature deep soaking bathtubs and handheld\r\nshowerheads. Rec, Spa, Premium Amenities Pamper yourself\r\nwith onsite massages and body treatments. If you\'re looking for\r\nrecreational opportunities, you\'l find a health club, an outdoor\r\npool, and a sauna. Additional features at this Art Deco hotel\r\ninclude complimentary wireless Internet access, concierge\r\nservices, and babysitting/childcare (surcharge). Guests can catch\r\na ride on the shuttle (surcharge), which operates within 1 km.\r\nDining Grab a bite to eat at the hotel\'s restaurant, which\r\nfeatures a bar and a garden view. You can also stay in and take\r\nadvantage of 24-hour room service. A complimentary evening\r\nsocial is served for your convenience. Relax with your favorite\r\ndrink at a bar/lounge or a poolside bar. A complimentary buffet\r\nbreakfast is served daily. Business, Other Amenities Featured\r\namenities include a 24-hour business center, limo/town car\r\nservice, and a computer station. Planning an event in Siem\r\nReap? This hotel has 2799 square feet (260 square meters) of\r\nspace consisting of conference/meeting rooms, a ballroom, and\r\nbanquet facilities. A roundtrip airport shuttle is provided for a\r\nsurcharge (available on request), and free parking is available\r\nonsite.</p>\r\n\r\n          \r\n\r\n           <center><br>'),
(12, 12, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival in Bangkok (No Meals)</h5></b>\r\n         <p>Arrive at Suvarnabhumi International Airport. Meet and transfer\r\nto hotel to check in. Enjoy free time on own leisure.</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/ Included Tour</h5></b>\r\n         <li><b>HALF DAY BANGKOK CITY TOUR</b></li>\r\n         <p>After hotel breakfast, proceed to Bangkok Half day\r\ncomplimentary city tour (08:30 hrs - 12:30 hrs) to visit the\r\nFamous Erawan Shrine (4 Face Buddha), Golden Buddha Temple\r\n(Wat Traimitr) via China Town, Sightseeing (on board bus) to\r\nRatchadamnoen Road, HM King Rama V got the idea from\r\nQueen\'s walk, in Queen Park, London, England. Both sides along\r\nthe road Kings had placed the governmental building and\r\nhistorical building such as The Democracy Monument,\r\nAnantasmakom Hall (The Marble Throne Hall) and the equestrian\r\nstatue of King Chulalongkorn (Rama V). The tour continue to visit\r\nlocal product shop at Gems Gallery & Show DC shopping\r\ncomplex. Tour ends with drop off at shopping mall OR back to\r\nhotel.</p>\r\n<p><b>(Please be at the hotel lobby 10 mins. before the pick up time\r\nafter which the company has the right to run No show.)</b></p></ul>\r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time until transfers to\r\nSuvarnabhumi International Airport</b></li>\r\n         <p>(Itinerary is subject to change depending on the local weather & traffic condition without prior notice.)</p></ul>\r\n\r\n          <ul><p><b>Hotel Included: </b></p>\r\n            <li><b>2 Nights Bangkok</b></li>\r\n            <b>Pratunam Pavilion</b>\r\n           <p> <b>Description:</b> Property Location With a stay at Pratunam Pavilion\r\nin Bangkok (Pratunam), you\'ll be minutes from Suan Pakkard\r\nPalace and Pratunam Market. This hotel is within close proximity\r\nof Ganesha Shrine and Trimurti Shrine. Rooms Make yourself at\r\nhome in one of the 144 air-conditioned rooms featuring\r\nkitchenettes with refrigerators and microwaves. Rooms have\r\nprivate balconies where you can take in city views. Plasma\r\ntelevisions with cable programming provide entertainment,\r\nwhile complimentary wireless Internet access keeps you\r\nconnected. Conveniences include phones, as well as desks and\r\ncomplimentary weekday newspapers. Rec, Spa, Premium\r\nAmenities Pamper yourself with onsite massages or enjoy\r\nrecreation amenities such as a sauna. Additional amenities at\r\nthis Art Deco hotel include complimentary wireless Internet\r\naccess, a pool table, and a creche (nursery). Getting to nearby\r\nattractions is a breeze with the complimentary area shuttle that\r\noperates within 1 km. Dining Satisfy your appetite at the hotel\'s\r\nrestaurant, which serves breakfast and lunch. Dining is also\r\navailable at a coffee shop/caf, and 24-hour room service is\r\nprovided. Business, Other Amenities Featured amenities include\r\ncomplimentary high-speed (wired) Internet access, a 24-hour\r\nbusiness center, and a computer station.</p>\r\n\r\n           <center><br></br>'),
(13, 13, ' <b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival in Hong Kong (No Meals)</h5></b>\r\n         <p>Arrive in Hong Kong International Airport. Proceed to the\r\n          designated meeting area and transfer to hotel to check in. Enjoy\r\n          free time on own leisure. Over night at the hotel.</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Hong Kong Disney Land Tour</h5></b>\r\n         <p>After outside breakfast, start <b>compulsory</b> half day Hong Kong\r\n          city tour to visit Harbourfront promenade, Jewelry Factory,\r\n          Souvenir outlet, Aberdeen Fishing Village (boat ride is optional)\r\n          and pass by the mid level of Victoria Peak. Afterwards, proceed\r\n          to Disneyland to enjoy free time on own leisure and stay until\r\n          fireworks.</p></ul>\r\n\r\n            <p><b>Note:</b></p>\r\n            <li>The guests must join the city tour to be able to join the FREE\r\n              Disneyland tour. Whenever pax did not join the compulsory city\r\n              tour, Disneyland tour will be automatically forfeited and no\r\n              refund will be made.</li>\r\n            <li>Customary tipping may be collected after the city tour.</li><br>\r\n            \r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>After outside breakfast, enjoy free time until check out from\r\n          hotel and transfer to Hong Kong International Airport.\r\n          (Itinerary is subject to change depending on the local weather &\r\n          traffic condition without prior notice.)</p></ul>\r\n\r\n          \r\n\r\n          <ul><p><b>Hotel Included: </b></p>\r\n            <li><b>2 Nights Hong Kong</b></li>\r\n            <b>Rambler Garden</b>\r\n           <p> <b>Description:</b> This hotel is fast becoming known for its luxurious\r\n            rooms with an affordable price tag. Although located quite a\r\n            distance from central Hong Kong, traveling anywhere from the\r\n            Rambler Garden is easy as the hotel offers free shuttle bus\r\n            services to the MTR Kwai Fong station. A minibus terminal is also\r\n            right next to the hotel where you can hop on the minibus to a\r\n            nearby shopping center in less than 10 minutes and three HK\r\n            dollars. For the young and young at heart, Hong Kong Disneyland\r\n            is located only a 20-minute drive from the property.\r\nReservations at Rambler Garden Hotel are simple via our secure\r\nonline booking form. Just enter your desired dates and submit.</p>\r\n\r\n           <center><br></br>'),
(14, 14, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival in Hong Kong (No Meals)</h5></b>\r\n         <p>Arrive in Hong Kong International Airport. Proceed to the\r\n          designated meeting area and transfer to hotel to check in. Enjoy\r\n          free time on own leisure. Over night at the hotel</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/ Included Tour</h5></b>\r\n         <p>After outside breakfast, join the complimentary half day Hong\r\n            Kong city tour to visit Harbourfront promenade, Jewelry Factory,\r\n            Souvenir outlet, Aberdeen Fishing Village (boat ride is optional)\r\n            and pass by the mid level of Victoria Peak.</p></ul>\r\n\r\n            <p><b>Note:</b></p>\r\n            <li>City tour ends at TST area for shopping moment. Guests are\r\n            required to go back to their hotel on their own arrangement.</li>\r\n            <li>The guest must join the city tour to be able to get the FREE\r\n            Madame Tussauds ticket. Whenever pax did not join the city\r\n            tour, tickets will be automatically forfeited.</li>\r\n            <li>Customary tipping may be collected after the city tour.</li>\r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>After hotel breakfast, enjoy free time until transfers to Hong\r\n          Kong International Airport\r\n          (Itinerary is subject to change depending on the local weather &amp;\r\n          traffic condition without prior notice.)</p></ul>\r\n\r\n          \r\n\r\n          <ul><p><b>Hotel Included: </b></p>\r\n            <li><b>2 Nights Hong Kong</b></li>\r\n            <b>Rambler Garden</b>\r\n           <p> <b>Description:</b> This hotel is fast becoming known for its luxurious\r\n            rooms with an affordable price tag. Although located quite a\r\n            distance from central Hong Kong, traveling anywhere from the\r\n            Rambler Garden is easy as the hotel offers free shuttle bus\r\n            services to the MTR Kwai Fong station. A minibus terminal is also\r\n          right next to the hotel where you can hop on the minibus to a\r\n          nearby shopping center in less than 10 minutes and three HK\r\n          dollars. For the young and young at heart, Hong Kong Disneyland\r\n          is located only a 20-minute drive from the property.\r\n          Reservations at Rambler Garden Hotel are simple via our secure\r\n          online booking form. Just enter your desired dates and submit.</p>\r\n\r\n           <center><br></br>'),
(15, 15, '<b><h5>DAY 1:</h5></b>\r\n         <h5><p>Arrive at Phnom Penh International Airport. Meet and transfer\r\n        to hotel to check in. Enjoy free time on own leisure. Over night\r\n        at the hotel.</p>\r\n\r\n<h5><b>DAY 2:</b></h5>\r\n         <ul><h5><b>Free Own Leisure/Included Tour</b></h5>\r\n         <li>Enjoy hotel breakfast and free time on own leisure or join\r\n          optional tour.</li>\r\n\r\n        <li>Itinerary: Visit Wat Phnom, Daun Penh Status, Royal Palace and\r\n        Silver Pagoda. After lunch, visit the "Khmer Rouge" prison\r\n        ToulSleng museum which is displays items of the inhuman acts\r\n        of Pol Pot, then continue visit Killing Field, Russian Market then\r\n        drop to the nearest Souvenir shop & factory outlet shop.</li>\r\n</ul>\r\n        <p>Timing: 0800 hrs - 1700 hrs </p>\r\n\r\n        <ul><p>Inclusions:</p>\r\n        <li>All ground transfer & entrance fees as per itinerary</li>\r\n        <li>Assistance of English Speaking Tour Guide</li>\r\n        <li>A bottle of mineral water per person</li>\r\n        <li>Compulsory tipping for the guide</li>\r\n        <li>Buffet Lunch</li></ul>\r\n\r\n        <ul><p>Exclusions:</p>\r\n        <li>Peak season surcharge (TBA upon booking)</li>\r\n        <li>Beverage during meal</li>\r\n        <li>Anything that is not specifically mentioned in the INCLUSIONS\r\n        is on pax account</li>\r\n        <li>Any kind of personal expenses or Optional tours/extra meals\r\n        ordered by the guests</li></ul>\r\n\r\n        <ul>Remarks:</p>\r\n        <li>Minimum of 2 paxs to go</li>\r\n        <li>Rates are valid for Philippine market only. Foreign surcharge for\r\n        other nationality should be checked with us accordingly</li>\r\n        <li>All tours & transfers are based on seat in coach only</li></ul>\r\n            \r\n            \r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <p>Enjoy hotel breakfast and free time on own leisure until check\r\n        out from hotel and transfer to Phnom Penh International\r\n        Airport. (Itinerary is subject to change depending on the local\r\n        weather & traffic condition without prior notice.)</p></ul>\r\n\r\n          \r\n\r\n          <ul><p><b>Hotel Included: </b></p>\r\n<br><br>\r\n            <li><b>3 Nights Phnom Penh</b></li><br><br>\r\n<p><b>Salita Hotel</b></p><br>\r\n           <p><b>Description:</b> Property Location With a stay at Salita Hotel, you\'ll\r\n            be centrally located in Phnom Penh, convenient to Olympic\r\n            Stadium and Royal Palace. This hotel is within close proximity of\r\n            Independence Monument and Tuol Tom Pong Market. Rooms\r\n            Make yourself at home in one of the 62 air-conditioned rooms\r\n            featuring minibars. Your pillowtop bed comes with cotton\r\n            sheets. Windows open for fresh air and city views.\r\n            Complimentary wireless Internet access keeps you connected,\r\n            and cable programming is available for your entertainment.\r\n            Private bathrooms with shower/tub combinations feature deep soaking bathtubs \r\n            and designer toiletries. Rec, Spa, Premium\r\n            Amenities Pamper yourself with onsite massages or make use of\r\n            the other amenities, which include complimentary wireless\r\n            Internet access and concierge services. This Art Deco hotel also\r\n            features a television in the lobby and tour/ticket assistance.\r\n            Dining Satisfy your appetite at the hotel\'s restaurant, which\r\n            serves breakfast, lunch, and dinner. Dining is also available at a\r\n            coffee shop/caf, and room service (during limited hours) is\r\n            provided. Business, Other Amenities Featured amenities include\r\n            a 24-hour business center, limo/town car service, and currency\r\n            exchange. A roundtrip airport shuttle is provided for a surcharge\r\n              (available on request), and free parking is available onsite.</p>\r\n\r\n           <center><br></br>'),
(16, 16, '<p>TBA</p>'),
(17, 17, '<b><h5>DAY 1:</h5></b>\r\n         <b><h5>Arrival in Hanoi (No Meals)</h5></b>\r\n         <p>Arrive at Noi Bai Airport, meet and greet by the local\r\nrepresentative and transfer to hotel to check in. Enjoy free time\r\non own leisure. Overnight at the hotel.</p>\r\n\r\n<b><h5>DAY 2:</h5></b>\r\n         <ul><b><h5>Free Own Leisure/Optional Tour</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time on own leisure or join\r\noptional tour.</b></li>\r\n         </ul>\r\n         \r\n\r\n<b><h5>DAY 3:</h5></b>\r\n         <ul><b><h5>Departure</h5></b>\r\n         <li><b>After hotel breakfast, enjoy free time on own leisure until\r\ntransfer to Noi Bai Airport for flight back to Manila.</b></li>\r\n         <p>(Itinerary is subject to change depending on the local weather &\r\ntraffic condition without prior notice.)</p></ul>\r\n\r\n          <ul><p><b>Hotel Included: </b></p><br>\r\n            <li><b>2 Nights Hanoi</b></li><br>\r\n            <b>Church Boutique Hotel - 49 Lan Ong</b>\r\n           <p> <b>Description:</b>Property Location Maison D\'Hanoi Boutique Hotel is\r\nin the heart of Hanoi, walking distance from Bach Ma Temple\r\nand Dong Xuan Market. This hotel is within close proximity of\r\nTemple of Literature. Rooms Treat yourself to a stay in one of\r\nthe 42 individually decorated guestrooms, featuring fireplaces\r\nand flat-screen televisions. Your pillowtop bed comes with\r\ncotton sheets. Windows open to city and courtyard views. wired\r\nand wireless Internet access is complimentary, while iPod\r\ndocking stations and satellite programming provide\r\nentertainment. Rec, Spa, Premium Amenities Make use of\r\nconvenient amenities such as complimentary wireless Internet\r\n\r\naccess, concierge services, and babysitting/childcare (surcharge).\r\nThis Art Nouveau hotel also features wedding services and\r\ntour/ticket assistance. Getting to nearby attractions is a breeze\r\nwith the area shuttle (surcharge). Dining Satisfy your appetite at\r\nthe hotel\'s restaurant, which serves breakfast, lunch, and dinner,\r\nor stay in and take advantage of room service (during limited\r\nhours). Quench your thirst with your favorite drink at a\r\nbar/lounge. Business, Other Amenities Featured amenities\r\ninclude complimentary high-speed (wired) Internet access, a\r\nbusiness center, and an Internet point. Planning an event in\r\nHanoi? This hotel has 484 square feet (45 square meters) of\r\nspace consisting of a conference center and a\r\nmeeting/conference room. A roundtrip airport shuttle is\r\nprovided for a surcharge (available 24 hours), and parking\r\n(subject to charges) is available onsite.</p>\r\n\r\n           <center><br></br>');

-- --------------------------------------------------------

--
-- Table structure for table `tourtbl`
--

CREATE TABLE `tourtbl` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `night` int(10) NOT NULL,
  `day` int(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `place` varchar(255) NOT NULL,
  `tourtype` int(1) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `airport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourtbl`
--

INSERT INTO `tourtbl` (`id`, `title`, `price`, `night`, `day`, `image`, `place`, `tourtype`, `description`, `airport`) VALUES
(1, 'Boracay Tour', 6000, 2, 3, 'boracay.jpg', 'Aklan, Philippines', 1, 'B-O-R-A-C-A-Y with it\'s sugary and powdery white sand beaches is still the reigning top destination in the Philippines.It is a place where you can relax, unwind and let go. With its abundance of natural attraction and leisure activities to choose from, Boracay Island sure is fit to all age group of tourist.', 'Godofredo Ramos Caticlan Airport '),
(2, 'Samal Island', 16500, 3, 2, 'samal.jpg', 'Davao, Philippines', 1, 'Davao is the main trade, commerce and industry hub of Mindanao. Though it is located in Mindanao, Davao City is also dubbed as one of the safest cities in the Philippines. It is also known as the Durian Capital of the Philippines. Mount Apo in Davao is the highest mountain in the Philippines and as such home to one of the largest eagle, the Philippine Eagle and it is also home to endemic floras and faunas.', 'Davao International Airport'),
(3, 'Underground River Tour', 4500, 3, 2, 'underground.jpg', 'Puerto Princesa, Palawan', 1, 'Puerto Princesa City is the center of Palawan and best known for the internationally recognized Puerto Princesa Subterranean River (or Underground River), a UNESCO World Heritage Site and one of the New 7 Wonders of Nature. Not only that, the city is critically acclaimed for its environmental excellence.', 'Puerto Princesa City Airport'),
(4, 'Coron ,Island Tour', 4900, 3, 2, 'coron.jpg', 'Palawan, Philippines', 1, 'Coron is part of the Calamianes Group of Islands and located on the northern tip of Palawan. It has seven lakes, famous of which is the nationally-acclaimed cleanest lake in the Philippines, the Kayangan Lake. It also has a number of islands with white beaches and clear blue waters perfect for snorkeling, deep sea fishing, and shipwreck diving.', 'Busuanga Airport'),
(5, 'El Nido Shrine and Hidden Beach', 4700, 3, 2, 'elnido.jpg', 'El Nido, Palawan', 1, 'El Nido Palawan is located in the northeast mainland of Puerto Princesa City which is a 5-6 hours drive from the town proper. The travel is worth the long drive as the island is equipped with natural splendor and ecosystem that awaits your arrival', 'Puerto Princesa International Airport'),
(6, 'Glimpse of Heritage', 4000, 3, 2, 'glimpse.jpg', 'Iloilo City, Philippines', 1, 'Discover Iloilo with its rich cultural heritage and abundance of natural landmarks. The city in its glory days was dubbed as "Queen City of the South". The preserved stately mansions and century old churches are the testament of its colorful and splendid past.\r\n\r\n', 'Davao International Airport'),
(7, 'Skip Trip with Whale Shark', 12100, 2, 3, 'whaleshark.jpg', 'Cebu, Philippines', 1, 'Cebu is one of the most developed provinces in the Philippines, with Cebu City as the main center of commerce, trade, education and industry in the Visayas. The island offers lots of natural, cultural attractions and activities for a tourist/s to choose from. Be charmed at their white sand beaches, caves, old Churches, Temples and at the bustling personality and camaraderie of the locals (Cebuano).\r\n\r\nThis is an all-in Land Arrangement with Cebu City Tour already included in the package. Tour Arrangement is in SIC(Seat-in-Coach) and you will be joining with other group/tourist. We highly advise you to arrive at least 10mins early on the scheduled time on the designated Pick-up and Drop-off point to be able to commence the tour on time. ', 'Mactan-Cebu International Airport'),
(8, 'Iligan Day Tour with Divine Mercy Hills Shrine', 9300, 2, 3, 'iligan.jpg', 'Iligan, Philippines', 1, 'Cagayan de Oro may very well be the happiest place in the country. The City of Golden Friendship,? as it is sometimes called, is home to, especially friendly and warm Filipinos. Their ready smiles are a fitting welcome, with Cagayan de Oro?s accessible location also making it the Gateway to Northern Mindanao.? \r\nCagayan de Oro has something for the eco-tourist as well as the sports lover. So, grab your backpacks and head to where nature?s beauty will thrill you. This happy place could very well leave you with a smile on your face.', 'Laguindingan International Airport'),
(9, 'Canyoneering + Kawasan Waterfalls', 7500, 2, 3, 'waterfall.jpg', 'Cebu City, Philippines', 1, 'Say YES to fun and jam-packed adventure as you avail our Canyoneering Tours. \r\nCanyoneering is one of the sought-after outdoor activities today that involves going down creeks or streams within a canyon through various ways including walking, jumping, swimming, climbing and abseiling. Adventure seekers will surely have fun as they walk through nature trails, jump waterfalls, swim a river and climb boulders. Go for this thrilling activity and enjoy a great experience at Badian Canyoneering Package plus a dip in the sky blue colored, Kawasan Falls!', 'Mactan - Cebu International Airport'),
(10, 'Pamilacan Island', 7800, 2, 3, 'pamilacan.jpg', 'Bohol, Philippines', 1, 'Bohol is located in the heart of Central Visayas with a narrow strait that separates it to the equally famous city of Cebu. Bohol is famous for its Chocolate Hills(a group of unusually shaped of hills covered with grass that turns brown like chocolate), Philippine tarsier(one of the smallest primates and indigenous in the island) and white sand beaches (in Anda and Panglao Area). Also for the adventurous at heart, you could avail their other activities like ziplining, caving, kayaking and etc.', 'Tagbilaran Airport'),
(11, 'Cambodia Tour', 10000, 2, 3, 'bangkok.jpg', 'Cambodia', 2, 'Siem Reap province is located in northwest Cambodia. It is the major\r\n          tourist hub in Cambodia, as it is the closest city to the world famous temples of Angkor (the Angkor temple complex is north of the city). \r\nThe provincial capital is also called Siem Reap and is located in the\r\nSouth of the province on the shores of the Tonle Sap Lake, the\r\ngreatest sweet water reserve in whole Southeast Asia.\r\n\r\nAt the turn of the millennium Siem Reap was a Cambodian provincial\r\ntown with few facilities, minor surfaced roads and little in the way of\r\nnightlife. Tourism industry catered largely to hardy backpackers willing\r\nto brave the tortuous road from the Thai border on the tailgate of a\r\nlocal pick-up truck. There were a couple of large hotels and a handful\r\nof budget guesthouses. Tuk-tuks and taxis were non-existent and the\r\ntrusty motodup was the chosen means of touring the temples of\r\nAngkor.', 'Siem Reap International Airport'),
(12, 'Bangkok Thailand', 3500, 2, 3, 'cambodia.jpg', 'Thailand', 2, 'Bangkok, also known as the City of Angels and Venice of the East, will\r\nhit you like a ton of bricks. Hot, polluted, and chaotic, it thrills with\r\nenergy, and the sightseeing, shopping, and eating possibilities are so\r\nvast that you\'ll have little time to rest. When you do find a moment,\r\nthough, you can pamper yourself at spas, skyline-view bars, luxurious\r\nhotels, and excellent restaurants.', 'Suvarnabhumi International Airport'),
(13, 'Hongkong Disney Land', 10000, 2, 3, 'hongkong2.jpg', 'Hongkong', 2, 'Enter a magical kingdom inspired by fairy-tale dreams and explore 7\r\n        lands--Adventureland, Grizzly Gulch, Mystic Point, Toy Story Land,\r\n        Fantasyland, Tomorrowland and Main Street, U.S.A.-- filled with\r\n        beauty, excitement and Disney Characters.', 'Hong Kong International Airport'),
(14, 'Hongkong Tour', 4000, 2, 3, 'hongkong.jpg', 'Hongkong', 2, 'Whether you like to get lost and found all by yourself or prefer to let\r\n          an expert show you the way, there are a myriad of tours and trails that\r\n          lead you right into the heart of Asia\'s world city and its fascinating\r\n          culture.', 'Hong Kong International Airport'),
(15, 'Phnom Penh Cambodia', 9000, 2, 3, 'cambodia2.jpg', 'Cambodia', 2, 'Phnom Penh is the vibrant bustling capital of Cambodia. Situated at\r\n        the confluence of three rivers, the mighty Mekong, the Bassac and the\r\n        great Tonle Sap, what was once considered the \'Gem\' of Indochina.\r\n        Phnom Penh is a veritable oasis compared to the modernity of other\r\n        Asian capitals. A mixture of Asian exotica, the famous Cambodian\r\n        hospitality awaits the visitors to the capital of the Kingdom of\r\n        Cambodia.', 'Phnom Penh International Airport'),
(16, 'Universal studios Singaport', 12100, 2, 3, 'singapore2.jpg', 'Singapore', 2, 'Whether it\'s riding a roller coaster or skydiving indoors, there\'s no\r\nshortage of fun activities to experience in Singapore.', 'Changi International Airport'),
(17, 'Vibrant Hanoi Vietnam tour', 5500, 2, 3, 'vietnam.jpg', 'Vietnam', 2, 'Hanoi is actually over 1000 years old so the wealth of history here is\r\nmind boggling: temples, ancient citadels, unique theatre and stunning\r\nwilderness just outside the city all offer fun-filled days in Vietnam\'s\r\ncapital. Make sure to visit as many of these attractions in Hanoi as\r\npossible because they all offer entertainment, beauty and education at\r\ndifferent turns.', 'Noi Bai Airport'),
(18, 'Hoi Chi Minh tour, Vietnam Tour', 5000, 2, 3, 'vietnam2.jpg', 'Vietnam', 2, 'A visit to Ho Chi Minh City is an encounter with exotic food, French\r\ncolonial architecture and memories of war.', 'Tan Son Nhat Airport');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `position` int(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_conf` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `email`, `contact_no`, `birth_date`, `address`, `position`, `password`, `remember_token`, `email_conf`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'dasdasdasdasd@gmail.com', NULL, NULL, NULL, 0, '$2y$10$WdaEQXON0iw/kW4tV.AmIeRxqiz7.Tx67emOEYSAWk2WL3V9Ybfc2', 'v1RdU1aXI8vQEAQGDoB9JRVgbL8HvJoSW1uUkiFSsbAOeHRd8swNSxE85HGe', 0, '2018-04-07 07:41:55', '2018-04-07 07:41:55'),
(2, 'Melissa', 'Aguirre', 'aguirre@gmail.com', NULL, NULL, NULL, 1, '$2y$10$vlqJaodgHIj/dgNd2vmzzuoQQ0y3e.8ML3RpsJuyM.lFwFPxOJovW', 'hVDD9V4kJrQr3ORGc5hLTafyioXUtneNSaARyaLRyzzZinaYwWtQ2s441PNf', 1, '2018-04-07 08:33:11', '2018-04-07 08:33:11'),
(3, 'asdad', 'asdasdsadsada', 'sample@gmail.com', NULL, NULL, NULL, 0, '$2y$10$bHxTbf225pS2Awf0qX8BcOcYr.hp7QBExcl6FWv5zD4NywHABKFdu', '82uTqoGWwwXT3cMiwXZxHH9d7nUg6Yk7Dho0tWsSBZwcKoA8xc1UsdjkgRVa', 0, '2018-04-09 02:57:54', '2018-04-09 02:57:54'),
(4, 'asdasdasd', 'adadadad', 'sample2@gmail.com', NULL, NULL, NULL, 0, '$2y$10$9R8PlJEVJrYjayc0eaSH1OUz7sEhCH/R96m8YWAzUZxaNfPoa1SzO', NULL, 0, '2018-04-09 03:00:15', '2018-04-09 03:00:15'),
(5, 'asdadadasdadasd', 'adasdasdasd', 'sample4@gmail.com', NULL, NULL, NULL, 0, '$2y$10$quXDoGJhKcCVwLG6YlGE7e49JbDXC/BvnrJdD.Ci1DLA0VDbnTQHu', 'rHPJYm3SAmy1uTt1UVned1HB3CXkiR5C83KWpCBffXKPQyJil3O76nMHeg6B', 0, '2018-04-09 03:06:35', '2018-04-09 03:06:35'),
(6, 'asdasda', 'sadda', 'samplee@gmail.com', NULL, NULL, NULL, 0, '$2y$10$HJKpInikkalq2QsQ9QlHyezIzwPCGfF75hvhq0a.eLkaKgmdm56dO', '91v5O8gq0X6zjMoaKU1KEFchwA5972Tio59mM9y5XLs3mPFdOBaO9wHMrmgJ', 1, '2018-04-11 01:19:29', '2018-04-11 01:20:44'),
(8, 'asddad', 'asdada', 'ugaddanmeljohn@gmail.com', NULL, NULL, NULL, 0, '$2y$10$7jNON9/vpDmBou1t1jPwKOLYGcwaoFq0Jbv.zozTQILtD5eBln4S2', NULL, 1, '2018-04-11 01:43:08', '2018-04-11 01:44:16'),
(10, 'adminjhondz', 'diaz', 'adminjhondz@gmail.com', NULL, NULL, NULL, 1, '$2y$10$SVTOUz.LplSQzOqNxHwsCu/Y6TPFcL49FugFEvn4P43x.5F4Ahql2', 'Pv1Q2ppEivlpm7PgN4kEjcFy9i7WRrALTAcqLg6vBgrm6GdRmtFdUUKLMdhG', 1, '2018-04-14 21:24:20', '2018-04-14 21:24:20'),
(11, 'test', 'test', 'test@gmail.com', NULL, NULL, NULL, 0, '$2y$10$0VLOhFUKmWWJ/JZjfe4m6u935WRA0StXWR2fEHo.1S6I7yGAY1M.2', 'IAGmJk9JWCH95cKT4cUUnjJEZEOq3nZdAMfr52tJ47oxwK45YcLXKUs9jVeC', 1, '2018-04-15 04:06:48', '2018-04-15 04:06:48'),
(12, 'validperson', 'validperson', 'valid@gmail.com', 'valid', '1997-01-03', 'hehe', 0, '$2y$10$8aGBOefagzhcFg8vN4h4i.2uxJlMxfcJzjl5uklYAYnxOTOPybNoq', '8U1iaKT9stZSJ4Wp3FssaxA9Odmbe24WQZY8YgWPEiQPTO2lodfD6SgSYupq', 0, '2018-04-16 13:31:11', '2018-04-16 13:31:11'),
(13, 'jhondee', 'diaz', 'jhondeediaz@gmail.com', '123', '1998-10-16', 'hehe', 0, '$2y$10$xOH89dEaDz6b2bROBj/pa.yttk2XRwpA78AF5seIbozRw.FXPkP.m', '2tLIw2r6b9njnbRikmdoh339lZljkEOCpMpUHiY3nQi7d8udQ1Xeubr5gMBW', 1, '2018-04-16 14:07:02', '2018-04-16 14:13:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_proofs`
--
ALTER TABLE `booking_proofs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_reports`
--
ALTER TABLE `login_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packageitenary`
--
ALTER TABLE `packageitenary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourtbl`
--
ALTER TABLE `tourtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `booking_proofs`
--
ALTER TABLE `booking_proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login_reports`
--
ALTER TABLE `login_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packageitenary`
--
ALTER TABLE `packageitenary`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tourtbl`
--
ALTER TABLE `tourtbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
