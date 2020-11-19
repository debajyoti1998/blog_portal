-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 03:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_heading` text NOT NULL,
  `blog_body` text NOT NULL,
  `author_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_heading`, `blog_body`, `author_name`) VALUES
(8, '', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, '', '', ''),
(12, 'blog', 'POETRY, POETRY AND CULTURE\r\nCELEBRATE BLACK POETRY DAY WITH 200 YEARS OF WORLD-CHANGING BLACK POETS\r\nby Thea Voutiritsas October 20, 2020  65\r\nOn October 17, 1761, poet, writer, and preacher Jupiter Hammon became the first Black published author. To celebrate his work and the contributions of Black poets thereafter, October 17th is Black Poetry Day. This tradition, held since 1985, celebrates not only the works of Black poets, but also Black heritage and literacy more broadly. In honor of Black Poetry Day, which took place last weekend, we’ve highlighted 17 poets spanning over 200 years of Black literature for you to explore. Of course, their work is just the tip of the iceberg. There are thousands more Black poets and collections to explore all year long. \r\n\r\n \r\n\r\nJupiter Hammon \r\nWhere else would we start but with one of the founders of African American literature? Jupiter Hammon was born into slavery in Long Island, New York. It is said that Hammon had access to the library at the estate where he lived, and he was even educated alongside the estate owner’s children. His first work was published in 1761, titled An Evening Thought. Like much of Hammon’s later work, An Evening Thought incorporated his religious teachings as a preacher. \r\n\r\n \r\n\r\nPhillis Wheatley\r\nShortly after the work of Mr. Hammon, Phillis Wheatley published Poems on Various Subjects, Religious and Moral in London. This 1773 work was praised by Hammon himself in a poem of his own. Wheatley was seized from West Africa at just 7 years old. The Wheatley family who purchased her for domestic work taught her to read and write. By age 18, Wheatley had a collection of 28 poems to publish. \r\n\r\n \r\n\r\nW.E.B. Du Bois\r\nA vanguard of the American Civil Rights Movement, W.E.B. Du Bois was a sociologist, Pan-Africanist, writer, and so much more. Not only was he the first African American to earn a doctorate after studying at the University of Berlin and Harvard, but he also was among the founders of the NAACP in 1909. His best-known works include The Souls of Black Folk and Black Reconstruction in America, but Du Bois also published a number of poems including “Ghana Calls,” and “The Song of the Smoke.” \r\n\r\n \r\n\r\nGeorge M. Horton\r\nNicknamed “the Black bard of North Carolina,” George Moses Horton published his first poetry collection, The Hope of Liberty, in 1829. Horton had hoped to purchase his freedom with the book, but sadly, his attempts were denied. His work carried a sustained interest as early as 1815, when he began composing and selling his poetry at the local farmers market. By 1832, he was making around $3 a week from his poems, and he began purchasing his time back from his owner to become a full-time poet, handyman, and servant at the University of North Carolina. After 30 years of purchasing and appealing for his freedom, he was ultimately freed at the end of the Civil War. \r\n\r\n \r\n\r\nJames Weldon Johnson \r\nA civil rights activist, an early leader of the NAACP, and the first African American to pass the Florida Bar are just a few of the many impressive titles held by James Weldon Johnson. In addition to his activism efforts, Johnson was a strong musician and writer. He wrote the iconic song “Lift Every Voice and Sing” (1900), the poetry collection Fifty Years & Other Poems (1917), and several other works. His creative pursuits and unparalleled drive made him a key figure in the development of the Harlem Renaissance. \r\n\r\n \r\n\r\nJessie Redmon Fauset \r\nThe life work of Jessie Redmon Fauset shaped African American literature as we know it. Not only was she among the first authors to portray Black fictional characters as working professionals, but she also discovered and mentored a number of key figures including Langston Hughes, Jean Toomer, and Countee Cullen. \r\n\r\n \r\n\r\nCountee Cullen\r\nA later key figure in the Harlem Renaissance was Countee Cullen. Cullen had a close relationship with many key figures in the Harlem Renaissance, including Langston Hughes, Duke Ellington, and Alain Locke—also known as the “Dean” of the movement. Cullen published four collections of poetry (Color being his most well-known) and spent a great deal of his career promoting fellow Black poets. \r\n\r\n \r\n\r\nArna Bontemps \r\nBorn in Louisiana to a Creole family, Arna Bontemps spent many of his formative years frequenting speak-easies and jazz joints with his father. He is best known for his poem “Hope,” published in Crisis magazine of the NAACP. He later traveled to New York City where he continued to write poetry and befriend other key members of the Harlem Renaissance. \r\n\r\n \r\n\r\nMargaret Walker\r\nPoet and novelist Margaret Walker established her career as part of the Chicago Black Renaissance. Her 1942 poetry collection, For My People, was awarded the Yale Series of Younger Poets Award, making her the first Black woman to win a national writing prize. She went on to publish three more albums of poetry. \r\n\r\n \r\n\r\nRobert Hayden\r\nPoet, essayist, and educator Robert Hayden served as US Poet Laureate before it was even a thing. Really, he served as Consultant in Poetry to the Library of Congress from 1976-1978. As the first African American writer to hold the office, Hayden was a central figure in the rise of the Black Arts Movement of the 1960s. His most famous poem, “Those Winter Sundays,” is one of the most anthologized poems of the twentieth century. \r\n\r\n \r\n\r\nEtheridge Knight\r\nThe political work of Etheridge Knight was a major force in the Black Arts Movement. His first collection, Poems from Prison (1968), tells of his eight-year sentence after his arrest in 1960. To follow that, Knight created a second volume including his work and that of fellow inmates. He published at least seven more collections before earning his degree in American poetry and criminal justice from Martin Center University. \r\n\r\n \r\n\r\nAlice Walker\r\nBest known for authoring The Color Purple, Alice Walker is a civil rights activist, a feminist who coined the term “womanist,” a judge member of the Russel Tribunal on Palestine, and a sponsor of the Women’s International League for Peace and Freedom. She’s authored ten books of poetry alongside countless fiction and nonfiction books. Her first, deeply personal collection Once is among her greatest works. \r\n\r\n \r\n\r\nLucille Clifton\r\nFormer Poet Laureate of Maryland and a two-time finalist for the Pulitzer Prize for Poetry, Lucille Clifton is more than a household name. Her most celebrated collection, Two Headed Woman, won the 1980 Juniper Prize. Within it, her poem “homage to my hips,” is among the most well-known American poems. Among her many awards, she received the Robert Frost Medal for lifetime achievement from the Poetry Society of America. \r\n\r\n \r\n\r\nHaki R. Madhubuti\r\nAuthor, educator, poet, and publisher Haki R. Madhubuti has dedicated his life to the advancement of Black literature. In addition to publishing 28 books, he’s a co-founder of Third World Press, the largest independent Black-owned press in the United States. The press has published works by some of the greatest Black arts authors, including Gwendolyn Brooks, Sonia Sanchez, and Amiri Baraka. \r\n\r\n \r\n\r\nTracy K. Smith\r\nMassachusetts-born poet Tracy K. Smith has authored four critically acclaimed books of poetry: The Body’s Question (2003), Duende (2007), Life on Mars (2011), and Wade in the Water (2018). Her memoir, Ordinary Light, was a finalist for the National Book Award in non-fiction. She served as U.S. Poet Laureate in 2017. \r\n\r\n \r\n\r\nDanez Smith\r\nPoet and performer Danez Smith has made waves in recent years with a number of successful works and awards. Their most recent collection, Don’t Call Us Dead (2017), was a finalist for the National Book Award and [insert] Boy (2014) earned the Lambda Literary Award and Kate Tufts Award. Smith is also a Poetry Foundation Fellow, a McKnight Foundation Fellow, and a National Endowment for the Arts recipient, as well as landing on Forbes’ 30 under 30 list and earning a Pushcart Prize. \r\n\r\n \r\n\r\nTerrance Hayes\r\nWith seven poetry collections under his belt, South Carolina-born Terrance Hayes served as the 2017-2018 poetry editor for New York Times Magazine. His awards include the National Book Award for Poetry, a MacArthur Fellowship, a Guggenheim Fellowship, and a Whiting Award, among many others. Although Hayes has made a number of contributions to the art of poetry, one of his most notable is the invention of the “golden shovel” poetic form.', 'dp'),
(13, 'hello world', 'hey guys', 'babun'),
(14, '', '', ''),
(15, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`  'A' "babun"
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Debajyoti Panda', 'c', '123456'),
(4, 'Shuvajyoti Panda', 'suva@gmail.com', '2222222222'),
(5, 'Shuvajyoti Panda', 'sva@gmail.com', ''),
(6, 'babun', 'babun@gmail.com', '33333'),
(7, 'dp', 'dp@gmail.com', '111111'),
(8, 'lll', 'lll', '222'),
(9, 'ssss', 'dzadada@gmail.comdd', '11111'),
(10, 'Shuvajyoti Panda', 'dzadada@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `blog` ADD FULLTEXT KEY `blog_heading` (`blog_heading`);
ALTER TABLE `blog` ADD FULLTEXT KEY `blog_body` (`blog_body`);
ALTER TABLE `blog` ADD FULLTEXT KEY `author_name` (`author_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
