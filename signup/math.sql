-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2017 at 02:46 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `math`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `InputName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `InputMob` int(15) NOT NULL,
  `InputMessage` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `ques_id` int(11) NOT NULL,
  `test_id` varchar(32) NOT NULL,
  `que_desc` text NOT NULL,
  `ans1` varchar(500) NOT NULL,
  `ans2` varchar(500) NOT NULL,
  `ans3` varchar(500) NOT NULL,
  `ans4` varchar(500) NOT NULL,
  `true_ans` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`ques_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(1, '11', 'Differentiate `y = e^x cos x^2`', '` -e^x sin x^2`', '` e^x (cos x^2 - 2x sin x^2)`', '` e^x cos x^2 - 2x sin x^2`', '` -2xe^x sin x`', 2),
(4, '11', 'Find the slope of the ellipse `x^2 + 4y^2 - 10x - 16y + 5 = 0` at the point where `y = 2 + 80.5` and `x = 7`', '-0.1463', '-0.1538', '-0.1654', '-0.1768', 4),
(5, '11', 'In the curve `2 + 12x - x^3`, find the critical points', '`(2, 18)` and `(-2, -14)`', '`(2, 18)` and `(2, -14)`', '`(-2, 18)` and `(2, -14)`', '`(-2, 18)` and `(-2, 14)`', 1),
(10, '12', 'Find the acute angle that the curve `y = 1 - 3x^2` cut the x-axis', '`77^o`', '`75^o`', '`79^o`', '`120^o`', 1),
(8, '12', 'Find the second derivative of y by implicit differentiation from the equation `4x^2 + 8y^2 = 36`\r\n\r\n', '`64x^2`', '`(- 9/4) y^3`', '`32xy`', '`(- 16/9) y^3`', 2),
(9, '12', 'Evaluate the limit `( x - 4 ) / (x^2 - x - 12)` as x approaches 4', '`0`', 'Undefined', '`1/7`', 'Infinity', 3),
(3, '11', 'Find the radius of curvature at any point in the curve `y + ln cos x = 0`', '`cos x`', '`1.5707`', '`sec x`', '`1`', 3),
(7, '12', 'Find the slope of `x^2y = 8` at the point `(2, 2)`', '`2`', '`-1`', '`-1/2`', '`-2`', 4),
(2, '11', 'Find the coordinates of the vertex of the parabola `y = x^2 - 4x + 1` by making use of the fact that at the vertex, the slope of the tangent is zero', '`(2, -3)`\r\n', '`(3, -2)`', '`(2, 3)`', '`(-2, -3)`', 1),
(6, '12', 'Find y\' if `y = arc (sin cos x)`\r\n\r\n', '-1', '-2', '1', '2', 1),
(76, '61', 'A person is standing between two cliffs. A sound is produced, the person hears echo after 3 seconds and 5 seconds. Velocity of sound in air=336m/s. the separation between two cliffs is ', '1344m ', '2688m', '772m', 'none of these', 1),
(77, '61', 'A body of mass m = 3.513 kg is moving along the x­-axis with a speed of `5.00 ms^-1` . The magnitude of its momentum is recorded as', '`17.57 kg m/s`', '`17.6 kg m/s`', '`17.565 kg m/s`', '`17.56 kg m/s`', 1),
(78, '61', 'A solid sphere is rotating in free space. If the radius of the sphere is increased keeping mass same which one of the following will not be affected?', 'moment of inertia', 'angular momentum', 'angular velocity', 'rotational kinetic energy', 2),
(79, '61', 'Four point masses, each of value m, are placed at the corners of a square ABCD of side l. The moment of inertia of this system about an axis through A and parallel to BD is', '`1 ml^2`', '`2 ml^2`', '`3 ml^2`', '`4 ml^2`', 4),
(80, '61', 'A block of mass 0.50 kg is moving with a speed of `2.00 ms^–1` on a smooth surface. It strikes another mass of 1.00 kg and then they move together as a single body. The energy loss during the collision is', '0.34 J                                                                                         ', '0.16 J', '1.00 J', '0.67 J', 4),
(91, '71', 'If the terminal speed of a sphere of gold(`density = 19.5 (kg)/m^3`) is 0.2 m/s in a viscous liquid(`density = 1.5 (kg)/m^3`), find the terminal speed of a sphere of silver(`density 10.5 (kg)/m^3`) of the same size in the same liquid', '`0.2 m/s`                                         ', '`0.4 m/s`', '`0.133 m/s`', '`0.1 m/s`', 4),
(92, '71', 'A 20 cm long capillary tube is dipped in water. The water rises up to 8 cm. If the entire arrangement is put in a freely falling elevator the length of water column in the capillary tube will be', '4 cm', '20 cm', '8 cm', '10 cm', 2),
(93, '71', 'If two soap bubbles of different radii are connected by a tube,', 'Air flows from the bigger bubble to the smaller bubble till the sizes become equal', 'Air flows from bigger bubble to the smaller bubble till the sizes are interchanged', 'Air flows from the smaller bubble to the bigger', 'There is no flow of air', 3),
(94, '71', 'A wire suspended vertically from one of its ends is stretched by attaching a weight of 200 N to the lower end. The weight stretches the wire by 1 mm. Then the elastic energy stored in the wire is', '0.2 J', '10 J', '20 J', '0.1 J', 4),
(95, '71', 'A planet in a distant solar system is 10 times more massive than the earth and its radius is 10 times smaller. Given that the escape velocity from the earth is `11 km/s` , the escape velocity from the surface of the planet would be', '`0.11 km/s`', '`1.1 km/s`', '`11 km/s`', '`110 km/s`', 4),
(11, '13', 'Given the function `f(x) = x` to the `3^(rd)` power `- 6x + 2`. Find the first derivative at x = 2.\r\n', '`6`', '`7`', '`3x^2 - 5`', '`8`', 1),
(12, '13', 'The chords of the ellipse `64x^2 + 25y^2 = 1600` having equal slopes of `1/5` are bisected by its diameter. Determine the equation of the diameter of the ellipse', '`5x - 64y = 0`', '` 64x - 5y = 0`', '`5x + 64y = 0`', '`64x + 5y = 0`', 4),
(13, '13', 'Find the partial derivative with respect to x of the function `xy^2 - 5y + 6`\r\n\r\n', '`y^2 - 5`', '`y^2`', '`xy - 5y`', '`2xy`', 2),
(14, '13', 'Find the slope of the line whose parametric equations are `x = 4t + 6` and `y = t - 1`', '`4`', '`1/4`', '`-1/4`', '`-4`', 2),
(15, '13', 'Given the function `f(x) = x^3 - 5x + 2`, find the value of the first derivative at `x = 2`, `f\' (2)`', '`7`', '`2`', '`8`', '`3x^2-5`', 1),
(16, '21', 'The equation whose roots are opposite in sign to those of the equation `x^2 - 3x - 4 = 0` is given by', '`4x^2 - 3x + 1 = 0`', '`x^2 + 3x - 4 = 0`', '`x^2 + 3x + 4 = 0`', 'none of these', 2),
(17, '21', 'The coefficient of `x^9` in the expansion of `(1+x)(1+x^2)(1+x^3)...(1+x^100)`', '2', '4', '6', '8', 4),
(18, '21', 'Suppose that all the terms of an arithmetic progression (A.P.) are natural numbers. If the ratio of the sum of the first seven terms to the sum of the first eleven terms is 6 : 11 and the seventh term lies in between 130 and 140, then the common difference of this A.P. is ', '6', '7', '8', '9', 4),
(19, '21', 'If `x^2+10ax-11b = 0` has c and d as its roots and the equation `x^2+10cx-11d = 0` has its roots a and b , then find the value of `a+b+c+d` ', '1110', '1210', '1310', '1410', 2),
(20, '21', 'Find the value of p if the equation `3x^2 -2x + p =0`  and `6x^2 -17x +12 = 0` have a common root. ', '`-8/3`', '`-15/4`', 'Both 1 and 2', 'None of these', 3),
(21, '22', 'If a, b, c belong to R  and equations `ax^2 + bx + c=0 `  and   `x^2 + 2x + 9 =0`  have a common root, find `a:b:c`', '`1:2:3`', '`1:3:5`', '`2:4:9`', '`1:2:9`', 4),
(25, '22', 'If `(a^2 -1)x^2 + (a-1) x + a^2 -4a +3 = 0` be an identity in x then the value of a is', '1', '2', '3', '4', 1),
(26, '23', 'Let a and b be two roots of the equation `x^3 +px^2 + qx + r = 0` satisfying the relation `ab + 1 = 0` then value of `r^2 + pr + q + 1` is', '0', '1', '2', '3', 1),
(23, '22', 'If sum of the roots of the equation `ax^2 + bx + c =0` is equal to the sum of the squares of their reciprocals, then `bc^2` , `ca^2` , `ab^2` are in` ? `', 'A.P', 'G.P', 'H.P', 'None of these', 1),
(22, '22', 'If a, b, c belong to R,  a not equal to zero,  and the quadratic equation `ax^2 + bx + c=0` has no real roots, then `(a+b+c)c` is', '`<0`', '`>0`', '`=0`', 'None of these', 2),
(27, '23', 'If `c < 0` and `ax^2 + bx + c = 0` does not have any real roots then ', '`a + b + c < 0`', '`9a + 3b + c < 0`', 'Both 1 and 2', 'None of these', 2),
(24, '22', ' If r be the ratio of the roots of the equation `ax^2 + bx + c =0`, then the value of `(r+1)^2 /r` is', '`a^2 /bc`', '`b^2 /ac`', '`c^2 /ab`', '`a^2b^2c^2`', 2),
(28, '23', 'For the equation, `3x^2 + px + 3 = 0` , `p > 0` if one of the roots is square of the other, then p is equal to', '`1/3`', '`1`', '`3`', '`2/3`', 3),
(29, '23', 'If a, b, c are the roots of the cubic `x^3 + qx + r = 0` then the equation whose roots are ab, bc, ca are', '`x^3 + qx^2 + r^2 = 0`', '`x^3 - qx^2 - r^2 = 0`', '`x^2 + qx = 0`', 'None of these', 2),
(30, '23', 'The equations `x^3 + 5x^2 + px + q = 0` and `x^3 + 7x^2 + px + r = 0` have two roots in common. If the third root of each equation is represented by `x_1` and `x_2` respectively, then the ordered pair `(x_1, x_2)` is', '`(-5, -7)`', '`(1, -1)`', '`(-1, 1)`', '`(5, 7)`', 1),
(61, '51', 'The angle between the plane 3x + 4y = 0 and the line `x^2 + y^2 = 0` is', '`0^@`', '`30^@`', '`60^@`', '`90^@`', 1),
(62, '51', 'Suppose that `vec(p)` , `vec(q)` and `vec(r)` are three non-coplanar vectors in `R^3`.  Let the components of a vector `vec(s)` along `vec(p)` , `vec(q)` , and `vec(r)` be 4,3 and 5  respectively. If the components of this vector `vec(s)` along `(-vec(p)+vec(q)+vec(r))` , `(vec(p)-vec(q)+vec(r))` and `(-vec(p)-vec(q)+vec(r))` then the value of `(2x+y+z)` is.', '6', '9', '4', '7', 2),
(63, '51', 'The acute angle between the plane 5x - 4y + 7z-13 = 0 and the y-axis is given by', '`sin^-1(5/sqrt(90))`', '`sin^-1(-4/sqrt(90))`', '`sin^-1(7/sqrt(90))`', '`sin^-1(4/sqrt(90))`', 4),
(64, '51', 'The equation of line through the point (1, 2, 3) parallel to line `(x-1)/2=(y+1)/-3=(z+10)/8` are', '`(x-1)/2=(y-2)/-3=(z-3)/8`', '`(x-1)/1=(y-2)/2=(z-3)/3`', '`(x-4)/1=(y+1)/2=(z+10)/3`', 'none of these', 1),
(65, '51', 'The distance of the plane through (1, 1, 1) and perpendicular to the line `(x-1)/3=(y-1)/0=(z-1)/4`\\r\\n\\r\\nfrom the origin is', '`3/4`', '`4/3`', '`7/5`', '`1`', 3),
(66, '52', 'If the plane x + y -z = 4 is rotated through `90^@` about the line of intersection with the plane\\r\\nx + y + 2z = 4 then equation of the plane in its new position is', '5x + y + 4z + 20 = 0', '5x + y + 4z = 20', 'x + 5y + 4z = 20', 'none of these', 2),
(67, '52', 'The number of vector of unit length perpendicular to vectors `vec(p)` = (1, 1, 0) and `vec(q)` = (0, 1, 1) is', 'One', 'Two', 'Three', 'Infinite', 2),
(68, '52', 'Two lines with direction cosines\\n`< l_1 ,m_1 ,n_1 > and < l_2 ,m_2 ,n_2 >`are at right angles iff', '`l_1l_2+m_1m_2+n_1n_2=0`', '`l_1=l_2,m_1=m_2,n_1=n_2`', '`l_1l_2=m_1m_2=n_1n_2`', 'none of these', 1),
(69, '52', 'The angle between the lines whose direction ratios are 1, 1, 2; `sqrt(3) - 1`,` - sqrt(3) -1`, 4 is', '`cos^-1(1/65)`', '`pi/6`', '`pi/3`', '`pi/4`', 3),
(70, '52', 'If `vec(p)`, `vec(q)`, `vec(r)` are three non-coplanar vectors, then (`vec(p)`+`vec(q)`+`vec(r)`).[(`vec(p)`+`vec(q)`)*(`vec(p)`+`vec(r)`)] equals', '0', '(`vec(p)`)(`vec(q)`)(`vec(r)`)', '2.[`vec(p)``vec(q)``vec(r)`]', 'None of these', 4),
(71, '53', 'If P, Q, R, S are (3, 6, 4), (2, 5, 2), (6, 4, 4) , (0, 2, 1) respectively then the projection of PQ\\r\\non RS is\r\n\r\n', '2 units', '4 units', '6 units', '8 units', 1),
(72, '53', 'The scalar `vec(p)`.`[`vec(q)` + `vec(r)`* `(`vec(p)` + `vec(q)` + `vec(r)`)`]` equals', '0', '2[`vec(p)`.`vec(q)`.`vec(r)`]', '[`vec(p)`.`vec(q)`.`vec(r)`]', 'None of these', 1),
(73, '53', 'The equation of the right bisecting plane of the segment joining the points (a, a, a) and\\n(-a, -a, -a) ; `a !=0` is', 'x + y + z = a', 'x + y + z = 3a', 'x + y + z = 0', 'x + y + z + a= 0', 3),
(74, '53', 'The reflection of the point (2, -1, 3) in the plane 3x - 2y - z = 9 is', '`26/7,15/7,17/7`', '`26/7,-15/7,17/7`', '`15/7,26/7,-17/7`', '`26/7,17/7,-15/7`', 2),
(75, '53', 'The locus of the point, which moves such that its distance from (1, -2, 2) is unity, is', '`x^2 + y^2 + z^2 - 2x + 4y - 4z + 8 = 0`', '`x^2 + y^2 + z^2 - 2x - 4y - 4z + 8 = 0`', '`x^2 + y^2 + z^2 + 2x + 4y - 4z + 8 = 0`', '` x^2 + y^2 + z^2 - 2x + 4y + 4z + 8 = 0`', 1),
(31, '31', 'For any integer k, let `a_k = cos((kpi)/7)+isin((kpi)/7)`. where i = sqrt(-1) . The value of the expression `		(sum_(k=1)^12 |a_(k+1)-a_k|)/(	sum_(k=1)^3 |a_(4k-1)-a_(4k-2)|)`', '1', '4', '7', '9', 2),
(36, '32', 'The value of `(1 + cos (pi)/8) (1 + cos 3 (pi)/8) (1 + cos 5(pi)/8) (1 + cos 7(pi)/8)`', '`1/2`', '`1/4`', '`1/8`', '`1/16`', 3),
(41, '33', 'The equation `sin x + x cos x = 0` has at least one root in', '`(-pi/2, 0)`', '`(0, pi)`', '`(pi, 3pi/2)`', '`(0, pi/2)`', 2),
(60, '43', 'The area of the region bounded by the parabola `y = x^2-3x` with y <= 0 is', '`3`', '`-3`', '`-9/2`', '`9/2`', 4),
(59, '43', 'The area bounded by y â€“1 = |x|, y =0 and |x| = `1/2` will be', '`3/4`', '`3/2`', '`5/4`', 'none of these', 3),
(56, '43', 'The area bounded by the curves y = |x| - 1 and y = - |x| + 1 is', '`1`', '`2`', '`2sqrt(2)`', '`4`', 2),
(57, '43', 'The slope of the tangent to a curve y = f(x) at (x, f(x)) is 2x + 1. If the curve passes through\\r\\nthe point (1, 2), then the area of the region bounded by the curve, the x-axis and the line x =1 is:', '`1/6`', '`6`', '`5/6`', '`6/5`', 3),
(58, '43', 'Consider a triangle OAB formed by the points O = (0, 0), A = (2, 0), B = (1,`sqrt( 3)`). P(x, y) is an\\narbitrary interior point of the triangle, moving in such a way that\\n`d(P,OA)+d(P,AB)+d(P,OB)=sqrt(3)`,where `d(P, OA), d(P, AB) and d(P, OB)` represent the\\ndistance of â€˜Pâ€™ from the sides OA,', '`2sqrt(3)`', '`sqrt6`', '`sqrt3`', 'none of these', 3),
(32, '31', 'If  `alpha`= `int_0^1 (e^(9x+3tan^-1x))(12+9x^2)/(1+x^2)dx` where `tan^-1x` takes only principal values, then the value of  `ln|1+alpha|-(3pi)/4`\r\n\r\n', '9', '1', '3', '6', 1),
(33, '31', 'Let m and n be two positive integers greater than 1. If `lim_(n->0)(e^cos(alpha^n)-e)/alpha^m=-e/2` then the value of `m/n` is', '2', '5', '6', '4', 1),
(34, '31', 'Considering Cosine Rule of any triangle ABC, possible measures of angle A includes', 'angle A is obtuse\r\n', 'angle A is acute', 'angle A is right-angle', 'all of above', 4),
(35, '31', 'The value of `[`(cos A/ cot A)` + sin A]` is:', 'cot A', '2 sin A', '2 cos A', 'sec A', 2),
(40, '32', 'If `k = sin (pi/18) sin (5pi/18) sin (7pi/18)`, then what is the numerical value of k', '`1/2`', '`1/4`', '`1/8`', '`1/16`', 3),
(37, '32', 'If `A = sin2 sin3 sin5` then', '`A=0`', '`A>0`', '`A<0`', 'None of these', 3),
(38, '32', 'If ABC is a triangle, `a=2`, `b=3` and `sinA = 1/3`, then B is', '`pi/4`', '`pi/6`', '`pi/2`', '`pi/3`', 2),
(39, '32', 'If `cos x + cos y =0` and `sin x + sin y = 0`, then `cos(x-y)`', '`1`', '`1/2`', '`-1`', '`-1/2`', 3),
(42, '33', 'Number of solution to the equation `cosx^3 - 3 cosx sinx^2 = cos3x` which is in the interval `(0, 1)` is', '1', '2', '3', 'More than 2', 4),
(43, '33', '`3^logtanx + 3^logcotx = 2` then x is ', '`npi + pi/2`', '`(4n+1)pi/4`', '`npi - pi/4`', '`npi`', 4),
(44, '33', 'Find the number of solutions of the equation `30 |sin x| = x` in `0 <= x <= 2pi`', '4', '2', '8', '6', 3),
(45, '33', 'The number of solutions of the inequality `log_(1/2) sinx > log_(1/2) cos x` is', '7', '14', '21', 'Infinite', 4),
(96, '111', 'Which of the following compounds will exhibit cis-trans isomerism?', '2-butene\r\n', '2-butyne', '2-butanol', 'butanal', 1),
(97, '111', 'The number of isomers of `C_6H_14` is:', '4', '5', '6', '7', 2),
(98, '111', 'The isomers which can be inter converted through rotation around a single bond are:', 'conformers', 'diastereomers', 'enantiomers', 'positional isomers', 1),
(99, '111', 'An isomer of ethanol is: ', 'methanol', 'diethyl ether', 'acetone', 'dimethyl ether', 4),
(100, '111', 'How many optically active stereoisomers are possible for butane-2,3-diol? ', '1', '2', '3', '4', 4),
(101, '112', 'An aromatic molecule will not ', 'Have `4npi` electrons', 'Have `(4n+2)pi` electrons', 'Be planar', 'Be cyclic', 1),
(102, '112', 'The hybridization of the central carbon in `CH_3 C N` and the bond angle `C C N` are', '`s p^2, 180`', '`s p, 180`', '`s p^2, 120`', '`s p^3, 109`', 2),
(103, '112', 'Which of the following statements about an sp hybridized carbon is FALSE? ', 'It is divalent', 'It forms bonds that are linear', 'It has two p orbitals', 'It always forms triple bonds to carbon', 4),
(104, '112', 'The correct geometry around oxygen in `CH_3OCH_3` is ', 'linear ', 'bent', 'tetrahedral', 'trigonal planar ', 2),
(105, '112', 'Which of the following is NOT an example of secondary structure found in proteins? ', '`beta- sheet`', '`alpha-helix`', 'hydrophobic folding', 'random coil', 3),
(106, '113', 'Which of the following physical properties differ for each of a pair of enantiomers? ', 'solubility in ethanol', 'direction of rotation of plane-polarized light', 'boiling point and melting point\r\n', 'index of refraction ', 2),
(107, '113', 'A glycoside is the carbohydrate form of an ', 'ether', 'acetal', 'aglycone', 'alcohol', 2),
(108, '113', 'Which of the following statements is NOT true regarding fatty acids? ', 'Fatty acids dissolve in nonpolar solvents', 'Triglycerides are esters of fatty acids', 'Most naturally occurring fatty acids have trans double bonds', 'Fatty acids are biosynthesized from acetate', 3),
(109, '113', 'Which version of the radical halogenation of an alkane is MOST selective?', 'fluorination', 'chlorination', 'bromination', 'iodination ', 3),
(110, '113', 'Which of the following may be separated by ordinary physical methods?', 'a pair of identical molecules', 'a pair of enantiomers', 'a pair of diastereomers', 'a pair of identical atoms', 3),
(111, '121', 'Compound aluminum sulfate is\r\nclassified as', 'neutral salt', 'acidic salt', 'basic salt', 'amphotheric hydroxide', 1),
(112, '121', 'Compound sodium\r\nhydrogencarbonate is classified\r\nas', 'acidic salt', 'hydroxide', 'neutral salt', 'basic salt', 1),
(113, '121', 'What are the oxidation state of the\r\ncentral metal ion and the charge\r\nof the complex ion for the\r\ncoordination compound\r\n`K_2[Pt(OH)_2 Cl_4]`', '`+4, -2`', '`+4, +2`', '`+4, 0`', '`+2, -2`', 3),
(114, '121', 'What kind of chemical bonding is\r\nobligatory in coordination\r\ncompounds?', 'ionic bonding', 'metallic bonding', 'covalent bonding', 'donor-acceptor bonding', 4),
(115, '121', 'Color of phenolphthalein in a\r\nsolution of `Na_3PO_4` is', 'colorless', 'blue', 'pink', 'red', 3),
(116, '122', 'The components of coordination\r\ncompounds are', 'the central metal ion and\r\npositively or negatively\r\ncharged ions', 'the central metal ion and the\r\ncomplex cation', 'the complex ion and the\r\nexternal coordination sphere', 'the central metal ion and the\r\ncomplex anion', 3),
(117, '122', 'What is the number of electrons,\r\nlosted or gained according with\r\nthe transformation: `S^0 -> H_2S`', '5', '4', '3', '2', 4),
(118, '122', 'pH of 0,001 M solution of `HCl`\r\nequal', '0', '7', '10', '3', 4),
(119, '122', 'For which of the given processes\r\nthe temperature increasing will\r\ncause the product yield\r\nincreasing?', 'Isobaric', 'Endothermal', 'Adiabatic', 'Isochoric', 2),
(120, '122', 'In which of the given\r\ncompounds Copper can show\r\noxidizing properties only?', '`CuCl_2`', '`CuCl`', '`Cu`', '`Cu_2O`', 1),
(121, '123', 'According to the BronstedLowry\r\nconcept of acids and\r\nbases, an acid is the species\r\nwhich', 'Donates the electron', 'Has a free electron pair', 'Accepts the proton', 'Donates a proton', 1),
(122, '123', 'According to the Bronsted Lowry\r\nconcept of acids and\r\nbases, an base is the species\r\nwhich', 'Accepts the proton', 'Donates the electron', 'Donates the proton', 'Accepts the electron', 4),
(123, '123', 'How many protons contain the\r\nnucleus of an atom of element\r\nwith atomic number 7?', '3', '7', '6', '2', 2),
(124, '123', 'For calculation the equivalent\r\nmass of potassium bromide `KBr`\r\nits molar mass should be divided\r\nby', '2', '4', '5', '1', 2),
(125, '123', 'What is the oxidation number of a\r\nNitrogen in the compound `HNO_2`', '`+5`', '`+3`', '`-3`', '`-5`', 2),
(126, '131', 'Which of the following describes a van der Waals gas with `Z<1` ?', 'This gas has a smaller pressure than if it were behaving as an ideal gas', 'This gas is dominated by repulsive inter molecular forces', 'Both 1 and 2', 'None of these', 1),
(130, '131', 'Which of the following describes an ideal gas?', 'Particles in this gas rarely collide with the walls of the container', 'Particles in this gas are very small compared to the distance between each other.', 'Both 1 and 2', 'None of these', 3),
(128, '131', 'Rusting of an article made up of iron is called', 'Corrosion and it is a physical as well as chemical change', 'Dissolution and it is a physical change', 'Corrosion and it is a chemical change', 'Dissolution and it is a chemical change', 3),
(129, '131', 'On converting `25^oC, 38^oC and 66^oC` to kelvin scale, the correct answer will be', '298 K, 311 K and 339 K', '298 K, 300 K and 338 K', '273 K, 278 K and 543 K', '298 K, 310 K and 338 K', 1),
(127, '131', 'Which one of the following nutrients is not available in fertilizers?', 'Nitrogen', 'Potassium', 'Iron', 'Phosphorus', 3),
(131, '132', 'A student performs a titration with different burettes and finds titre values of 25.2 mL, 25.25 mL,\r\nand 25.0 mL. The number of significant figures in the average titre value is', '1', '2', '3', '4', 3),
(132, '132', 'Among the following, the intensive property is (properties are)', 'Molar conductivity', 'Molality', 'Resistance', 'Heat capacity', 1),
(133, '132', 'If the 0.05 molar solution of `M+` is replaced by a 0.0025 molar `M+` solution, then the magnitude of the\r\ncell potential would be', '35 mV', '70 mV', '140 mV', '700 mV', 2),
(134, '132', 'Silver (atomic weight = `108 g mol^-1`) has a density of `10.5 g cm^-3`. The number of silver atoms on a\r\nsurface of area `10-12 m^2` can be expressed in scientific notation as `y X 10^x`. The value of x is', '5', '6', '7', '8', 3),
(135, '132', 'Consider the following reaction.\r\n`2SO_3(g) -> 2SO_2(g) + O_2(g)` `deltaH = 198 kJ mol^-1` Which one of the following statements is correct?', 'The reaction is exothermic', 'The reaction container would feel warm', '198 kJ of energy is given off as 2.00 g of `SO_3` reacts', '198 kJ of energy is needed to produce 2.00 mol of `SO_2`', 4),
(136, '133', 'The following reaction is at equilibrium.\r\n`Cl_2(g) + 3F_2(g) -> 2ClF_3(g)`\r\nHow will the system respond if the volume is increased at constant temperature?', 'The reaction will shift to the left', 'The reaction will shift to the right', 'There will be no change to the equilibrium position', 'None of these', 1),
(137, '133', 'How does the volume of 1 mol of an ideal gas change if the temperature and the\r\npressure are both decreased by a factor of four?', 'Decreases by sixteen times', 'Increases by four times', 'Increases by sixteen times', 'Remains unchanged', 4),
(138, '133', 'Which one of the following statements regarding a catalyst is not correct?', 'An enzyme is a catalyst that only binds certain substrates', 'An enzyme is a protein that is a highly efficient catalyst for one or more chemical reactions in a living system', 'Catalysts increase the rate of a reaction by altering the mechanism, thereby increasing the activation energy', 'Catalysts do not alter the equilibrium constant for a chemical reaction', 3),
(139, '133', 'Identify the INCORRECT statement below regarding chemical equilibrium.', 'All chemical reactions are, in principle, reversible', 'Equilibrium is achieved when the concentrations of species become constant', 'Equilibrium is achieved when the reaction quotient, Q, equals the equilibrium constant', 'Equilibrium is achieved when reactant and product concentrations are equal', 4),
(140, '133', 'What is the correct solubility product expression for `Ag_3PO_4`?', '`K_(sp) = [3Ag^+]^3[(PO_4)^(3-)]`', '`K_(sp) = [Ag^+]^3[(PO_4)^(3-)]`', '`K_(sp) = 3[Ag^+]^3[(PO_4)^(3-)]`', 'None of these', 2),
(81, '62', 'An ideal spring with spring-constant k is hung from the ceiling and a block of mass M is attached to its lower end. The mass is released with the spring initially unstreched. Then the maximum extension in the spring is\r\n\r\n\r\n   ', '`Mg/2k`', '`Mg/k`', '`2 Mg/k`', '`4 Mg/k`', 3),
(82, '62', 'The total energy possessed by a system of moving bodies', 'Is constant at every instant', 'Varies from point to point', 'Is maximum in the start and minimum at the end', 'None of the above', 1),
(83, '62', 'When a person opens a door, he applies', 'Force', 'Torque', 'Moment', 'None of the above', 2),
(84, '62', 'The rate of doing work is known as', 'Potential energy', 'Power', 'Kinetic energy', 'None of the above', 2),
(85, '62', 'The escape velocity from the surface of the earth is approximately equal to', '9.81 km/s', '11.2 km/s', '14.0 km/s', '22.0 km/s', 2),
(46, '41', 'The equation of the parabola that satisfies the given conditions: Vertex `(0, 0)` and focus `(-2, 0)` is', '`y^2 = 8x`', '`y^2 = -8x`', '`y^2 = 4x`', '`y^2 = -4x`', 2),
(47, '41', 'The equation of a parabola that satisfies the following condition - Vertex `(0, 0)` and passing through `(5, 2)` and axis is x-axis is\r\n', '`y^2 = 7/2 x`', '`y^2 = 9/2 x`', '`y^2 = -9/2 x`', 'None of these', 2),
(48, '41', 'If a line has the direction ratios `-18, 12, -4`, then what are its direction cosines?\r\n', '`(-9/11, 6/11, -2/11)`', '`(9/11, 6/11, -2/11)`', '`(9/11, 6/11, 2/11)`', '`(-9/11, -6/11, -2/11)`', 1),
(49, '41', 'The direction cosines of a line which makes equal angles with the coordinate axes is', '`(3, 3, 3)`', '`(-3, -3, -3)`', 'Both 1 and 2', 'None of these', 4),
(50, '41', 'The eccentricity of the ellipse `x^2/25 + y^2/100 = 1` is', '5', '10', '25', 'None of these', 4),
(51, '42', 'Given that the furthest the earth gets from the sun is approximately 94.56 million miles, and the eccentricity of earth\'s orbit is approximately 0.017, what is the closest approach of\r\nthe earth to the sun.', '76.3 million miles', '91.4 million miles', '54.9 million miles', '88.5 million miles', 3),
(52, '42', 'The equation of a line parallel to x-axis and passing through the origin is', '`x/1 = y/1 = z/1`', '`x/0 = y/0 = z/1`', '`x/0 = y/1 = z/0`', '`x/1 = y/0 = z/0`', 4),
(53, '42', 'The equation of a parabola that satisfies the following condition - vertex `(0, 0)`and passing through `(5, 2)` and symmetric with respect to y-axis is', '`x^2 = (25)/2y`', '`x^2 = -(25)/2y`', '`y^2 = (25)/2x`', '`y^2 = -(25)/2x`', 1),
(54, '42', 'The equation of the parabola that satisfies the given conditions: Focus `(6, 0)` and directrix `-6` is', '`y^2 = 12x`', '`y^2 = 24x`', '`y^2 = 36x`', '`y^2 = 48x`', 2),
(55, '42', 'The eccentricity of the ellipse `36 x^2 + 4 y^2 = 144` is\r\n', '1', '2', '3', 'None of these', 4),
(86, '63', 'A differential pulley block has larger and smaller diameters of 100 mm and 80 mm respectively. Its velocity ratio is', '10', '20', '5', '40', 1),
(87, '63', 'The center of gravity of a semi-circle lies at a distance of x from its base measured along the vertical radius. Find x', '`4r/3pi`', '`3r/8`', '`8r/3`', '`3r/4pi`', 1),
(88, '63', 'Non-coplaner concurrent forces are those forces which', 'Do not meet at one point and their lines of action do not lie on the same plane', 'Meet at one point, but their lines of action do not lie on the same plane', 'Meet at one point and their lines of action also lie on the same plane', 'Do not meet at one point, but their lines of action lie on the same plane', 2),
(89, '63', 'Which of the following are vector quantities?', 'Linear acceleration', 'Linear displacement', 'Linear velocity', 'All of these', 4),
(90, '63', 'The point, through which the whole weight of the body acts, irrespective of its position, is known as', 'Centre of mass', 'Centre of gravity', 'Centre of percussion', 'Moment of inertia', 2),
(141, '72', 'Most commonly used joint in the underground pipe lines is the', 'Flange', 'Expansion joint', 'Sleevejoint', 'Coupling', 3),
(142, '72', 'The terminal velocity of a particle moving through a fluid varies as dpn. What is the value of n\' for Newton\'s law regime?', '1', '1.5', '0.5', '2', 3),
(146, '73', 'Schedule number of a pipe, which is a measure of its wall thickness, is given by', '`10000 (P\')/S`', '`1000 S/(P\')`', '`1000 (P\')/S`', '`100 (P\')/S`', 3),
(150, '73', 'When the momentum of one fluid is used for moving another fluid, such a device is called a/an', 'Acid egg', 'Jet pump', 'Blower', 'None of these', 2),
(145, '72', 'Laminar flow of a Newtonion fluid ceases to exist, when the Reynolds number exceeds', '1500', '4000', '3000', '2100', 4),
(144, '72', 'Stacking fault energies are in the range of', '` 0.01-0.1 J/m^2`', '`0.01-0.1 J/(cm)^2`\r\n `', '` 0.1-10 J/m^2`', '`0.1-10 J/m^2`', 1),
(147, '73', 'Hooke\'s law ', 'Elastic range, strain is proportional to stress ', 'Plastic range, strain is proportional to stress', 'In both elastic and plastic range, strain is proportional to stress', 'None', 1),
(143, '72', 'Thermodynamically stable defects', ' Point defects', ' Line defects', ' Surface defects', ' Volume defects', 1),
(149, '73', 'Average frequency of atomic vibrations in a solid (in Hz)', '`10^-12`', '`10^-13`', '`10^12`', '`10^13`', 4),
(148, '73', ' Beneficial property of foreign particles', 'Reduces density', ' Act as stress raisers', 'Obstructs dislocation motion', 'None of these', 3),
(151, '81', ' Direction of waves is parallel to distance of vibration in', 'Transverse waves', 'Longitudinal waves', 'Both transverse and longitudinal waves', 'None of waves', 2),
(156, '82', 'Motion that is repeated at regular intervals is termed as', 'Vibration', 'Oscillation', 'Ventilation', 'Periodic motion', 4),
(161, '83', 'Any two shortest points in a wave that are in phase are termed as', 'Wave distance', 'Wavelength', 'Phase length', 'Amplitude', 2),
(165, '83', 'Sound is a good example of', 'Transverse waves', 'Longitudinal waves', 'Both transverse and longitudinal waves', 'None of waves', 2),
(152, '81', 'The velocity of sound in air at 4 atmosphere and that at 1 atmosphere pressure would be', '`1 : 1`', '`4 : 1`', '`1 : 4`', '`3 : 1`', 1),
(154, '81', '56 tuning forks are so arranged in series, that each fork gives 4 beats per second with the previous one. If the frequency of the last fork is 3 times that of the first, then the frequency of the first fork will be', '55 Hz', '110 Hz', '75 Hz', '220 Hz', 2),
(158, '82', 'To demonstrate the phenomenon of beats we need', 'Two sources which emit radiation of nearly the same frequency', 'Two sources which emit radiation of exactly the same frequency', 'Two sources which emit radiation of exactly the same frequency and have a definite phase relationship', 'Two sources which emit radiation of exactly the same wavelength', 1),
(159, '82', 'The amplitude of two waves are in the ratio `5:2`. if all other conditions for the two waves are same, then what is the ratio of their energy densities?\r\n', '`5 : 2`', '`10 : 4`', '`2.5 : 4`', '`25 :4`', 4),
(164, '83', 'Frequency of tuning forks are 320 Hz. And 325 Hz. If they are sounded together, the beat period is', '5 second', '6 second', '0 second', '0.2 second', 4),
(153, '81', 'Work input is directly proportional to heat and the constant of proportionality is called', 'Joule\'s equivalent', 'Mechanical equivalent of heat', 'All of above', 'None of these', 3),
(155, '81', 'The value of constant of proportionality J has the value', '1', '0', '-1', 'None of these', 1),
(157, '82', 'For the general case, we can write', '`S_2-S_1 <= deltaQ/T` for a path', '`S_2-S_1 >= deltaQ/T` for a path', 'Both 1 and 2', 'None of these', 2),
(160, '82', 'Entropy is a', 'Path function, intensive property', 'Path function, extensive property', 'Point function, intensive property', 'Point function, extensive property', 4),
(162, '83', 'Kelvin-Planck\'s and Clausius\' statements are', 'Not connected to each other', 'Virtually two parallel statements of second law', 'Violation of one doesn\'t violate the other', 'None of these', 2),
(163, '83', 'The continual operation of a machine that creates its own energy and thus violates the first law is called', 'PMM2', 'PMM1', 'PMM0', 'None of these', 2),
(170, '91', 'A person standing inside "Faraday cage" is not affected by electric field because', 'Electric potential is positive', 'Electric potential is negative', 'Zero electric potential', 'Electric field outside the cage cancels the field inside', 4),
(167, '91', 'Capacitor plates are separated by an insulator known as', 'Non-metal', 'Dielectric', 'Paper', 'Wood', 2),
(172, '92', 'Region around a charge q in which it exerts force on a test charge is called', 'Electric field intensity', 'Electric force', 'Electric field', 'Coulomb\'s force', 3),
(175, '92', 'Divergence of leaves depends upon the', 'Current', 'The amount of charge', 'Nature of leaves', 'Nature of disc', 2),
(176, '93', 'An electric dipole is placed at an angle of `30^o` with an electric field intensity `2 X 105 N/C`. It experiences a torque equal to `4 Nm`. The charge on the dipole if the dipole length is 2 cm is', '8 mC', '2 mC', '5 mC', '7 mC', 2),
(178, '93', 'Three concentric metallic spherical shells of radii R, 2R, 3R, are given charges `Q_1, Q_2, Q_3` respectively. It is found that the surface charge densities on the outer surfaces of the shells are equal. Then, the ratio of the charges given to the shells `Q_1 : Q_2 : Q_3` is', '`1: 2: 3`', '`1: 3 :5`', '`1: 4: 9`', '`1: 8: 18`', 2),
(177, '93', 'The number of coulombs of charges that passes any section of the conductors in one second is called', 'Power dissipation', 'Current', 'Electromotive force', 'Internal resistance', 2),
(180, '93', 'The drift velocity in the free electron is responsible for the', 'Production of electric current', 'None of these', 'Production of heat energy', 'Power dissipation', 1),
(166, '91', 'In a thermocouple', 'Chemical energy is converted into electrical energy', 'Heat energy is converted into electrical energy', 'Heat energy is converted into mechanical energy', 'Mechanical energy is converted into heat energy', 2),
(179, '93', 'Kilowatt-hour (KWH) is the unit of', 'Power', 'Resistance', 'Energy', 'Resistivity', 3),
(171, '92', 'If a current I flows steadily through a resistor \'R\' for a time \'t\', then total heat energy supplied to the resistor is given by', '`V^2It`', '`I^2Rt`', '`IR^2t^2`', '`V/It`', 2),
(174, '92', 'If the wire of uniform area of cross-section is cut into two equal parts, the resistivity of each parts will be', 'Halved', 'Doubled', 'Remain the same', 'Four times', 3),
(168, '91', 'Ohm is equivalent to', 'coulomb/volt', 'volt/coulomb', 'ampere/volt', 'volt/ampere', 4),
(173, '92', 'The rate of transfer of charges through a circuit is called', 'Resistance', 'Current', 'Energy', 'Potential Difference', 2),
(169, '91', 'A resister carries a current I. The power dissipated is P. The power dissipated if the same resistor carries the current of 3I is', '3P', '9P', '2P', '5P', 1),
(181, '101', 'Example for dia-magnetic materials ', 'Super conductors', 'Alkali metals', 'Transition metals', 'Ferrites', 1),
(185, '101', 'Example for ferri-magnetic materials ', 'Salts of transition elements', 'Rare earth elements', 'Transition metals ', 'Ferrites', 4),
(186, '102', 'Basic source of magnetism', ' Charged particles alone', ' Movement of charged particles ', ' Magnetic dipoles ', 'Magnetic domains ', 2),
(187, '102', 'Magnetic permeability has units as ', ' Tesla ', ' Henry', 'Tesla / m', ' Henry / m', 4),
(191, '103', 'Example for magnetic material used in data storage devices', ' 45 Permalloy ', '` CrO_2 `', 'Cunife ', 'Alnico', 2),
(195, '103', 'Example for ferro-magnetic materials \r\n', 'Super conductors', 'Alkali metals ', 'Transition metals', 'Ferrites', 3),
(182, '101', 'Rock of material which attract is termed as', 'Magnet', 'Magnetite', 'Magnesia', 'Magnetic', 2),
(188, '102', 'Magnets nowadays are made of', 'Iron', 'Steel', 'Both a and b', 'Copper', 3),
(190, '102', 'What is the magnetomotive force in a 75-turn coil of wire when there are 4 A of current through it?', '187 At', '18.75 At', '30 At', '300 At', 4),
(194, '103', 'The unit for reluctance is', '`At/(Wb)`', 'Tesla', '`(At)/m`', '`Wb`', 1),
(184, '101', 'The diameter of a hydrogen atom is approximately\r\n\r\n', '`1.1 X 10^-6` cm', '`1.1 X 10^-7` cm', '`1.1 X 10^-8` cm', '`1.1 X 10^-9` cm', 3),
(192, '103', 'A germanium atom has an atomic weight of 72. How many neutrons are there?\r\n\r\n', '32', '40', '34', '36', 2),
(183, '101', 'If the magnetic material is located within a coil through which alternating current (60 Hz frequency) flows, then x hysteresis loops will be formed every second. Find x\r\n\r\n', '60', '120', '30', '180', 1),
(189, '102', 'Hipernik is an alloy containing ___ iron and ___ nickel\r\n\r\n', '`40%,  60%`', '`60%,  40%`', '`50%,  50%`', '`70%,  30%`', 1),
(193, '103', 'If the number of valence electrons of an atom is more than 4, the substance is called\r\n\r\n', 'a semiconductor', 'a conductor', 'an insulator', ' a semi-insulator', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `id` int(3) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `test_id` int(3) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_subchem`
--

CREATE TABLE `mst_subchem` (
  `sub_id` int(11) NOT NULL,
  `chem_id` int(11) NOT NULL,
  `sub_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subchem`
--

INSERT INTO `mst_subchem` (`sub_id`, `chem_id`, `sub_name`) VALUES
(11, 1, 'Organic Chemistry'),
(12, 2, 'Inorganic Chemistry'),
(13, 3, 'Physical Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'Calculus'),
(2, 'Algebra'),
(3, 'Trigonometry'),
(8, 'Waves and Thermodynamics'),
(7, 'Mechanics 2'),
(6, 'Mechanics 1\r\n'),
(10, 'Magnetism and Electromagnetic Induction'),
(9, 'Electrostatics and Current Electricity\r\n'),
(5, 'Vector and 3D Geometry'),
(4, 'Coordinate Geometry'),
(11, 'Organic Chemistry\r\n\r\n'),
(13, 'Physical Chemistry'),
(12, 'Inorganic Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `mst_submath`
--

CREATE TABLE `mst_submath` (
  `sub_id` int(11) NOT NULL,
  `math_id` int(11) NOT NULL,
  `sub_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_submath`
--

INSERT INTO `mst_submath` (`sub_id`, `math_id`, `sub_name`) VALUES
(1, 1, 'Calculus'),
(2, 2, 'Algebra'),
(3, 3, 'Trigonometry'),
(4, 4, 'Coordinate Geometry'),
(5, 5, 'Vector and 3D Geometry');

-- --------------------------------------------------------

--
-- Table structure for table `mst_subphy`
--

CREATE TABLE `mst_subphy` (
  `sub_id` int(11) NOT NULL,
  `phy_id` int(11) NOT NULL,
  `sub_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subphy`
--

INSERT INTO `mst_subphy` (`sub_id`, `phy_id`, `sub_name`) VALUES
(6, 1, 'Mechanics 1'),
(7, 2, 'Mechanics 2'),
(8, 3, 'Waves and Thermodynamics'),
(9, 4, 'Electrostatics and Current Electricity'),
(10, 5, 'Magnetism and Electromagnetic Induction');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(11) NOT NULL DEFAULT '0',
  `sub_id` int(11) DEFAULT NULL,
  `test_name` varchar(25) DEFAULT NULL,
  `total_que` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(11, 1, 'Mock Test 1', '5'),
(12, 1, 'Mock Test 2', '5'),
(13, 1, 'Mock Test 3', '5'),
(21, 2, 'Mock Test 1', '5'),
(22, 2, 'Mock Test 2', '5'),
(23, 2, 'Mock Test 3', '5'),
(31, 3, 'Mock Test 1', '5'),
(32, 3, 'Mock Test 2', '5'),
(33, 3, 'Mock Test 3', '5'),
(41, 4, 'Mock Test 1', '5'),
(42, 4, 'Mock Test 2', '5'),
(43, 4, 'Mock Test 3', '5'),
(51, 5, 'Mock Test 1', '5'),
(52, 5, 'Mock Test 2', '5'),
(53, 5, 'Mock Test 3', '5'),
(61, 6, 'Mock Test 1', '5'),
(62, 6, 'Mock Test 2', '5'),
(63, 6, 'Mock Test 3', '5'),
(71, 7, 'Mock Test 1', '5'),
(72, 7, 'Mock Test 2', '5'),
(73, 7, 'Mock Test 3', '5'),
(81, 8, 'Mock Test 1', '5'),
(82, 8, 'Mock Test 2', '5'),
(83, 8, 'Mock Test 3', '5'),
(91, 9, 'Mock Test 1', '5'),
(92, 9, 'Mock Test 2', '5'),
(93, 9, 'Mock Test 3', '5'),
(101, 10, 'Mock Test 1', '5'),
(102, 10, 'Mock Test 2', '5'),
(103, 10, 'Mock Test 3', '5'),
(111, 11, 'Mock Test 1', '5'),
(112, 11, 'Mock Test 2', '5'),
(113, 11, 'Mock Test 3', '5'),
(121, 12, 'Mock Test 1', '5'),
(122, 12, 'Mock Test 2', '5'),
(123, 12, 'Mock Test 3', '5'),
(131, 13, 'Mock Test 1', '5'),
(132, 13, 'Mock Test 2', '5'),
(133, 13, 'Mock Test 3', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `id` int(3) NOT NULL,
  `sess_id` varchar(80) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`id`, `sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
(1, 'v9km08v54ip2eb7ph6224a1td6', 121, 'What are the oxidation state of the\r\ncentral metal ion and the charge\r\nof the complex ion for the\r\ncoordination compound\r\n`K_2[Pt(OH)_2 Cl_4]`', '`+4, -2`', '`+4, +2`', '`+4, 0`', '`+2, -2`', 3, 4),
(2, 'v9km08v54ip2eb7ph6224a1td6', 121, 'What kind of chemical bonding is\r\nobligatory in coordination\r\ncompounds?', 'ionic bonding', 'metallic bonding', 'covalent bonding', 'donor-acceptor bonding', 4, 4),
(3, 'v9km08v54ip2eb7ph6224a1td6', 121, 'Color of phenolphthalein in a\r\nsolution of `Na_3PO_4` is', 'colorless', 'blue', 'pink', 'red', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullname`, `username`, `email`, `password`) VALUES
('Smita', 'ss', 'smita_sharma_bkn@yahoo.com', 'ssss'),
('Preksha', 'pp', 'rush2preksha@gmail.com', 'pp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `mst_result`
--
ALTER TABLE `mst_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_subchem`
--
ALTER TABLE `mst_subchem`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_submath`
--
ALTER TABLE `mst_submath`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_subphy`
--
ALTER TABLE `mst_subphy`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_useranswer`
--
ALTER TABLE `mst_useranswer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `mst_result`
--
ALTER TABLE `mst_result`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_useranswer`
--
ALTER TABLE `mst_useranswer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
