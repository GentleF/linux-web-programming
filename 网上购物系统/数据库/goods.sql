/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50022
 Source Host           : localhost:3306
 Source Schema         : shoppingtest

 Target Server Type    : MySQL
 Target Server Version : 50022
 File Encoding         : 65001

 Date: 26/05/2020 18:44:49
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `gid` int(11) NOT NULL DEFAULT '',
  `Gname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Number` int(11) NULL DEFAULT NULL,
  `Gphoto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Types` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Producer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Price` float(10, 2) NULL DEFAULT NULL,
  `Carriage` float(10, 2) NULL DEFAULT NULL,
  `Pdate` date NULL DEFAULT NULL,
  `Paddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Described` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`gid`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'CAD', 40, 'CAD1.jpg&CAD2.jpg&CAD3.jpg', '书籍', '清华大学出版社', 32.00, 6.00, '2015-07-23', '从广州发货', '《AutoCAD 2015中文版从新手到高手（标准版）》综合介绍AutoCAD 2015中文版的基础知识和应用技巧。全书共14章，其中第1～10章主要介绍AutoCAD 2015中文版在二维平面的基础知识和使用技巧，第11～14章主要介绍三维对象在软件中的创建方法及编辑技巧。每一章的知识点都配有案例讲解，使读者对知识点有更进一步的了解，并在每章最后配有巩固练习实例，使读者能综合运用全章的知识点。');
INSERT INTO `goods` VALUES (2, 'HeadFirstJava', 38, 'HeadFirstJava1.jpg&HeadFirstJava2.jpg&HeadFirstJava3.jpg', '书籍', '中国电力出版社', 50.00, 0.00, '2013-09-13', '从当当发货', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。');
INSERT INTO `goods` VALUES (3, 'JavaScript权威指南', 99, 'JavaScript权威指南1.jpg&JavaScript权威指南2.jpg', '书籍', '机械工业出版社', 73.00, 4.00, '2016-01-03', '从湖南发货', '本书要讲述的内容涵盖JavaScript语言本身，以及Web浏览器所实现的JavaScriptAPI。本书第6版涵盖了HTML5和ECMAScript5，很多章节完全重写，增加了当今Web开发的最佳实践的内容，新增的章节包括jQuery、服务器端JavaScript、图形编程以及JavaScript式的面向对象。本书不仅适合初学者系统学习，也适合有经验的 JavaScript 开发者随手翻阅。');
INSERT INTO `goods` VALUES (4, 'java编程思想', 68, 'java编程思想1.jpg&java编程思想2.jpg', '书籍', '机械工业出版社', 98.00, 0.00, '2015-09-23', '从内蒙古发货', '从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、JavaI/O系统、枚举类型、并发以及图形化用户界面等内容。');
INSERT INTO `goods` VALUES (5, 'java从入门到精通', 1029, 'java从入门到精通1.jpg&java从入门到精通2.jpg', '书籍', '机械工业出版社', 48.00, 0.00, '2012-10-06', '从内蒙古发货', '《Java从入门到精通（第3版）》从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细介绍了使用Java语言进行程序开发需要掌握的知识。全书分为28章，包括初识Java，熟悉Eclipse开发工具，Java语言基础，流程控制，字符串，数组，类和对象，包装类，数字处理类，接口、继承与多态，类的高级特性，异常处理等。');
INSERT INTO `goods` VALUES (6, '第一行代码', 940, '第一行代码1.jpg&第一行代码2.jpg', '书籍', '机械工业出版社', 48.00, 0.00, '2012-10-06', '从内蒙古发货', '《第一行代码——Android》是Android初学者的最佳入门书。全书由浅入深、系统全面地讲解了Android软件开发的方方面面。　　第1章带领你搭建Android开发环境，完成你的第一个Android程序。第2章至第13章完整地讲解了Android开发中的各种基本知识和关键技术，包括四大组件、UI、碎片、广播机制、数据存储、服务、多媒体、网络、定位服务、传感器，以及分布式版本控制系统Git的使用等等。在部分章节会穿插相关技术的高级使用技巧。第14章和第15章则将带领你编写一个完整的项目，教会你如何打包、上架、嵌入广告并获得盈利。');
INSERT INTO `goods` VALUES (7, '疯狂Android讲义', 339, '疯狂Android讲义1.jpg&疯狂Android讲义2.jpg&疯狂Android讲义3.jpg', '书籍', '北京大学出版社', 57.00, 4.00, '2015-10-06', '从北京发货', '移动互联网是当今世界发展快、市场潜力大、前景诱人的一项业务，而Android则是移动互联网上市场占有率很高的平台。本书是《疯狂Android讲义》的第3版，本书基于最新的Android 5，并采用了Google推荐的IDE：Android Studio作为开发工具，书中每个案例、每个截图都全面升级到Android 5。本书全面介绍了Android应用开发的相关知识，全书内容覆盖了Android用户界面编程、Android四大组件、Android资源访问、图形/图像处理、事件处理机制、Android输入/输出处理、音频/视频多媒体应用开发、OpenGL与3D应用开发、网络通信编程、Android平台的Web Service、传感器应用开发、GPS应用开发、整合第三方Map服务等。');
INSERT INTO `goods` VALUES (8, '史记', 89, '史记1.jpg&史记2.jpg', '书籍', '北京大学出版社', 104.00, 0.00, '2016-05-06', '从香港发货', '汉朝司马迁作的《史记》是中国两千年来最伟大的历史名著，其中有许多文学名篇。因为司马迁具有丰富的社会实践、比较进步的历史观点和高度的文学修养，所以他能够审择史料，创设体例，刻画人物，把先秦以来多方面的史实和他当代社会各阶层的形形色色，的动态如买地反映出来，写成这样一部完整丰富的“通史”。更因这部书有完密的体例，可以妥贴地安排多方面的史实，于是就被那些由汉朝到清朝的许多史学家所接受和取法，无形中便规定了他们写历史的范式。另一方面，又因这书的内容丰富灿烂，生动地塑造了各种类型的人物形象，反映了社会的复杂生活，于是又被后来历代的文学家奉为典范，在中国文学史上发生了莫大的影响。《史记》像一颗不落的星辰，永远照耀在历史的长河上；《史记》像一座山，永远矗立在中华民族和全世界的文化之林。');
INSERT INTO `goods` VALUES (9, '算法时代', 0, '算法时代1.jpg&算法时代2.jpg&算法时代3.jpg', '书籍', '北京大学出版社', 38.00, 2.00, '2015-05-06', '从浙江发货', ' 在《算法时代》一书中，作者带领读者展开了一次算法和大数据世界的探索之旅：探寻我们如何开始相信大数据的力量；向我们介绍人工智能专家、大数据科学家和硅谷的创业家们，是他们创造了这个美丽的新世界。在当下以及未来，当大数据和算法成为社会、企业和个人已经无法忽视的资产时，就会催生一些新型经济模式。毋庸置疑，算法将成为新经济的新引擎。如果你对人工智能、大数据、互联网技术和算法感兴趣，《算法时代》就非常适合你阅读。');
INSERT INTO `goods` VALUES (10, '狼奎毛笔', 74, '狼奎毛笔1.jpg&狼奎毛笔2.jpg&狼奎毛笔3.jpg', '文房四宝', '广东深圳', 13.00, 0.00, '2015-07-02', '从江西发货', '狼毫羊毫兼毫毛笔套装 欧体颜体赵体行楷篆书画专用毛笔 书法绘画练习文房用品 北尾兰竹 出锋3.6/3.2/2.8cm 套装');
INSERT INTO `goods` VALUES (11, '红木毛笔', 22, '红木毛笔1.jpg&红木毛笔2.jpg&红木毛笔3.jpg', '文房四宝', '江西南昌', 23.00, 4.00, '2016-04-05', '从江西发货', '特价文房四宝正品善琏湖笔纯狼毫毛笔纯尾狼王行楷书专用笔');
INSERT INTO `goods` VALUES (12, '一品羊毫', 28, '一品羊毫1.jpg&一品羊毫2.jpg&一品羊毫3.jpg', '文房四宝', '广东广州', 34.00, 0.00, '2016-01-01', '从广东发货', '文房四宝毛笔湖笔羊毫兼毫对联书法笔国画狼毫大中小楷');
INSERT INTO `goods` VALUES (13, '计算器', 33, '计算器1.jpg&计算器2.jpg&计算器3.jpg', '文具', '广东汕头', 23.00, 8.00, '2016-05-10', '从广东发货', '卡西欧（CASIO） FX-82CN X 中文版 函数科学计算器 黑色 支持中文显示 适用初中高中');
INSERT INTO `goods` VALUES (14, '彩色长尾夹', 11, '彩色长尾夹1.jpg&彩色长尾夹2.jpg&彩色长尾夹3.jpg', '文具', '广东惠来', 12.00, 0.00, '2015-03-13', '从广东发货', '25mm彩色长尾夹/长尾票夹 48只/筒');
INSERT INTO `goods` VALUES (15, '修正带', 7, '修正带1.jpg&修正带2.jpg&修正带3.jpg', '文具', '江西南昌', 14.00, 3.00, '2016-02-27', '从江西发货', '经典8m修正带改正带涂改带6个装');

SET FOREIGN_KEY_CHECKS = 1;
