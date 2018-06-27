/*
Navicat MySQL Data Transfer

Source Server         : wenhua
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-06-27 17:13:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `content` longtext,
  `createTime` timestamp NULL DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('25', '232323', '   				 <p>   				 <p>   				 <p>   				 </p><p>新更新的内容</p>\r\n				<p></p>\r\n				<p><br></p></p>\r\n				</p>\r\n				', '2018-06-27 15:32:33', 'admin', '1');
INSERT INTO `blog` VALUES ('27', 'javaeretrt', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:10', 'admin', '1');
INSERT INTO `blog` VALUES ('28', 'AAAAAAAAAjava', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:19', 'admin', '1');
INSERT INTO `blog` VALUES ('29', '沃尔特java', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:30', 'admin', '1');
INSERT INTO `blog` VALUES ('30', '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:48', 'admin', '1');
INSERT INTO `blog` VALUES ('32', '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:53', 'admin', '1');
INSERT INTO `blog` VALUES ('46', 'adfgfjavert', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:26', 'admin', '1');
INSERT INTO `blog` VALUES ('47', '123213jav45t45', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:39', 'admin', '1');
INSERT INTO `blog` VALUES ('51', '富文本测试', '   				 <p>code测试</p><pre style=\"max-width: 100%;\"><code class=\"java hljs\" codemark=\"1\"><span class=\"hljs-comment\">/**\r\n	 * 查看登录用户的所博客\r\n	 * <span class=\"hljs-doctag\">@param</span> userId 当前登录用户Id\r\n	 * <span class=\"hljs-doctag\">@param</span> page 当前页码\r\n	 * <span class=\"hljs-doctag\">@param</span> rows 每页记录数量\r\n	 * <span class=\"hljs-doctag\">@return</span> page对象\r\n	 */</span>\r\n	<span class=\"hljs-meta\">@RequestMapping</span>(value=<span class=\"hljs-string\">\"/user/blog_list\"</span>,method=RequestMethod.GET)\r\n	<span class=\"hljs-function\"><span class=\"hljs-keyword\">public</span> ModelAndView <span class=\"hljs-title\">selectAllByUserId</span><span class=\"hljs-params\">(Integer userId,@RequestParam(required = <span class=\"hljs-keyword\">false</span>,defaultValue=<span class=\"hljs-string\">\"1\"</span>)</span>Integer page,@<span class=\"hljs-title\">RequestParam</span><span class=\"hljs-params\">(required = <span class=\"hljs-keyword\">false</span>,defaultValue=<span class=\"hljs-string\">\"5\"</span>)</span>Integer rows)</span>{\r\n		ModelAndView mv = <span class=\"hljs-keyword\">new</span> ModelAndView();\r\n		PageHelper.startPage(page, rows);\r\n		List&lt;Blog&gt; list = blogService.selectAllbyUserId(userId, page, rows);\r\n		PageInfo&lt;Blog&gt; p = <span class=\"hljs-keyword\">new</span> PageInfo&lt;Blog&gt;(list);\r\n		mv.addObject(<span class=\"hljs-string\">\"page\"</span>, p);\r\n		mv.addObject(<span class=\"hljs-string\">\"userId\"</span>, userId);\r\n		mv.setViewName(<span class=\"hljs-string\">\"user/blog_list\"</span>);\r\n		<span class=\"hljs-keyword\">return</span> mv;\r\n	}</code></pre><p>文本测试：</p><p><b><u>这样，你就定义了一个变量a，这个变量除了有x和y两个公有成员外，还有两个add和mul两个函数（公有方法）。但是这样的定义方法的缺点有2条：</u></b></p><p>1<font color=\"#00ffff\">.批量生成对象很不方便，如果你var b=a;那么你每次修改b的成员，都会同时改掉a的</font><font color=\"#000000\" style=\"background-color: rgb(255, 0, 0);\">成员，因为JavaScript的引用机制</font></p><p></p><blockquote><p>2.如果每次生成对象需要自定义一些成员，都要写出相应的赋值操作，增加代码行数。</p></blockquote><p><br></p>', '2017-03-05 01:38:50', '123', '3');
INSERT INTO `blog` VALUES ('52', 'java核心技术', '   				 <p>请输入内容...</p>\r\n				<p>你的背包</p>', '2018-06-21 17:07:25', 'admin', '1');
INSERT INTO `blog` VALUES ('53', 'java核心', '   				 nihao<p></p>\r\n				<p></p>\r\n				<p><br></p><p></p>\r\n				<p></p>\r\n				<p></p>\r\n				<p><br></p><p></p>\r\n				<p></p>\r\n				<p><br></p>', '2018-06-27 16:39:21', 'admin', '1');
INSERT INTO `blog` VALUES ('56', 'java算法', '   				 <p>   				 <p>   				 </p><p>   				 </p><p>想学java算法吗2222</p>\r\n				<p><br></p><p></p>\r\n				<p><br></p><p></p>\r\n				<p><br></p></p>\r\n				', '2018-06-27 15:32:28', 'admin', '1');
INSERT INTO `blog` VALUES ('61', '学习java', '   				 <p>想好好学习java</p>\r\n				<p><br></p>', '2018-06-22 10:57:27', 'admin', '1');
INSERT INTO `blog` VALUES ('66', '谭建', '   				 <p>   				 这是完美的一天~~拉拉拉拉拉拉~~~<br></p>\r\n				<p><br></p>', '2018-06-27 15:34:41', 'tanjian', '18');
INSERT INTO `blog` VALUES ('68', '完工', '   				 <p>   				 </p><p>   				 </p><p>娃哈哈终于弄完啦<br></p>\r\n				<p>gggggg<br></p><p></p>\r\n				<p></p>\r\n				<p><br></p>', '2018-06-27 16:22:09', 'lala', '19');
INSERT INTO `blog` VALUES ('71', '第一篇博客', '   				 <p>   				 <p>   				 <p>新的博客<br></p>\r\n				<p><br></p></p>\r\n				</p>\r\n				', '2018-06-27 17:09:00', 'zhuce', '20');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'delete');
INSERT INTO `permission` VALUES ('2', 'edit');
INSERT INTO `permission` VALUES ('3', 'list');
INSERT INTO `permission` VALUES ('4', 'UI1');
INSERT INTO `permission` VALUES ('5', 'UI2');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'manager');
INSERT INTO `role` VALUES ('3', 'user');
INSERT INTO `role` VALUES ('4', 'IOS_dev');
INSERT INTO `role` VALUES ('5', 'JAVA_dev');
INSERT INTO `role` VALUES ('6', 'PHP_dev');
INSERT INTO `role` VALUES ('7', 'UI_dev');
INSERT INTO `role` VALUES ('8', 'C++_dev');
INSERT INTO `role` VALUES ('9', 'C_dev');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL,
  `permission_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '2', '2');
INSERT INTO `role_permission` VALUES ('5', '2', '3');
INSERT INTO `role_permission` VALUES ('6', '3', '3');
INSERT INTO `role_permission` VALUES ('7', '4', '4');
INSERT INTO `role_permission` VALUES ('8', '4', '4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `regTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '2018-12-26', 'male', '34343@qw.com', '1', '2018-06-18 12:53:39');
INSERT INTO `user` VALUES ('13', 'Micheal', '123', '2018-03-23', 'Female', '232434@123.com', '1', '2018-06-18 22:53:39');
INSERT INTO `user` VALUES ('14', 'Jess', '123', '2018-03-02', 'Female', '1232132@123.com', '1', '2018-06-18 22:53:39');
INSERT INTO `user` VALUES ('15', '郑文华', '123456', '1996-08-27', '女', '1727399883@qq.com', '1', '2018-06-21 17:00:51');
INSERT INTO `user` VALUES ('16', 'zhengwh261', '123', '2018-02-01', '女', '1727399883@qq.com', '1', '2018-06-21 20:56:33');
INSERT INTO `user` VALUES ('17', 'yufeng', '123', '2005-01-01', '女', '1727399883@qq.com', '1', '2018-06-25 17:13:35');
INSERT INTO `user` VALUES ('18', 'tanjian', '123', '2018-06-04', '女', 'qqq@qq.com', '1', '2018-06-27 15:33:35');
INSERT INTO `user` VALUES ('19', 'lala', '123', '2018-05-27', '男', 'qqqq@qq.com', '1', '2018-06-27 16:19:18');
INSERT INTO `user` VALUES ('20', 'zhuce', '123', '2018-06-28', '女', '11@qq.com', '1', '2018-06-27 16:59:52');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('198', '1', '1');
INSERT INTO `user_role` VALUES ('199', '1', '2');
INSERT INTO `user_role` VALUES ('200', '1', '3');
INSERT INTO `user_role` VALUES ('244', '15', '1');
INSERT INTO `user_role` VALUES ('249', '16', '5');
INSERT INTO `user_role` VALUES ('251', '14', '4');
INSERT INTO `user_role` VALUES ('253', '19', '3');
INSERT INTO `user_role` VALUES ('254', '17', '3');
INSERT INTO `user_role` VALUES ('256', '20', '2');
INSERT INTO `user_role` VALUES ('257', '13', '3');
