-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 127.0.0.1
-- Port     : 3306
-- Database : car
-- 
-- Part : #1
-- Date : 2020-03-16 17:43:07
-- -----------------------------

SET FOREIGN_KEY_CHECKS = 0;


-- -----------------------------
-- Table structure for `c_banner`
-- -----------------------------
DROP TABLE IF EXISTS `c_banner`;
CREATE TABLE `c_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据id',
  `data_id` int(11) DEFAULT '0' COMMENT '数据ID',
  `image` varchar(200) DEFAULT '' COMMENT '图片地址',
  `type` int(11) DEFAULT '0' COMMENT '类型：1产品2实训室3案例',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- -----------------------------
-- Records of `c_banner`
-- -----------------------------
INSERT INTO `c_banner` VALUES ('1', '2', '/upload/banner/image/62/aaaba56b3e4b5f3f656f68bb1fd2d7.jpg', '2', '1583986288');
INSERT INTO `c_banner` VALUES ('2', '1', '/upload/banner/image/65/f983115e044dcd7625e908c91b7c99.jpg', '2', '1583986322');
INSERT INTO `c_banner` VALUES ('3', '2', '/upload/banner/image/ef/a658af4d6104ea76c365561ff92906.jpg', '2', '1583986336');

-- -----------------------------
-- Table structure for `c_case`
-- -----------------------------
DROP TABLE IF EXISTS `c_case`;
CREATE TABLE `c_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `category_id` int(11) DEFAULT '0' COMMENT '分类ID',
  `title` varchar(100) DEFAULT '' COMMENT '案例标题',
  `image` varchar(100) DEFAULT '' COMMENT '案例主图',
  `content` text COMMENT '详细内容',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='案例表';

-- -----------------------------
-- Records of `c_case`
-- -----------------------------
INSERT INTO `c_case` VALUES ('1', '1', '山东聊城汽车实训室', '/upload/case/image/f6/00cc6ac07011ff26e929c57c54123a.png', '&lt;p&gt;&lt;span&gt;聊城汽车实训室设置了从中低档到高档车的全面整车实训车间，以及个基础部件的配合实训车间，如，别克、大众、丰田、迈腾、宝马等实训车间，以及电子电工、防盗系统等实训车间，全面系统化的实训车间。且设备采用二维码在线教学系统，可用于老师在线教学和学生自学复习。&lt;/span&gt;&lt;/p&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/case/image/88/ddb189f72fb538b423e84c93bfa751.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;p&gt;&lt;span&gt;模型教学是北方人的立足之本，是北方学子掌握前沿修车技术的法宝，更是北方学子在工作单位中的坚强后盾。研究所数十位汽修行业的优秀工程师与国内外知名教授每年都会访问欧、美、日、韩众多汽车制造商，与国际同行一同针对行业新技术展开研讨，研发中心根据访问成果开发代表先进技术的新一代产品，每年设计、研发、制造的全新的教具模型、实践设备上百款，为北方集团，以及汽车教育行业的优质教学效果奠定了坚实的物质基础。&lt;/span&gt;&lt;/p&gt;', '1584096520');
INSERT INTO `c_case` VALUES ('2', '2', '河南郑州汽车实训室', '/upload/case/image/40/c9ed7e892f0438f534fe7a29bd4c6f.jpg', '&lt;p&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 郑州汽车实训室，由奔驰实训车间、 宝马实训车间、 奥迪实训车间、美容实训车间等多部分组成，每个实训车间都配备了诊断仪器,资料数据库等内容，设备采用二维码在线教学系统，基于智能化环境运行，可用于老师在线教学和学生自学复习，适用于对汽车整车教学和维修实训的教学需要。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;本着精益求精、务实创新的精神，中职北方研究所由1996年创立之初研发的第一代教学模型发展到如今的第九代教学实验模型，为广大汽修同仁及各大大中院校提供了完备的实训室建设方案。&lt;/span&gt;&lt;/p&gt;', '1584003895');

-- -----------------------------
-- Table structure for `c_case_category`
-- -----------------------------
DROP TABLE IF EXISTS `c_case_category`;
CREATE TABLE `c_case_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `category_name` varchar(100) DEFAULT '' COMMENT '分类名称',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `c_case_category`
-- -----------------------------
INSERT INTO `c_case_category` VALUES ('1', '华北地区', '1584004686');
INSERT INTO `c_case_category` VALUES ('2', '华南地区', '1584003396');
INSERT INTO `c_case_category` VALUES ('3', '华东地区', '1584003406');
INSERT INTO `c_case_category` VALUES ('4', '华中地区', '1584003415');
INSERT INTO `c_case_category` VALUES ('5', '东北地区', '1584004701');

-- -----------------------------
-- Table structure for `c_company`
-- -----------------------------
DROP TABLE IF EXISTS `c_company`;
CREATE TABLE `c_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `content` text COMMENT '公司简介',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公司介绍表';

-- -----------------------------
-- Records of `c_company`
-- -----------------------------
INSERT INTO `c_company` VALUES ('1', '&lt;p&gt;公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/company/image/88/ddb189f72fb538b423e84c93bfa751.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;/p&gt;&lt;p&gt;公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介&lt;/p&gt;&lt;/p&gt;', '1584175561');
INSERT INTO `c_company` VALUES ('2', '&lt;p&gt;电话：135465464646&lt;/p&gt;&lt;p&gt;地址：邯郸市广平县&lt;/p&gt;', '1584177691');

-- -----------------------------
-- Table structure for `c_feedback`
-- -----------------------------
DROP TABLE IF EXISTS `c_feedback`;
CREATE TABLE `c_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '反馈ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(100) DEFAULT '' COMMENT '姓名',
  `tel` varchar(11) DEFAULT '' COMMENT '电话',
  `email` varchar(20) DEFAULT '' COMMENT '邮箱',
  `title` varchar(100) DEFAULT '' COMMENT '反馈标题',
  `content` text COMMENT '反馈内容',
  `c_time` varchar(11) DEFAULT '' COMMENT '反馈时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='反馈表';

-- -----------------------------
-- Records of `c_feedback`
-- -----------------------------
INSERT INTO `c_feedback` VALUES ('1', '0', '晴晴', '17600969308', '2538668046@qq.com', '测试反馈标题', '反馈反馈反馈反馈反馈反馈反馈反馈', '1584174673');
INSERT INTO `c_feedback` VALUES ('2', '0', '1', '13730012345', '309464658@qq.com', '4', '5', '1584176415');
INSERT INTO `c_feedback` VALUES ('3', '0', '1', '13730012345', '309464658@qq.com', '4', '5', '1584176431');
INSERT INTO `c_feedback` VALUES ('4', '0', '1', '13730012345', '309464658@qq.com', '4', '5', '1584176434');

-- -----------------------------
-- Table structure for `c_jobs`
-- -----------------------------
DROP TABLE IF EXISTS `c_jobs`;
CREATE TABLE `c_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `c_laboratory`
-- -----------------------------
DROP TABLE IF EXISTS `c_laboratory`;
CREATE TABLE `c_laboratory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `category_id` int(11) DEFAULT '0' COMMENT '分类ID',
  `laboratory_name` varchar(100) DEFAULT '' COMMENT '实验室名称',
  `image` varchar(150) DEFAULT '' COMMENT '主图片地址',
  `introduction` varchar(500) DEFAULT '' COMMENT '简介',
  `video` varchar(150) DEFAULT NULL COMMENT '视频地址',
  `file` varchar(150) DEFAULT NULL COMMENT '文件地址',
  `content` text COMMENT '详情介绍',
  `share_number` int(11) DEFAULT '0' COMMENT '分享次数',
  `fabulous_number` int(11) DEFAULT '0' COMMENT '点赞次数',
  `is_wisdom` int(11) DEFAULT '0' COMMENT '是否是智慧实验室1是0不是',
  `watch_number` int(11) DEFAULT '0' COMMENT '观看次数',
  `c_time` varchar(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='实验室表';

-- -----------------------------
-- Records of `c_laboratory`
-- -----------------------------
INSERT INTO `c_laboratory` VALUES ('1', '7', '奥迪智慧实训室', '/upload/laboratory/image/ae/f9074e441f6ba1b18f2fc6eee9f5e0.jpg', '以奥迪A6L发动机实物为基础，由主台架、控制检测面板两部分组成。适用于汽油发动机构造与维修实训教学，能够满足对汽油发动机的结构、工作原理、故障设置及诊断的教学需要。', '/upload/laboratory/video/20200316/517e600e65e79c665704f97852afbb67.mp4', '/upload/laboratory/file/20200316/58b8899030ba271f3b5bd93a98a2ba89.pdf', '&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/26/1641fb549d3b3197a9fde99cfcfaa2.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/97/d4f00ca4e975c9da04a0c02e1e17f0.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/0b/6656acb9dd2f4ecd3f885eb988cd01.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/6a/c975f6a85edb906029fdcc43b91744.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/58/b898518f0bfad396d8889c76f3d55c.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/e4/f363af86f1dbd74e1e03b2bcdc529e.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/79/b157423c023a82bf175b7419cd9cc0.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/29/abba6d6f60a8a584f02a7fc855de03.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/d8/76a9e758847eb20226a40d0cddbd92.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/04/01cab4edd46ecdabcc56b2d89ff337.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/e3/19ca98b92822775bdacbf10c2629b4.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/6f/8b3d6fae61cbea723124cdd9181aa9.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/a1/4c26843371fd728c89e41e01ee1545.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/81/f95b3b13113ab6f0e186a7fd0624d8.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/90/5b85c1b03923b2191e4c4a71d993e2.jpg&quot; alt=&quot;undefined&quot;&gt;', '0', '0', '1', '107', '1584349787');
INSERT INTO `c_laboratory` VALUES ('2', '4', '特斯拉纯电动智慧实训室', '/upload/laboratory/image/b0/aa130286e7fd78f3f5ec2ce497395c.jpg', '2017年5月 发动机 ：纯电动387马力电动机 变速箱：电动车单速变速箱 车身类型：5门5坐掀背车 长*宽*高：4970*1964*1445 轴距：2960 最高车速：225该汽车外加整车实训台示教板面板上安装有检测端子，采用无损32针插头链接汽车仪表及仪表传感器与外部灯光系统、发动机系统可直接在面板上检测汽车仪表与外部灯光系统各电路元件的电信号，如电阻、电压、电流、频率信号等。', '/upload/laboratory/video/20200316/63816d8028ac4d4f098d746a6233a2d5.mp4', '/upload/laboratory/file/20200316/eeb769c2d75b80f91381abcb8a4f5395.pdf', '&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/b4/522cc9b9767eefcc00865ad7fdfbb7.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/c6/bc0d0b34654b1f1fbbd1e17eb8e1f4.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/b0/2d32a86364ea25697f7851ad6f719c.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/63/30bf786d7c2c0549ac5085fbe29c18.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/52/84e18b2b81862ddd467e552f07d9e9.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/76/fba63d92367e48a801e3e9fc712879.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/b8/40b7f5b54f5d94b42f1c1b1ec450e7.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/18/7ffe85a241748959c63c2c9705db00.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/bf/6e2a5bf0ec3ed81717198a1b21310c.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/46/dec3080656fc579669bbfe4845d1b4.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/f4/7798946bb0691b519087c78db1f428.jpg&quot; alt=&quot;undefined&quot;&gt;', '0', '0', '1', '107', '1584349403');
INSERT INTO `c_laboratory` VALUES ('3', '7', '宝马智慧实训室', '/upload/laboratory/image/46/677ff714add0977810c3ab76f79e03.jpg', '以宝马17款宝马5系2.0T发动机+变速器实物为基础，由主台架、控制检测面板两部分组成。适用于汽油发动机构造与维修实训教学，能够满足对汽油发动机的结构、工作原理、故障设置及诊断的教学需要。', '', '/upload/laboratory/file/20200316/f51fd0d2959271d002736fdfbe409965.pdf', '&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/a0/d598f692165dc453f14b5a4cae903b.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/d0/762240109a074dff5b8ea4d1ec6aa8.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/2b/ef40839434398069715ba00c4a3fe2.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/f6/fb38ffa99c8d07fa404024054ea238.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/4a/04b0c896cd39e26b89aec1a9135fd3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/1a/a7f638b4bb1e2776fae1e2957acfee.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/78/53eb7a255718a2ee160b903014814c.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/8f/a34fbfe8d1f00b6ed4e839e041e487.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/68/f0dea923455703a93c8ad4144b0cef.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/07/7cad4017e6290ceb53c182b565c67d.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/1c/5ca4000df5b96e9104bdd2c45c93a3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/c4/913089c6252ce326b11571f17c569b.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/42/7bba4fdbf50744abfc99c2a3fdbf19.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/2a/5a3c95592465d32294c3a00fcf6ec3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http://cmf.qc110.cn/upload/laboratory/image/f2/1ea800e8a078110f2832f02521c626.jpg&quot; alt=&quot;undefined&quot;&gt;', '0', '0', '0', '1', '1584351633');

-- -----------------------------
-- Table structure for `c_laboratory_category`
-- -----------------------------
DROP TABLE IF EXISTS `c_laboratory_category`;
CREATE TABLE `c_laboratory_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `category_name` varchar(100) DEFAULT '' COMMENT '分类名称',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `c_laboratory_category`
-- -----------------------------
INSERT INTO `c_laboratory_category` VALUES ('3', '无人驾驶', '1584345285');
INSERT INTO `c_laboratory_category` VALUES ('4', '混电动汽车', '1584345330');
INSERT INTO `c_laboratory_category` VALUES ('5', '混合动力', '1584345349');
INSERT INTO `c_laboratory_category` VALUES ('7', '奔宝奥实训室', '1584350644');

-- -----------------------------
-- Table structure for `c_laboratory_video`
-- -----------------------------
DROP TABLE IF EXISTS `c_laboratory_video`;
CREATE TABLE `c_laboratory_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `la_id` int(11) DEFAULT '0' COMMENT '实验室ID',
  `name` varchar(100) DEFAULT NULL COMMENT '视频名称',
  `video` varchar(150) DEFAULT NULL COMMENT '视频地址',
  `download` varchar(150) DEFAULT NULL COMMENT '下载地址',
  `content` text COMMENT '详情介绍',
  `share_number` int(11) DEFAULT '0' COMMENT '分享次数',
  `fabulous_number` int(11) DEFAULT '0' COMMENT '点赞次数',
  `watch_number` int(11) DEFAULT '0' COMMENT '观看次数',
  `c_time` varchar(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实验室系列视频表';


-- -----------------------------
-- Table structure for `c_product`
-- -----------------------------
DROP TABLE IF EXISTS `c_product`;
CREATE TABLE `c_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `category_id` int(11) DEFAULT '0' COMMENT '分类ID',
  `product_name` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `image` varchar(100) DEFAULT '' COMMENT '主图地址',
  `images` text COMMENT '产品图片地址',
  `video` varchar(150) DEFAULT NULL COMMENT '视频地址',
  `file` varchar(150) DEFAULT NULL COMMENT '文件地址',
  `content` text COMMENT '详情介绍',
  `share_number` int(11) DEFAULT '0' COMMENT '分享次数',
  `fabulous_number` int(11) DEFAULT '0' COMMENT '点赞次数',
  `c_time` varchar(11) DEFAULT NULL COMMENT '增加时间',
  PRIMARY KEY (`id`),
  KEY `pc_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品管理表';

-- -----------------------------
-- Records of `c_product`
-- -----------------------------
INSERT INTO `c_product` VALUES ('1', '1', '特斯拉电池管理系统', '/upload/product/image/42/2ff64011fb3dfc30e71a720129f866.jpg', '/upload/product/images/20200312/52739f10f78e321bdac67e28b2e610d7.jpg', '', '', '&lt;p&gt;&lt;img src=&quot;/upload/product/image/56/2e7152ac495b9be297ab2a58f4c14a.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;该系统主要让学员学习特斯拉电池热冷管理智能交互系统的核心技术，管路采用透明装置，方便党员观察动力单元温控系统、电池加热系统、电池冷却系统之间的转换，熟知各系统的循环水泵及转换阀之间的工作原理，该设备安装有流水灯原理展示系统，老师可下载APP通过手机演示热冷管理系统的9种工况。目的让学生了解热冷管理智能交互系统的布置、认知、检测、诊断和维修。&lt;/p&gt;', '0', '0', '1583997679');

-- -----------------------------
-- Table structure for `c_product_category`
-- -----------------------------
DROP TABLE IF EXISTS `c_product_category`;
CREATE TABLE `c_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据ID',
  `name` varchar(100) DEFAULT NULL COMMENT '产品管理分类名称',
  `c_time` varchar(11) DEFAULT NULL COMMENT '增加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品管理分类表';

-- -----------------------------
-- Records of `c_product_category`
-- -----------------------------
INSERT INTO `c_product_category` VALUES ('1', '新能源管理系统', '1583996789');
INSERT INTO `c_product_category` VALUES ('2', '发动机系统', '1583996920');
INSERT INTO `c_product_category` VALUES ('3', '变速箱系统', '1583996931');
INSERT INTO `c_product_category` VALUES ('4', '舒适系统', '1583996889');
INSERT INTO `c_product_category` VALUES ('5', '底盘系统', '1583996906');

-- -----------------------------
-- Table structure for `c_system_annex`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_annex`;
CREATE TABLE `c_system_annex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联的数据ID',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '类型',
  `group` varchar(100) NOT NULL DEFAULT 'sys' COMMENT '文件分组',
  `file` varchar(255) NOT NULL COMMENT '上传文件',
  `hash` varchar(64) NOT NULL COMMENT '文件hash值',
  `size` decimal(12,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '附件大小KB',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '使用状态(0未使用，1已使用)',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[系统] 上传附件';


-- -----------------------------
-- Table structure for `c_system_annex_group`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_annex_group`;
CREATE TABLE `c_system_annex_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '附件分组',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件数量',
  `size` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '附件大小kb',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[系统] 附件分组';


-- -----------------------------
-- Table structure for `c_system_config`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_config`;
CREATE TABLE `c_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统配置(1是，0否)',
  `group` varchar(20) NOT NULL DEFAULT 'base' COMMENT '分组',
  `title` varchar(20) NOT NULL COMMENT '配置标题',
  `name` varchar(50) NOT NULL COMMENT '配置名称，由英文字母和下划线组成',
  `value` text NOT NULL COMMENT '配置值',
  `type` varchar(20) NOT NULL DEFAULT 'input' COMMENT '配置类型()',
  `options` text NOT NULL COMMENT '配置项(选项名:选项值)',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件上传接口',
  `tips` varchar(255) NOT NULL COMMENT '配置提示',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='[系统] 系统配置';

-- -----------------------------
-- Records of `c_system_config`
-- -----------------------------
INSERT INTO `c_system_config` VALUES ('1', '1', 'sys', '扩展配置分组', 'config_group', '', 'array', ' ', '', '请按如下格式填写：&lt;br&gt;键值:键名&lt;br&gt;键值:键名&lt;br&gt;&lt;span style=&quot;color:#f00&quot;&gt;键值只能为英文、数字、下划线&lt;/span&gt;', '2', '1', '1492140215', '1492140215');
INSERT INTO `c_system_config` VALUES ('13', '1', 'base', '网站域名', 'site_domain', '', 'input', '', '', '', '2', '1', '1492140215', '1492140215');
INSERT INTO `c_system_config` VALUES ('14', '1', 'upload', '图片上传大小限制', 'upload_image_size', '0', 'input', '', '', '单位：KB，0表示不限制大小', '3', '1', '1490841797', '1491040778');
INSERT INTO `c_system_config` VALUES ('15', '1', 'upload', '允许上传图片格式', 'upload_image_ext', 'jpg,png,gif,jpeg,ico', 'input', '', '', '多个格式请用英文逗号（,）隔开', '4', '1', '1490842130', '1491040778');
INSERT INTO `c_system_config` VALUES ('16', '1', 'upload', '缩略图裁剪方式', 'thumb_type', '2', 'select', '1:等比例缩放
2:缩放后填充
3:居中裁剪
4:左上角裁剪
5:右下角裁剪
6:固定尺寸缩放
', '', '', '5', '1', '1490842450', '1491040778');
INSERT INTO `c_system_config` VALUES ('17', '1', 'upload', '图片水印开关', 'image_watermark', '1', 'switch', '0:关闭
1:开启', '', '', '6', '1', '1490842583', '1491040778');
INSERT INTO `c_system_config` VALUES ('18', '1', 'upload', '图片水印图', 'image_watermark_pic', '', 'image', '', '', '', '7', '1', '1490842679', '1491040778');
INSERT INTO `c_system_config` VALUES ('19', '1', 'upload', '图片水印透明度', 'image_watermark_opacity', '50', 'input', '', '', '可设置值为0~100，数字越小，透明度越高', '8', '1', '1490857704', '1491040778');
INSERT INTO `c_system_config` VALUES ('20', '1', 'upload', '图片水印图位置', 'image_watermark_location', '9', 'select', '7:左下角
1:左上角
4:左居中
9:右下角
3:右上角
6:右居中
2:上居中
8:下居中
5:居中', '', '', '9', '1', '1490858228', '1491040778');
INSERT INTO `c_system_config` VALUES ('21', '1', 'upload', '文件上传大小限制', 'upload_file_size', '0', 'input', '', '', '单位：KB，0表示不限制大小', '1', '1', '1490859167', '1491040778');
INSERT INTO `c_system_config` VALUES ('22', '1', 'upload', '允许上传文件格式', 'upload_file_ext', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip', 'input', '', '', '多个格式请用英文逗号（,）隔开', '2', '1', '1490859246', '1491040778');
INSERT INTO `c_system_config` VALUES ('23', '1', 'upload', '文字水印开关', 'text_watermark', '0', 'switch', '0:关闭
1:开启', '', '', '10', '1', '1490860872', '1491040778');
INSERT INTO `c_system_config` VALUES ('24', '1', 'upload', '文字水印内容', 'text_watermark_content', '', 'input', '', '', '', '11', '1', '1490861005', '1491040778');
INSERT INTO `c_system_config` VALUES ('25', '1', 'upload', '文字水印字体', 'text_watermark_font', '', 'file', '', '', '不上传将使用系统默认字体', '12', '1', '1490861117', '1491040778');
INSERT INTO `c_system_config` VALUES ('26', '1', 'upload', '文字水印字体大小', 'text_watermark_size', '20', 'input', '', '', '单位：px(像素)', '13', '1', '1490861204', '1491040778');
INSERT INTO `c_system_config` VALUES ('27', '1', 'upload', '文字水印颜色', 'text_watermark_color', '#000000', 'input', '', '', '文字水印颜色，格式:#000000', '14', '1', '1490861482', '1491040778');
INSERT INTO `c_system_config` VALUES ('28', '1', 'upload', '文字水印位置', 'text_watermark_location', '7', 'select', '7:左下角
1:左上角
4:左居中
9:右下角
3:右上角
6:右居中
2:上居中
8:下居中
5:居中', '', '', '11', '1', '1490861718', '1491040778');
INSERT INTO `c_system_config` VALUES ('29', '1', 'upload', '缩略图尺寸', 'thumb_size', '300x300;500x500', 'input', '', '', '为空则不生成，生成 500x500 的缩略图，则填写 500x500，多个规格填写参考 300x300;500x500;800x800', '4', '1', '1490947834', '1491040778');
INSERT INTO `c_system_config` VALUES ('30', '1', 'sys', '开发模式', 'app_debug', '1', 'switch', '0:关闭
1:开启', '', '&lt;strong class=&quot;red&quot;&gt;生产环境下一定要关闭此配置&lt;/strong&gt;', '3', '1', '1491005004', '1492093874');
INSERT INTO `c_system_config` VALUES ('31', '1', 'sys', '页面Trace', 'app_trace', '0', 'switch', '0:关闭
1:开启', '', '&lt;strong class=&quot;red&quot;&gt;生产环境下一定要关闭此配置&lt;/strong&gt;', '4', '1', '1491005081', '1492093874');
INSERT INTO `c_system_config` VALUES ('33', '1', 'sys', '富文本编辑器', 'editor', 'umeditor', 'select', 'ueditor:UEditor
umeditor:UMEditor
kindeditor:KindEditor
ckeditor:CKEditor', '', '', '0', '1', '1491142648', '1492140215');
INSERT INTO `c_system_config` VALUES ('35', '1', 'databases', '备份目录', 'backup_path', './backup/database/', 'input', '', '', '数据库备份路径,路径必须以 / 结尾', '0', '1', '1491881854', '1491965974');
INSERT INTO `c_system_config` VALUES ('36', '1', 'databases', '备份分卷大小', 'part_size', '20971520', 'input', '', '', '用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '0', '1', '1491881975', '1491965974');
INSERT INTO `c_system_config` VALUES ('37', '1', 'databases', '备份压缩开关', 'compress', '1', 'switch', '0:关闭
1:开启', '', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '0', '1', '1491882038', '1491965974');
INSERT INTO `c_system_config` VALUES ('38', '1', 'databases', '备份压缩级别', 'compress_level', '4', 'radio', '1:最低
4:一般
9:最高', '', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '0', '1', '1491882154', '1491965974');
INSERT INTO `c_system_config` VALUES ('39', '1', 'base', '网站状态', 'site_status', '1', 'switch', '0:关闭
1:开启', '', '站点关闭后将不能访问，后台可正常登录', '1', '1', '1492049460', '1494690024');
INSERT INTO `c_system_config` VALUES ('40', '1', 'sys', '后台管理路径', 'admin_path', 'admin.php', 'input', '', '', '必须以.php为后缀', '1', '1', '1492139196', '1492140215');
INSERT INTO `c_system_config` VALUES ('41', '1', 'base', '网站标题', 'site_title', 'HisiPHP 开源后台管理框架', 'input', '', '', '网站标题是体现一个网站的主旨，要做到主题突出、标题简洁、连贯等特点，建议不超过28个字', '6', '1', '1492502354', '1494695131');
INSERT INTO `c_system_config` VALUES ('42', '1', 'base', '网站关键词', 'site_keywords', 'hisiphp,hisiphp框架,php开源框架', 'input', '', '', '网页内容所包含的核心搜索关键词，多个关键字请用英文逗号&quot;,&quot;分隔', '7', '1', '1494690508', '1494690780');
INSERT INTO `c_system_config` VALUES ('43', '1', 'base', '网站描述', 'site_description', '', 'textarea', '', '', '网页的描述信息，搜索引擎采纳后，作为搜索结果中的页面摘要显示，建议不超过80个字', '8', '1', '1494690669', '1494691075');
INSERT INTO `c_system_config` VALUES ('44', '1', 'base', 'ICP备案信息', 'site_icp', '', 'input', '', '', '请填写ICP备案号，用于展示在网站底部，ICP备案官网：&lt;a href=&quot;http://www.miibeian.gov.cn&quot; target=&quot;_blank&quot;&gt;http://www.miibeian.gov.cn&lt;/a&gt;', '9', '1', '1494691721', '1494692046');
INSERT INTO `c_system_config` VALUES ('45', '1', 'base', '站点统计代码', 'site_statis', '', 'textarea', '', '', '第三方流量统计代码，前台调用时请先用 htmlspecialchars_decode函数转义输出', '10', '1', '1494691959', '1494694797');
INSERT INTO `c_system_config` VALUES ('46', '1', 'base', '网站名称', 'site_name', 'HisiPHP', 'input', '', '', '将显示在浏览器窗口标题等位置', '3', '1', '1494692103', '1494694680');
INSERT INTO `c_system_config` VALUES ('47', '1', 'base', '网站LOGO', 'site_logo', '', 'image', '', '', '网站LOGO图片', '4', '1', '1494692345', '1494693235');
INSERT INTO `c_system_config` VALUES ('48', '1', 'base', '网站图标', 'site_favicon', '', 'image', '', '/system/annex/favicon', '又叫网站收藏夹图标，它显示位于浏览器的地址栏或者标题前面，&lt;strong class=&quot;red&quot;&gt;.ico格式&lt;/strong&gt;，&lt;a href=&quot;https://www.baidu.com/s?ie=UTF-8&amp;wd=favicon&quot; target=&quot;_blank&quot;&gt;点此了解网站图标&lt;/a&gt;', '5', '1', '1494692781', '1494693966');
INSERT INTO `c_system_config` VALUES ('49', '1', 'base', '手机网站', 'wap_site_status', '1', 'switch', '0:关闭
1:开启', '', '如果有手机网站，请设置为开启状态，否则只显示PC网站', '2', '1', '1498405436', '1498405436');
INSERT INTO `c_system_config` VALUES ('50', '1', 'sys', '云端推送', 'cloud_push', '0', 'switch', '0:关闭
1:开启', '', '关闭之后，无法通过云端推送安装扩展', '5', '1', '1504250320', '1504250320');
INSERT INTO `c_system_config` VALUES ('51', '1', 'base', '手机网站域名', 'wap_domain', '', 'input', '', '', '手机访问将自动跳转至此域名', '2', '1', '1504304776', '1504304837');
INSERT INTO `c_system_config` VALUES ('52', '1', 'sys', '多语言支持', 'multi_language', '0', 'switch', '0:关闭
1:开启', '', '开启后你可以自由上传多种语言包', '6', '1', '1506532211', '1506532211');
INSERT INTO `c_system_config` VALUES ('53', '1', 'sys', '后台白名单验证', 'admin_whitelist_verify', '0', 'switch', '0:禁用
1:启用', '', '禁用后不存在的菜单节点将不在提示', '7', '1', '1542012232', '1542012321');
INSERT INTO `c_system_config` VALUES ('54', '1', 'sys', '系统日志保留', 'system_log_retention', '30', 'input', '', '', '单位天，系统将自动清除 ? 天前的系统日志', '8', '1', '1542013958', '1542014158');
INSERT INTO `c_system_config` VALUES ('55', '1', 'upload', '上传驱动', 'upload_driver', 'local', 'select', 'local:本地上传', '', '资源上传驱动设置', '0', '1', '1558599270', '1558618703');

-- -----------------------------
-- Table structure for `c_system_hook`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_hook`;
CREATE TABLE `c_system_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统插件',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子来源[plugins.插件名，module.模块名]',
  `intro` varchar(200) NOT NULL DEFAULT '' COMMENT '钩子简介',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='[系统] 钩子表';

-- -----------------------------
-- Records of `c_system_hook`
-- -----------------------------
INSERT INTO `c_system_hook` VALUES ('1', '1', 'system_admin_index', '', '后台首页', '1', '1490885108', '1490885108');
INSERT INTO `c_system_hook` VALUES ('2', '1', 'system_admin_tips', '', '后台所有页面提示', '1', '1490713165', '1490885137');
INSERT INTO `c_system_hook` VALUES ('3', '1', 'system_annex_upload', '', '附件上传钩子，可扩展上传到第三方存储', '1', '1490884242', '1490885121');
INSERT INTO `c_system_hook` VALUES ('4', '1', 'system_member_login', '', '会员登陆成功之后的动作', '1', '1490885108', '1490885108');
INSERT INTO `c_system_hook` VALUES ('5', '1', 'system_member_register', '', '会员注册成功后的动作', '1', '1512610518', '1512610518');

-- -----------------------------
-- Table structure for `c_system_hook_plugins`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_hook_plugins`;
CREATE TABLE `c_system_hook_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL COMMENT '钩子id',
  `plugins` varchar(32) NOT NULL COMMENT '插件标识',
  `ctime` int(11) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='[系统] 钩子-插件对应表';

-- -----------------------------
-- Records of `c_system_hook_plugins`
-- -----------------------------
INSERT INTO `c_system_hook_plugins` VALUES ('1', 'system_admin_index', 'hisiphp', '1509380301', '1509380301', '0', '1');

-- -----------------------------
-- Table structure for `c_system_language`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_language`;
CREATE TABLE `c_system_language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '语言包名称',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '编码',
  `locale` varchar(255) NOT NULL DEFAULT '' COMMENT '本地浏览器语言编码',
  `icon` varchar(30) NOT NULL DEFAULT '' COMMENT '图标',
  `pack` varchar(100) NOT NULL DEFAULT '' COMMENT '上传的语言包',
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='[系统] 语言包';

-- -----------------------------
-- Records of `c_system_language`
-- -----------------------------
INSERT INTO `c_system_language` VALUES ('1', '简体中文', 'zh-cn', 'zh-CN,zh-CN.UTF-8,zh-cn', '', '1', '1', '1');

-- -----------------------------
-- Table structure for `c_system_log`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_log`;
CREATE TABLE `c_system_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT '',
  `url` varchar(200) DEFAULT '',
  `param` text,
  `remark` varchar(255) DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `ip` varchar(128) DEFAULT '',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='[系统] 操作日志';

-- -----------------------------
-- Records of `c_system_log`
-- -----------------------------
INSERT INTO `c_system_log` VALUES ('1', '1', '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', '27', '27.188.252.74', '1583230497', '1584346139');
INSERT INTO `c_system_log` VALUES ('2', '1', '本地模块', '/admin.php/system/module/index.html', '[]', '浏览数据', '4', '27.188.252.74', '1583230502', '1584087269');
INSERT INTO `c_system_log` VALUES ('3', '1', '生成模块', '/admin.php/system/module/design.html', '[]', '浏览数据', '2', '127.0.0.1', '1583230504', '1583230555');
INSERT INTO `c_system_log` VALUES ('4', '1', '生成模块', '/admin.php/system/module/design.html', '{\"name\":\"admin\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"identifier\":\"admin\",\"intro\":\"\\u540e\\u53f0\\u6240\\u6709\\u7ba1\\u7406\",\"author\":\"Peng\",\"url\":\"\",\"version\":\"1.0.0\",\"file\":\"common.php\",\"dir\":\"admin\\r\\nhome\\r\\nconfig\\r\\nmodel\\r\\nlang\\r\\nsql\\r\\nvalidate\\r\\nview\"}', '保存数据', '1', '127.0.0.1', '1583230533', '1583230533');
INSERT INTO `c_system_log` VALUES ('5', '1', '本地模块', '/admin.php/system/module/index/status/0.html', '{\"status\":\"0\"}', '浏览数据', '2', '127.0.0.1', '1583230536', '1583230554');
INSERT INTO `c_system_log` VALUES ('6', '1', '安装模块', '/admin.php/system/module/install/id/4.html', '{\"id\":\"4\"}', '浏览数据', '1', '127.0.0.1', '1583230539', '1583230539');
INSERT INTO `c_system_log` VALUES ('7', '1', '安装模块', '/admin.php/system/module/install.html', '{\"clear\":\"1\",\"demo_data\":\"1\",\"id\":\"4\"}', '保存数据', '1', '127.0.0.1', '1583230546', '1583230546');
INSERT INTO `c_system_log` VALUES ('8', '1', '本地模块', '/admin.php/system/module/index/status/2.html', '{\"status\":\"2\"}', '浏览数据', '1', '127.0.0.1', '1583230549', '1583230549');
INSERT INTO `c_system_log` VALUES ('9', '1', '本地模块', '/admin.php/system/module/index/status/1.html', '{\"status\":\"1\"}', '浏览数据', '1', '127.0.0.1', '1583230553', '1583230553');
INSERT INTO `c_system_log` VALUES ('10', '1', '导入模块', '/admin.php/system/module/import.html', '[]', '浏览数据', '1', '127.0.0.1', '1583230554', '1583230554');
INSERT INTO `c_system_log` VALUES ('11', '1', '系统菜单', '/admin.php/system/menu/index.html', '[]', '浏览数据', '51', '27.188.252.74', '1583230561', '1584347431');
INSERT INTO `c_system_log` VALUES ('12', '1', '排序设置', '/admin.php/system/menu/sort/table/admin_menu/id/2.html', '{\"val\":\"2\",\"table\":\"admin_menu\",\"id\":\"2\"}', '保存数据', '1', '127.0.0.1', '1583230574', '1583230574');
INSERT INTO `c_system_log` VALUES ('13', '1', '排序设置', '/admin.php/system/menu/sort/table/admin_menu/id/3.html', '{\"val\":\"3\",\"table\":\"admin_menu\",\"id\":\"3\"}', '保存数据', '1', '127.0.0.1', '1583230575', '1583230575');
INSERT INTO `c_system_log` VALUES ('14', '1', '排序设置', '/admin.php/system/menu/sort/table/admin_menu/id/141.html', '{\"val\":\"1\",\"table\":\"admin_menu\",\"id\":\"141\"}', '保存数据', '1', '127.0.0.1', '1583230577', '1583230577');
INSERT INTO `c_system_log` VALUES ('15', '1', '添加菜单', '/admin.php/system/menu/add/pid/141/mod/admin.html', '{\"pid\":\"141\",\"mod\":\"admin\"}', '浏览数据', '3', '27.188.252.74', '1583230787', '1583824722');
INSERT INTO `c_system_log` VALUES ('16', '1', '添加菜单', '/admin.php/system/menu/add.html', '{\"pid\":\"152\",\"title\":\"\\u8bbe\\u7f6e\\u4e3b\\u63a8\\u89c6\\u9891\",\"icon\":\"aicon ai-tishi\",\"url\":\"admin\\/video\\/main\",\"param\":\"\",\"status\":\"1\",\"system\":\"0\",\"nav\":\"1\",\"id\":\"\",\"module\":\"admin\"}', '保存数据', '11', '27.188.252.74', '1583230825', '1583981523');
INSERT INTO `c_system_log` VALUES ('17', '1', '添加菜单', '/admin.php/system/menu/add/pid/142/mod/admin.html', '{\"pid\":\"142\",\"mod\":\"admin\"}', '浏览数据', '5', '127.0.0.1', '1583230832', '1583478628');
INSERT INTO `c_system_log` VALUES ('18', '1', '轮播广告', '/admin.php/admin/banner/index.html', '[]', '浏览数据', '79', '27.188.252.74', '1583231148', '1584346142');
INSERT INTO `c_system_log` VALUES ('19', '1', '设置主题', '/admin.php/system/user/settheme.html?theme=3', '{\"theme\":\"3\"}', '浏览数据', '1', '127.0.0.1', '1583285290', '1583285290');
INSERT INTO `c_system_log` VALUES ('20', '1', '轮播广告', '/admin.php/admin/banner/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '62', '27.188.252.74', '1583285699', '1584346142');
INSERT INTO `c_system_log` VALUES ('21', '1', '未加入系统菜单', '/admin.php/admin/banner/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '37', '27.188.252.74', '1583285914', '1584070442');
INSERT INTO `c_system_log` VALUES ('22', '1', '未加入系统菜单', '/admin.php/admin/banner/add.html', '[]', '浏览数据', '1', '127.0.0.1', '1583285971', '1583285971');
INSERT INTO `c_system_log` VALUES ('23', '1', '配置管理', '/admin.php/system/config/index.html', '[]', '浏览数据', '3', '27.188.252.74', '1583286087', '1584087252');
INSERT INTO `c_system_log` VALUES ('24', '1', '配置管理', '/admin.php/system/config/index.html?page=1&limit=20', '{\"page\":\"1\",\"limit\":\"20\"}', '浏览数据', '3', '27.188.252.74', '1583286088', '1584087252');
INSERT INTO `c_system_log` VALUES ('25', '1', '系统设置', '/admin.php/system/system/index.html', '[]', '浏览数据', '2', '27.188.252.74', '1583286089', '1584087247');
INSERT INTO `c_system_log` VALUES ('26', '1', '系统管理员', '/admin.php/system/user/index.html', '[]', '浏览数据', '4', '27.188.252.74', '1583286092', '1584347423');
INSERT INTO `c_system_log` VALUES ('27', '1', '系统管理员', '/admin.php/system/user/index.html?page=1&limit=20', '{\"page\":\"1\",\"limit\":\"20\"}', '浏览数据', '4', '27.188.252.74', '1583286093', '1584347423');
INSERT INTO `c_system_log` VALUES ('28', '1', '数据库管理', '/admin.php/system/database/index.html', '[]', '浏览数据', '3', '27.188.252.74', '1583286093', '1584351781');
INSERT INTO `c_system_log` VALUES ('29', '1', '数据库管理', '/admin.php/system/database/index.html?group=export&page=1&limit=10', '{\"group\":\"export\",\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '3', '27.188.252.74', '1583286094', '1584351781');
INSERT INTO `c_system_log` VALUES ('30', '1', '系统日志', '/admin.php/system/log/index.html', '[]', '浏览数据', '2', '27.188.252.74', '1583286094', '1584087258');
INSERT INTO `c_system_log` VALUES ('31', '1', '系统日志', '/admin.php/system/log/index.html?page=1&limit=20', '{\"page\":\"1\",\"limit\":\"20\"}', '浏览数据', '2', '27.188.252.74', '1583286095', '1584087258');
INSERT INTO `c_system_log` VALUES ('32', '1', '应用市场', '/admin.php/system/store/index.html', '[]', '浏览数据', '2', '27.188.252.74', '1583286097', '1584087267');
INSERT INTO `c_system_log` VALUES ('33', '1', '添加菜单', '/admin.php/system/menu/add/pid/1/mod/system.html', '{\"pid\":\"1\",\"mod\":\"system\"}', '浏览数据', '1', '127.0.0.1', '1583286108', '1583286108');
INSERT INTO `c_system_log` VALUES ('34', '1', '轮播广告', '/admin.php/admin/banner/index.html?page=1&limit=20', '{\"page\":\"1\",\"limit\":\"20\"}', '浏览数据', '9', '127.0.0.1', '1583288057', '1583288792');
INSERT INTO `c_system_log` VALUES ('35', '1', '未加入系统菜单', '/admin.php/admin', '[]', '浏览数据', '1', '127.0.0.1', '1583288681', '1583288681');
INSERT INTO `c_system_log` VALUES ('36', '1', '附件上传', '/admin.php/system/annex/upload/group/supplier/thumb/100x100/water/no.html', '{\"group\":\"supplier\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '3', '127.0.0.1', '1583289477', '1583289527');
INSERT INTO `c_system_log` VALUES ('37', '1', '未加入系统菜单', '/admin.php/admin/banner/add.html', '{\"type\":\"2\",\"data_id\":\"2\",\"image\":\"\\/upload\\/banner\\/image\\/ef\\/a658af4d6104ea76c365561ff92906.jpg\"}', '保存数据', '7', '27.188.252.74', '1583289479', '1583986336');
INSERT INTO `c_system_log` VALUES ('38', '1', '附件上传', '/admin.php/system/annex/upload/group/banner/thumb/100x100/water/no.html', '{\"group\":\"banner\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '5', '27.188.252.74', '1583289594', '1583986335');
INSERT INTO `c_system_log` VALUES ('39', '1', '未加入系统菜单', '/admin.php/admin/banner/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '6', '27.188.252.74', '1583289966', '1584001898');
INSERT INTO `c_system_log` VALUES ('40', '1', '未加入系统菜单', '/admin.php/admin/banner/edit.html', '{\"url\":\"http:\\/\\/www.baidu.com\",\"id\":\"4\",\"image\":\"\\/upload\\/banner\\/image\\/88\\/ddb189f72fb538b423e84c93bfa751.jpg\"}', '保存数据', '3', '127.0.0.1', '1583290228', '1583290326');
INSERT INTO `c_system_log` VALUES ('41', '1', '未加入系统菜单', '/admin.php/admin/banner/edit.html?id=4&hisi_iframe=yes', '{\"id\":\"4\",\"hisi_iframe\":\"yes\"}', '浏览数据', '3', '27.188.252.74', '1583290260', '1583825976');
INSERT INTO `c_system_log` VALUES ('42', '1', '未加入系统菜单', '/admin.php/admin/banner/del.html?id=3', '{\"id\":\"3\"}', '浏览数据', '1', '127.0.0.1', '1583292178', '1583292178');
INSERT INTO `c_system_log` VALUES ('43', '1', '产品分类', '/admin.php/admin/category/index.html', '[]', '浏览数据', '36', '27.188.252.74', '1583292656', '1584070589');
INSERT INTO `c_system_log` VALUES ('44', '1', '产品分类', '/admin.php/admin/category/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '35', '27.188.252.74', '1583292774', '1584070590');
INSERT INTO `c_system_log` VALUES ('45', '1', '未加入系统菜单', '/admin.php/admin/category/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '10', '27.188.252.74', '1583292932', '1583996902');
INSERT INTO `c_system_log` VALUES ('46', '1', '未加入系统菜单', '/admin.php/admin/category/add.html', '{\"name\":\"\\u5e95\\u76d8\\u7cfb\\u7edf\"}', '保存数据', '8', '27.188.252.74', '1583293048', '1583996906');
INSERT INTO `c_system_log` VALUES ('47', '1', '未加入系统菜单', '/admin.php/admin/category/edit.html?id=2&hisi_iframe=yes', '{\"id\":\"2\",\"hisi_iframe\":\"yes\"}', '浏览数据', '2', '27.188.252.74', '1583293062', '1583996916');
INSERT INTO `c_system_log` VALUES ('48', '1', '未加入系统菜单', '/admin.php/admin/category/edit.html', '{\"name\":\"\\u53d8\\u901f\\u7bb1\\u7cfb\\u7edf\",\"id\":\"3\"}', '保存数据', '3', '27.188.252.74', '1583293064', '1583996931');
INSERT INTO `c_system_log` VALUES ('49', '1', '未加入系统菜单', '/admin.php/admin/category/del.html?id=2', '{\"id\":\"2\"}', '浏览数据', '1', '127.0.0.1', '1583293722', '1583293722');
INSERT INTO `c_system_log` VALUES ('50', '1', '全部产品', '/admin.php/admin/product/index.html', '[]', '浏览数据', '62', '27.188.252.74', '1583305634', '1584347414');
INSERT INTO `c_system_log` VALUES ('51', '1', '全部产品', '/admin.php/admin/product/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '62', '27.188.252.74', '1583305635', '1584347414');
INSERT INTO `c_system_log` VALUES ('52', '1', '未加入系统菜单', '/admin.php/admin/product/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '26', '27.188.252.74', '1583309201', '1584070592');
INSERT INTO `c_system_log` VALUES ('53', '1', '附件上传', '/admin.php/system/annex/upload/group/product/thumb/100x100/water/no.html', '{\"group\":\"product\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '16', '27.188.252.74', '1583310376', '1583997418');
INSERT INTO `c_system_log` VALUES ('54', '1', '未加入系统菜单', '/admin.php/admin/product/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '保存数据', '1', '127.0.0.1', '1583316129', '1583316129');
INSERT INTO `c_system_log` VALUES ('55', '1', '未加入系统菜单', '/admin.php/admin/product/add.html', '[]', '浏览数据', '58', '127.0.0.1', '1583316227', '1583397486');
INSERT INTO `c_system_log` VALUES ('56', '1', '未加入系统菜单', '/admin.php/admin/product/add.html', '{\"category_id\":\"1\",\"product_name\":\"\\u7279\\u65af\\u62c9\\u7535\\u6c60\\u7ba1\\u7406\\u7cfb\\u7edf\",\"image\":\"\\/upload\\/product\\/image\\/42\\/2ff64011fb3dfc30e71a720129f866.jpg\",\"video\":\"\",\"images\":\"\\/upload\\/product\\/images\\/20200312\\/52739f10f78e321bdac67e28b2e610d7.jpg\",\"file\":\"\",\"content\":\"&lt;p&gt;&lt;img src=&quot;\\/upload\\/product\\/image\\/56\\/2e7152ac495b9be297ab2a58f4c14a.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p&gt;\\u8be5\\u7cfb\\u7edf\\u4e3b\\u8981\\u8ba9\\u5b66\\u5458\\u5b66\\u4e60\\u7279\\u65af\\u62c9\\u7535\\u6c60\\u70ed\\u51b7\\u7ba1\\u7406\\u667a\\u80fd\\u4ea4\\u4e92\\u7cfb\\u7edf\\u7684\\u6838\\u5fc3\\u6280\\u672f\\uff0c\\u7ba1\\u8def\\u91c7\\u7528\\u900f\\u660e\\u88c5\\u7f6e\\uff0c\\u65b9\\u4fbf\\u515a\\u5458\\u89c2\\u5bdf\\u52a8\\u529b\\u5355\\u5143\\u6e29\\u63a7\\u7cfb\\u7edf\\u3001\\u7535\\u6c60\\u52a0\\u70ed\\u7cfb\\u7edf\\u3001\\u7535\\u6c60\\u51b7\\u5374\\u7cfb\\u7edf\\u4e4b\\u95f4\\u7684\\u8f6c\\u6362\\uff0c\\u719f\\u77e5\\u5404\\u7cfb\\u7edf\\u7684\\u5faa\\u73af\\u6c34\\u6cf5\\u53ca\\u8f6c\\u6362\\u9600\\u4e4b\\u95f4\\u7684\\u5de5\\u4f5c\\u539f\\u7406\\uff0c\\u8be5\\u8bbe\\u5907\\u5b89\\u88c5\\u6709\\u6d41\\u6c34\\u706f\\u539f\\u7406\\u5c55\\u793a\\u7cfb\\u7edf\\uff0c\\u8001\\u5e08\\u53ef\\u4e0b\\u8f7dAPP\\u901a\\u8fc7\\u624b\\u673a\\u6f14\\u793a\\u70ed\\u51b7\\u7ba1\\u7406\\u7cfb\\u7edf\\u76849\\u79cd\\u5de5\\u51b5\\u3002\\u76ee\\u7684\\u8ba9\\u5b66\\u751f\\u4e86\\u89e3\\u70ed\\u51b7\\u7ba1\\u7406\\u667a\\u80fd\\u4ea4\\u4e92\\u7cfb\\u7edf\\u7684\\u5e03\\u7f6e\\u3001\\u8ba4\\u77e5\\u3001\\u68c0\\u6d4b\\u3001\\u8bca\\u65ad\\u548c\\u7ef4\\u4fee\\u3002&lt;\\/p&gt;\"}', '保存数据', '12', '27.188.252.74', '1583316251', '1583997679');
INSERT INTO `c_system_log` VALUES ('57', '1', '未加入系统菜单', '/admin.php/admin/product/upload/group/product/thumb/100x100/water/no.html', '{\"group\":\"product\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '5', '127.0.0.1', '1583318052', '1583318457');
INSERT INTO `c_system_log` VALUES ('58', '1', '未加入系统菜单', '/admin.php/admin/product/upload/group/product/thumb/200/water/no.html', '{\"group\":\"product\",\"thumb\":\"200\",\"water\":\"no\"}', '保存数据', '10', '27.188.252.74', '1583373434', '1583997672');
INSERT INTO `c_system_log` VALUES ('59', '1', '未加入系统菜单', '/admin.php/admin/product/upload_file.html', '[]', '保存数据', '4', '127.0.0.1', '1583374920', '1583375360');
INSERT INTO `c_system_log` VALUES ('60', '1', '未加入系统菜单', '/admin.php/admin/product/upload_file/type/video.html', '{\"type\":\"video\"}', '保存数据', '8', '127.0.0.1', '1583375558', '1583398544');
INSERT INTO `c_system_log` VALUES ('61', '1', '未加入系统菜单', '/admin.php/admin/product/upload_file/type/images.html', '{\"type\":\"images\"}', '保存数据', '17', '27.188.252.74', '1583375854', '1583997486');
INSERT INTO `c_system_log` VALUES ('62', '1', '未加入系统菜单', '/admin.php/admin/product/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '12', '27.188.252.74', '1583398293', '1584347416');
INSERT INTO `c_system_log` VALUES ('63', '1', '未加入系统菜单', '/admin.php/admin/product/edit.html', '{\"category_id\":\"1\",\"product_name\":\"\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u540d\\u79f0111\",\"id\":\"1\",\"image\":\"\\/upload\\/product\\/image\\/88\\/ddb189f72fb538b423e84c93bfa751.jpg\",\"video\":\"\\/upload\\/product\\/video\\/20200305\\/50e217aedaacf8c985bae876f1e69fdf.mp4\",\"images\":\"\\/upload\\/product\\/images\\/20200305\\/02c3e94cd6e4c3dfc1745917da9d55a8.jpg,\\/upload\\/product\\/images\\/20200305\\/a25335538343c8f04493787a130843ca.jpg\",\"file\":\"\\/upload\\/product\\/video\\/20200305\\/373052ad4b63725c2a66b386219b23a5.pdf\",\"content\":\"&lt;p&gt;\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185&lt;b&gt;\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1&lt;\\/b&gt;\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1&lt;i&gt;\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9&lt;\\/i&gt;\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5&lt;u&gt;\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7&lt;\\/u&gt;\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9\\u6d4b\\u8bd5\\u4ea7\\u54c1\\u5185\\u5bb9&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/upload\\/product\\/image\\/0f\\/a01be9829d5515d9a84d7ce7a71e3b.png&quot; alt=&quot;undefined&quot;&gt;&lt;\\/p&gt;\"}', '保存数据', '1', '127.0.0.1', '1583398549', '1583398549');
INSERT INTO `c_system_log` VALUES ('64', '1', '实训室列表', '/admin.php/admin/laboratory/index.html', '[]', '浏览数据', '121', '27.188.252.74', '1583399338', '1584351636');
INSERT INTO `c_system_log` VALUES ('65', '1', '实训室列表', '/admin.php/admin/laboratory/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '121', '27.188.252.74', '1583399338', '1584351636');
INSERT INTO `c_system_log` VALUES ('66', '1', '未加入系统菜单', '/admin.php/admin/laboratory/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '41', '27.188.252.74', '1583399469', '1584350807');
INSERT INTO `c_system_log` VALUES ('67', '1', '未加入系统菜单', '/admin.php/admin/laboratory/upload_file/type/video.html', '{\"type\":\"video\"}', '保存数据', '12', '27.188.252.74', '1583399827', '1584346407');
INSERT INTO `c_system_log` VALUES ('68', '1', '未加入系统菜单', '/admin.php/admin/laboratory/upload_file/type/file.html', '{\"type\":\"file\"}', '保存数据', '16', '27.188.252.74', '1583399832', '1584351358');
INSERT INTO `c_system_log` VALUES ('69', '1', '未加入系统菜单', '/admin.php/admin/laboratory/upload/group/laboratory/thumb/200/water/no.html', '{\"group\":\"laboratory\",\"thumb\":\"200\",\"water\":\"no\"}', '保存数据', '100', '27.188.252.74', '1583399856', '1584351447');
INSERT INTO `c_system_log` VALUES ('70', '1', '未加入系统菜单', '/admin.php/admin/laboratory/add.html', '{\"category_id\":\"7\",\"laboratory_name\":\"\\u5b9d\\u9a6c\\u667a\\u6167\\u5b9e\\u8bad\\u5ba4\",\"image\":\"\\/upload\\/laboratory\\/image\\/46\\/677ff714add0977810c3ab76f79e03.jpg\",\"introduction\":\"\",\"video\":\"\",\"file\":\"\\/upload\\/laboratory\\/file\\/20200316\\/f51fd0d2959271d002736fdfbe409965.pdf\",\"content\":\"&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/a0\\/d598f692165dc453f14b5a4cae903b.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/d0\\/762240109a074dff5b8ea4d1ec6aa8.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/2b\\/ef40839434398069715ba00c4a3fe2.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/f6\\/fb38ffa99c8d07fa404024054ea238.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/4a\\/04b0c896cd39e26b89aec1a9135fd3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/1a\\/a7f638b4bb1e2776fae1e2957acfee.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/78\\/53eb7a255718a2ee160b903014814c.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/8f\\/a34fbfe8d1f00b6ed4e839e041e487.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/68\\/f0dea923455703a93c8ad4144b0cef.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/07\\/7cad4017e6290ceb53c182b565c67d.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/1c\\/5ca4000df5b96e9104bdd2c45c93a3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/c4\\/913089c6252ce326b11571f17c569b.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/42\\/7bba4fdbf50744abfc99c2a3fdbf19.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/2a\\/5a3c95592465d32294c3a00fcf6ec3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/f2\\/1ea800e8a078110f2832f02521c626.jpg&quot; alt=&quot;undefined&quot;&gt;\"}', '保存数据', '10', '27.188.252.74', '1583399945', '1584351451');
INSERT INTO `c_system_log` VALUES ('71', '1', '附件上传', '/admin.php/system/annex/upload/group/laboratory/thumb/100x100/water/no.html', '{\"group\":\"laboratory\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '12', '27.188.252.74', '1583402721', '1584351331');
INSERT INTO `c_system_log` VALUES ('72', '1', '未加入系统菜单', '/admin.php/admin/laboratory/add.html', '[]', '浏览数据', '4', '127.0.0.1', '1583464404', '1583464540');
INSERT INTO `c_system_log` VALUES ('73', '1', '未加入系统菜单', '/admin.php/admin/laboratory/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '22', '27.188.252.74', '1583464800', '1584351527');
INSERT INTO `c_system_log` VALUES ('74', '1', '未加入系统菜单', '/admin.php/admin/laboratory/edit.html', '{\"category_id\":\"7\",\"laboratory_name\":\"\\u5b9d\\u9a6c\\u667a\\u6167\\u5b9e\\u8bad\\u5ba4\",\"id\":\"3\",\"image\":\"\\/upload\\/laboratory\\/image\\/46\\/677ff714add0977810c3ab76f79e03.jpg\",\"introduction\":\"\\u4ee5\\u5b9d\\u9a6c17\\u6b3e\\u5b9d\\u9a6c5\\u7cfb2.0T\\u53d1\\u52a8\\u673a+\\u53d8\\u901f\\u5668\\u5b9e\\u7269\\u4e3a\\u57fa\\u7840\\uff0c\\u7531\\u4e3b\\u53f0\\u67b6\\u3001\\u63a7\\u5236\\u68c0\\u6d4b\\u9762\\u677f\\u4e24\\u90e8\\u5206\\u7ec4\\u6210\\u3002\\u9002\\u7528\\u4e8e\\u6c7d\\u6cb9\\u53d1\\u52a8\\u673a\\u6784\\u9020\\u4e0e\\u7ef4\\u4fee\\u5b9e\\u8bad\\u6559\\u5b66\\uff0c\\u80fd\\u591f\\u6ee1\\u8db3\\u5bf9\\u6c7d\\u6cb9\\u53d1\\u52a8\\u673a\\u7684\\u7ed3\\u6784\\u3001\\u5de5\\u4f5c\\u539f\\u7406\\u3001\\u6545\\u969c\\u8bbe\\u7f6e\\u53ca\\u8bca\\u65ad\\u7684\\u6559\\u5b66\\u9700\\u8981\\u3002\",\"video\":\"\",\"file\":\"\\/upload\\/laboratory\\/file\\/20200316\\/f51fd0d2959271d002736fdfbe409965.pdf\",\"content\":\"&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/a0\\/d598f692165dc453f14b5a4cae903b.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/d0\\/762240109a074dff5b8ea4d1ec6aa8.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/2b\\/ef40839434398069715ba00c4a3fe2.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/f6\\/fb38ffa99c8d07fa404024054ea238.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/4a\\/04b0c896cd39e26b89aec1a9135fd3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/1a\\/a7f638b4bb1e2776fae1e2957acfee.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/78\\/53eb7a255718a2ee160b903014814c.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/8f\\/a34fbfe8d1f00b6ed4e839e041e487.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/68\\/f0dea923455703a93c8ad4144b0cef.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/07\\/7cad4017e6290ceb53c182b565c67d.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/1c\\/5ca4000df5b96e9104bdd2c45c93a3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/c4\\/913089c6252ce326b11571f17c569b.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/42\\/7bba4fdbf50744abfc99c2a3fdbf19.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/2a\\/5a3c95592465d32294c3a00fcf6ec3.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/laboratory\\/image\\/f2\\/1ea800e8a078110f2832f02521c626.jpg&quot; alt=&quot;undefined&quot;&gt;\"}', '保存数据', '19', '27.188.252.74', '1583466866', '1584351633');
INSERT INTO `c_system_log` VALUES ('75', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/index.html', '[]', '浏览数据', '25', '127.0.0.1', '1583478696', '1583479043');
INSERT INTO `c_system_log` VALUES ('76', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '24', '127.0.0.1', '1583478697', '1583479044');
INSERT INTO `c_system_log` VALUES ('77', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '8', '27.188.252.74', '1583478698', '1584071461');
INSERT INTO `c_system_log` VALUES ('78', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/upload_file/type/video.html', '{\"type\":\"video\"}', '保存数据', '1', '127.0.0.1', '1583478793', '1583478793');
INSERT INTO `c_system_log` VALUES ('79', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/upload_file/type/file.html', '{\"type\":\"file\"}', '保存数据', '1', '127.0.0.1', '1583478797', '1583478797');
INSERT INTO `c_system_log` VALUES ('80', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/add.html', '{\"la_id\":\"1\",\"name\":\"123123\",\"video\":\"\\/upload\\/product\\/video\\/20200306\\/a893d3e7f4cdd039fcf85e3cd85dc2fd.mp4\",\"download\":\"\\/upload\\/product\\/file\\/20200306\\/0ddf4a298a26c2417988d20de228441f.docx\",\"content\":\"12312312312312312321\"}', '保存数据', '1', '127.0.0.1', '1583478800', '1583478800');
INSERT INTO `c_system_log` VALUES ('81', '1', '添加快捷菜单', '/admin.php/system/menu/quick/id/0.html', '{\"id\":\"0\"}', '浏览数据', '1', '127.0.0.1', '1583478889', '1583478889');
INSERT INTO `c_system_log` VALUES ('82', '1', '修改菜单', '/admin.php/system/menu/edit/id/147/mod/admin.html', '{\"id\":\"147\",\"mod\":\"admin\"}', '浏览数据', '2', '127.0.0.1', '1583478969', '1583479053');
INSERT INTO `c_system_log` VALUES ('83', '1', '修改菜单', '/admin.php/system/menu/edit.html', '{\"pid\":\"148\",\"title\":\"\\u6848\\u4f8b\\u5206\\u7c7b\",\"icon\":\"aicon ai-caidan\",\"url\":\"admin\\/caseCategory\\/index\",\"param\":\"\",\"status\":\"1\",\"system\":\"0\",\"nav\":\"1\",\"id\":\"149\",\"module\":\"admin\"}', '保存数据', '8', '27.188.252.74', '1583478981', '1583828370');
INSERT INTO `c_system_log` VALUES ('84', '1', '实训室系列视频', '/admin.php/admin/laboratory_video/index.html', '[]', '浏览数据', '32', '27.188.252.74', '1583479066', '1584345654');
INSERT INTO `c_system_log` VALUES ('85', '1', '实训室系列视频', '/admin.php/admin/laboratory_video/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '32', '27.188.252.74', '1583479067', '1584345654');
INSERT INTO `c_system_log` VALUES ('86', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '5', '127.0.0.1', '1583479097', '1583479314');
INSERT INTO `c_system_log` VALUES ('87', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/edit.html', '{\"la_id\":\"1\",\"name\":\"1231234444\",\"id\":\"1\",\"video\":\"\\/upload\\/product\\/video\\/20200306\\/a893d3e7f4cdd039fcf85e3cd85dc2fd.mp4\",\"download\":\"\\/upload\\/product\\/file\\/20200306\\/0ddf4a298a26c2417988d20de228441f.docx\",\"content\":\"12312312312312312321\"}', '保存数据', '2', '127.0.0.1', '1583479274', '1583479320');
INSERT INTO `c_system_log` VALUES ('88', '1', '未加入系统菜单', '/admin.php/admin/laboratory_video/edit.html', '[]', '浏览数据', '1', '127.0.0.1', '1583479286', '1583479286');
INSERT INTO `c_system_log` VALUES ('89', '1', '添加菜单', '/admin.php/system/menu/add/pid/148/mod/admin.html', '{\"pid\":\"148\",\"mod\":\"admin\"}', '浏览数据', '2', '27.188.252.74', '1583748577', '1583826779');
INSERT INTO `c_system_log` VALUES ('90', '1', '修改菜单', '/admin.php/system/menu/edit/id/148/mod/admin.html', '{\"id\":\"148\",\"mod\":\"admin\"}', '浏览数据', '2', '27.188.252.74', '1583749126', '1583749577');
INSERT INTO `c_system_log` VALUES ('91', '1', '修改菜单', '/admin.php/system/menu/edit/id/149/mod/admin.html', '{\"id\":\"149\",\"mod\":\"admin\"}', '浏览数据', '4', '27.188.252.74', '1583749135', '1583828365');
INSERT INTO `c_system_log` VALUES ('92', '1', '案例分类', '/admin.php/admin/cases/index.html', '[]', '浏览数据', '17', '27.188.252.74', '1583749566', '1583826882');
INSERT INTO `c_system_log` VALUES ('93', '1', '案例分类', '/admin.php/admin/cases/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '15', '27.188.252.74', '1583749977', '1583826882');
INSERT INTO `c_system_log` VALUES ('94', '1', '修改菜单', '/admin.php/system/menu/edit/id/144/mod/admin.html', '{\"id\":\"144\",\"mod\":\"admin\"}', '浏览数据', '1', '27.188.252.74', '1583824818', '1583824818');
INSERT INTO `c_system_log` VALUES ('95', '1', '修改菜单', '/admin.php/system/menu/edit/id/145/mod/admin.html', '{\"id\":\"145\",\"mod\":\"admin\"}', '浏览数据', '1', '27.188.252.74', '1583824829', '1583824829');
INSERT INTO `c_system_log` VALUES ('96', '1', '案例列表', '/admin.php/admin/cases/index.html', '[]', '浏览数据', '45', '27.188.252.74', '1583826907', '1584347435');
INSERT INTO `c_system_log` VALUES ('97', '1', '案例列表', '/admin.php/admin/cases/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '45', '27.188.252.74', '1583826907', '1584347435');
INSERT INTO `c_system_log` VALUES ('98', '1', '未加入系统菜单', '/admin.php/admin/case_category/index.html', '[]', '浏览数据', '2', '27.188.252.74', '1583828354', '1583828359');
INSERT INTO `c_system_log` VALUES ('99', '1', '未加入系统菜单', '/admin.php/admin/case_category/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '2', '27.188.252.74', '1583828355', '1583828359');
INSERT INTO `c_system_log` VALUES ('100', '1', '案例分类', '/admin.php/admin/case_category/index.html', '[]', '浏览数据', '27', '27.188.252.74', '1583828376', '1584346150');
INSERT INTO `c_system_log` VALUES ('101', '1', '案例分类', '/admin.php/admin/case_category/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '27', '27.188.252.74', '1583828376', '1584346150');
INSERT INTO `c_system_log` VALUES ('102', '1', '视频库分类', '/admin.php/admin/video_category/index.html', '[]', '浏览数据', '24', '27.188.252.74', '1583976981', '1584071091');
INSERT INTO `c_system_log` VALUES ('103', '1', '视频库分类', '/admin.php/admin/video_category/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '24', '27.188.252.74', '1583976981', '1584071091');
INSERT INTO `c_system_log` VALUES ('104', '1', '视频库', '/admin.php/admin/video/index.html', '[]', '浏览数据', '27', '27.188.252.74', '1583976982', '1584347443');
INSERT INTO `c_system_log` VALUES ('105', '1', '视频库', '/admin.php/admin/video/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '27', '27.188.252.74', '1583976982', '1584347443');
INSERT INTO `c_system_log` VALUES ('106', '1', '未加入系统菜单', '/admin.php/admin/video/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '9', '27.188.252.74', '1583976984', '1584346331');
INSERT INTO `c_system_log` VALUES ('107', '1', '未加入系统菜单', '/admin.php/admin/banner/get_data.html', '{\"type\":\"2\"}', '保存数据', '7', '27.188.252.74', '1583977070', '1583986329');
INSERT INTO `c_system_log` VALUES ('108', '1', '未加入系统菜单', '/admin.php/admin/case_category/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '6', '27.188.252.74', '1583979434', '1584003419');
INSERT INTO `c_system_log` VALUES ('109', '1', '添加菜单', '/admin.php/system/menu/add/pid/152/mod/admin.html', '{\"pid\":\"152\",\"mod\":\"admin\"}', '浏览数据', '1', '27.188.252.74', '1583981473', '1583981473');
INSERT INTO `c_system_log` VALUES ('110', '1', '设置主推视频', '/admin.php/admin/video/main.html', '[]', '浏览数据', '13', '27.188.252.74', '1583981527', '1584069056');
INSERT INTO `c_system_log` VALUES ('111', '1', '未加入系统菜单', '/admin.php/admin/category/edit.html?id=5&hisi_iframe=yes', '{\"id\":\"5\",\"hisi_iframe\":\"yes\"}', '浏览数据', '1', '27.188.252.74', '1583996911', '1583996911');
INSERT INTO `c_system_log` VALUES ('112', '1', '未加入系统菜单', '/admin.php/admin/category/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '1', '27.188.252.74', '1583996914', '1583996914');
INSERT INTO `c_system_log` VALUES ('113', '1', '未加入系统菜单', '/admin.php/admin/category/edit.html?id=3&hisi_iframe=yes', '{\"id\":\"3\",\"hisi_iframe\":\"yes\"}', '浏览数据', '1', '27.188.252.74', '1583996926', '1583996926');
INSERT INTO `c_system_log` VALUES ('114', '1', '设置主推视频', '/admin.php/admin/video/main.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '10', '27.188.252.74', '1583997371', '1584069056');
INSERT INTO `c_system_log` VALUES ('115', '1', '未加入系统菜单', '/admin.php/admin/laboratory/edit.html?id=2&hisi_iframe=yes', '{\"id\":\"2\",\"hisi_iframe\":\"yes\"}', '浏览数据', '25', '27.188.252.74', '1584001292', '1584350057');
INSERT INTO `c_system_log` VALUES ('116', '1', '未加入系统菜单', '/admin.php/admin/banner/edit.html?id=3&hisi_iframe=yes', '{\"id\":\"3\",\"hisi_iframe\":\"yes\"}', '浏览数据', '3', '27.188.252.74', '1584001627', '1584070443');
INSERT INTO `c_system_log` VALUES ('117', '1', '未加入系统菜单', '/admin.php/admin/case_category/add.html', '{\"category_name\":\"\\u4e1c\\u5317\\u5730\\u533a\"}', '保存数据', '5', '27.188.252.74', '1584003387', '1584003423');
INSERT INTO `c_system_log` VALUES ('118', '1', '未加入系统菜单', '/admin.php/admin/cases/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '4', '27.188.252.74', '1584003429', '1584346153');
INSERT INTO `c_system_log` VALUES ('119', '1', '附件上传', '/admin.php/system/annex/upload/group/case/thumb/100x100/water/no.html', '{\"group\":\"case\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '3', '27.188.252.74', '1584003526', '1584096221');
INSERT INTO `c_system_log` VALUES ('120', '1', '未加入系统菜单', '/admin.php/admin/cases/upload/group/product/thumb/200/water/no.html', '{\"group\":\"product\",\"thumb\":\"200\",\"water\":\"no\"}', '保存数据', '5', '27.188.252.74', '1584003552', '1584096099');
INSERT INTO `c_system_log` VALUES ('121', '1', '未加入系统菜单', '/admin.php/admin/cases/add.html', '{\"category_id\":\"2\",\"title\":\"\\u6cb3\\u5357\\u90d1\\u5dde\\u6c7d\\u8f66\\u5b9e\\u8bad\\u5ba4\",\"image\":\"\\/upload\\/case\\/image\\/40\\/c9ed7e892f0438f534fe7a29bd4c6f.jpg\",\"content\":\"&lt;p&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; \\u90d1\\u5dde\\u6c7d\\u8f66\\u5b9e\\u8bad\\u5ba4\\uff0c\\u7531\\u5954\\u9a70\\u5b9e\\u8bad\\u8f66\\u95f4\\u3001 \\u5b9d\\u9a6c\\u5b9e\\u8bad\\u8f66\\u95f4\\u3001 \\u5965\\u8fea\\u5b9e\\u8bad\\u8f66\\u95f4\\u3001\\u7f8e\\u5bb9\\u5b9e\\u8bad\\u8f66\\u95f4\\u7b49\\u591a\\u90e8\\u5206\\u7ec4\\u6210\\uff0c\\u6bcf\\u4e2a\\u5b9e\\u8bad\\u8f66\\u95f4\\u90fd\\u914d\\u5907\\u4e86\\u8bca\\u65ad\\u4eea\\u5668,\\u8d44\\u6599\\u6570\\u636e\\u5e93\\u7b49\\u5185\\u5bb9\\uff0c\\u8bbe\\u5907\\u91c7\\u7528\\u4e8c\\u7ef4\\u7801\\u5728\\u7ebf\\u6559\\u5b66\\u7cfb\\u7edf\\uff0c\\u57fa\\u4e8e\\u667a\\u80fd\\u5316\\u73af\\u5883\\u8fd0\\u884c\\uff0c\\u53ef\\u7528\\u4e8e\\u8001\\u5e08\\u5728\\u7ebf\\u6559\\u5b66\\u548c\\u5b66\\u751f\\u81ea\\u5b66\\u590d\\u4e60\\uff0c\\u9002\\u7528\\u4e8e\\u5bf9\\u6c7d\\u8f66\\u6574\\u8f66\\u6559\\u5b66\\u548c\\u7ef4\\u4fee\\u5b9e\\u8bad\\u7684\\u6559\\u5b66\\u9700\\u8981\\u3002&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\\u672c\\u7740\\u7cbe\\u76ca\\u6c42\\u7cbe\\u3001\\u52a1\\u5b9e\\u521b\\u65b0\\u7684\\u7cbe\\u795e\\uff0c\\u4e2d\\u804c\\u5317\\u65b9\\u7814\\u7a76\\u6240\\u75311996\\u5e74\\u521b\\u7acb\\u4e4b\\u521d\\u7814\\u53d1\\u7684\\u7b2c\\u4e00\\u4ee3\\u6559\\u5b66\\u6a21\\u578b\\u53d1\\u5c55\\u5230\\u5982\\u4eca\\u7684\\u7b2c\\u4e5d\\u4ee3\\u6559\\u5b66\\u5b9e\\u9a8c\\u6a21\\u578b\\uff0c\\u4e3a\\u5e7f\\u5927\\u6c7d\\u4fee\\u540c\\u4ec1\\u53ca\\u5404\\u5927\\u5927\\u4e2d\\u9662\\u6821\\u63d0\\u4f9b\\u4e86\\u5b8c\\u5907\\u7684\\u5b9e\\u8bad\\u5ba4\\u5efa\\u8bbe\\u65b9\\u6848\\u3002&lt;\\/span&gt;&lt;\\/p&gt;\"}', '保存数据', '2', '27.188.252.74', '1584003686', '1584003895');
INSERT INTO `c_system_log` VALUES ('122', '1', '未加入系统菜单', '/admin.php/admin/cases/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '11', '27.188.252.74', '1584003696', '1584096527');
INSERT INTO `c_system_log` VALUES ('123', '1', '未加入系统菜单', '/admin.php/admin/video/add_main.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '2', '27.188.252.74', '1584003740', '1584066619');
INSERT INTO `c_system_log` VALUES ('124', '1', '未加入系统菜单', '/admin.php/admin/case_category/edit.html?id=5&hisi_iframe=yes', '{\"id\":\"5\",\"hisi_iframe\":\"yes\"}', '浏览数据', '3', '27.188.252.74', '1584004644', '1584004698');
INSERT INTO `c_system_log` VALUES ('125', '1', '未加入系统菜单', '/admin.php/admin/case_category/edit.html', '{\"category_name\":\"\\u4e1c\\u5317\\u5730\\u533a\",\"id\":\"5\"}', '保存数据', '5', '27.188.252.74', '1584004647', '1584004701');
INSERT INTO `c_system_log` VALUES ('126', '1', '未加入系统菜单', '/admin.php/admin/case_category/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '2', '27.188.252.74', '1584004670', '1584004684');
INSERT INTO `c_system_log` VALUES ('127', '1', '未加入系统菜单', '/admin.php/admin/cases/edit.html?id=2&hisi_iframe=yes', '{\"id\":\"2\",\"hisi_iframe\":\"yes\"}', '浏览数据', '4', '27.188.252.74', '1584004711', '1584347440');
INSERT INTO `c_system_log` VALUES ('128', '1', '未加入系统菜单', '/admin.php/admin/video_category/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '5', '27.188.252.74', '1584065800', '1584066142');
INSERT INTO `c_system_log` VALUES ('129', '1', '未加入系统菜单', '/admin.php/admin/video_category/add.html', '{\"name\":\"\\u65b0\\u80fd\\u6e90\"}', '保存数据', '4', '27.188.252.74', '1584065843', '1584066158');
INSERT INTO `c_system_log` VALUES ('130', '1', '未加入系统菜单', '/admin.php/admin/video_category/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '4', '27.188.252.74', '1584065865', '1584065893');
INSERT INTO `c_system_log` VALUES ('131', '1', '未加入系统菜单', '/admin.php/admin/video_category/del.html?id=1', '{\"id\":\"1\"}', '浏览数据', '1', '27.188.252.74', '1584065912', '1584065912');
INSERT INTO `c_system_log` VALUES ('132', '1', '未加入系统菜单', '/admin.php/admin/video_category/edit.html?id=3&hisi_iframe=yes', '{\"id\":\"3\",\"hisi_iframe\":\"yes\"}', '浏览数据', '2', '27.188.252.74', '1584065913', '1584066101');
INSERT INTO `c_system_log` VALUES ('133', '1', '未加入系统菜单', '/admin.php/admin/video/add.html', '{\"vc_id\":\"2\",\"video_name\":\"\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e933333\",\"image\":\"\\/upload\\/video\\/image\\/88\\/ddb189f72fb538b423e84c93bfa751.jpg\",\"video\":\"\\/upload\\/laboratory\\/video\\/20200316\\/ba9d694bf0b2cc259546620e93480210.mp4\",\"introduction\":\"&lt;p&gt;\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e\\u6d4b\\u8bd5\\u89c6\\u9891\\u5e93\\u6570\\u636e&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/upload\\/video\\/image\\/88\\/ddb189f72fb538b423e84c93bfa751.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p&gt;\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5&lt;\\/p&gt;\",\"type\":\"2\"}', '保存数据', '4', '27.188.252.74', '1584066268', '1584346383');
INSERT INTO `c_system_log` VALUES ('134', '1', '未加入系统菜单', '/admin.php/admin/video/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '2', '27.188.252.74', '1584066288', '1584066478');
INSERT INTO `c_system_log` VALUES ('135', '1', '框架升级', '/admin.php/system/upgrade/index.html', '[]', '浏览数据', '1', '27.188.252.74', '1584087265', '1584087265');
INSERT INTO `c_system_log` VALUES ('136', '1', '应用市场', '/admin.php/system/store/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '1', '27.188.252.74', '1584087268', '1584087268');
INSERT INTO `c_system_log` VALUES ('137', '1', '本地插件', '/admin.php/system/plugins/index.html', '[]', '浏览数据', '1', '27.188.252.74', '1584087271', '1584087271');
INSERT INTO `c_system_log` VALUES ('138', '1', '应用市场', '/admin.php/system/store/index.html?type=2', '{\"type\":\"2\"}', '浏览数据', '1', '27.188.252.74', '1584087273', '1584087273');
INSERT INTO `c_system_log` VALUES ('139', '1', '应用市场', '/admin.php/system/store/index/type/2.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\",\"type\":\"2\"}', '浏览数据', '1', '27.188.252.74', '1584087274', '1584087274');
INSERT INTO `c_system_log` VALUES ('140', '1', '实训室分类', '/admin.php/admin/laboratory_category/index.html', '[]', '浏览数据', '19', '27.188.252.74', '1584094391', '1584351580');
INSERT INTO `c_system_log` VALUES ('141', '1', '实训室分类', '/admin.php/admin/laboratory_category/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '19', '27.188.252.74', '1584094391', '1584351581');
INSERT INTO `c_system_log` VALUES ('142', '1', '未加入系统菜单', '/admin.php/admin/cases/upload/group/case/thumb/100x100/water/no.html', '{\"group\":\"case\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '2', '27.188.252.74', '1584096393', '1584096509');
INSERT INTO `c_system_log` VALUES ('143', '1', '未加入系统菜单', '/admin.php/admin/cases/edit.html', '{\"category_id\":\"1\",\"title\":\"\\u5c71\\u4e1c\\u804a\\u57ce\\u6c7d\\u8f66\\u5b9e\\u8bad\\u5ba4\",\"id\":\"1\",\"image\":\"\\/upload\\/case\\/image\\/f6\\/00cc6ac07011ff26e929c57c54123a.png\",\"content\":\"&lt;p&gt;&lt;span&gt;\\u804a\\u57ce\\u6c7d\\u8f66\\u5b9e\\u8bad\\u5ba4\\u8bbe\\u7f6e\\u4e86\\u4ece\\u4e2d\\u4f4e\\u6863\\u5230\\u9ad8\\u6863\\u8f66\\u7684\\u5168\\u9762\\u6574\\u8f66\\u5b9e\\u8bad\\u8f66\\u95f4\\uff0c\\u4ee5\\u53ca\\u4e2a\\u57fa\\u7840\\u90e8\\u4ef6\\u7684\\u914d\\u5408\\u5b9e\\u8bad\\u8f66\\u95f4\\uff0c\\u5982\\uff0c\\u522b\\u514b\\u3001\\u5927\\u4f17\\u3001\\u4e30\\u7530\\u3001\\u8fc8\\u817e\\u3001\\u5b9d\\u9a6c\\u7b49\\u5b9e\\u8bad\\u8f66\\u95f4\\uff0c\\u4ee5\\u53ca\\u7535\\u5b50\\u7535\\u5de5\\u3001\\u9632\\u76d7\\u7cfb\\u7edf\\u7b49\\u5b9e\\u8bad\\u8f66\\u95f4\\uff0c\\u5168\\u9762\\u7cfb\\u7edf\\u5316\\u7684\\u5b9e\\u8bad\\u8f66\\u95f4\\u3002\\u4e14\\u8bbe\\u5907\\u91c7\\u7528\\u4e8c\\u7ef4\\u7801\\u5728\\u7ebf\\u6559\\u5b66\\u7cfb\\u7edf\\uff0c\\u53ef\\u7528\\u4e8e\\u8001\\u5e08\\u5728\\u7ebf\\u6559\\u5b66\\u548c\\u5b66\\u751f\\u81ea\\u5b66\\u590d\\u4e60\\u3002&lt;\\/span&gt;&lt;\\/p&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/case\\/image\\/88\\/ddb189f72fb538b423e84c93bfa751.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;p&gt;&lt;span&gt;\\u6a21\\u578b\\u6559\\u5b66\\u662f\\u5317\\u65b9\\u4eba\\u7684\\u7acb\\u8db3\\u4e4b\\u672c\\uff0c\\u662f\\u5317\\u65b9\\u5b66\\u5b50\\u638c\\u63e1\\u524d\\u6cbf\\u4fee\\u8f66\\u6280\\u672f\\u7684\\u6cd5\\u5b9d\\uff0c\\u66f4\\u662f\\u5317\\u65b9\\u5b66\\u5b50\\u5728\\u5de5\\u4f5c\\u5355\\u4f4d\\u4e2d\\u7684\\u575a\\u5f3a\\u540e\\u76fe\\u3002\\u7814\\u7a76\\u6240\\u6570\\u5341\\u4f4d\\u6c7d\\u4fee\\u884c\\u4e1a\\u7684\\u4f18\\u79c0\\u5de5\\u7a0b\\u5e08\\u4e0e\\u56fd\\u5185\\u5916\\u77e5\\u540d\\u6559\\u6388\\u6bcf\\u5e74\\u90fd\\u4f1a\\u8bbf\\u95ee\\u6b27\\u3001\\u7f8e\\u3001\\u65e5\\u3001\\u97e9\\u4f17\\u591a\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u4e0e\\u56fd\\u9645\\u540c\\u884c\\u4e00\\u540c\\u9488\\u5bf9\\u884c\\u4e1a\\u65b0\\u6280\\u672f\\u5c55\\u5f00\\u7814\\u8ba8\\uff0c\\u7814\\u53d1\\u4e2d\\u5fc3\\u6839\\u636e\\u8bbf\\u95ee\\u6210\\u679c\\u5f00\\u53d1\\u4ee3\\u8868\\u5148\\u8fdb\\u6280\\u672f\\u7684\\u65b0\\u4e00\\u4ee3\\u4ea7\\u54c1\\uff0c\\u6bcf\\u5e74\\u8bbe\\u8ba1\\u3001\\u7814\\u53d1\\u3001\\u5236\\u9020\\u7684\\u5168\\u65b0\\u7684\\u6559\\u5177\\u6a21\\u578b\\u3001\\u5b9e\\u8df5\\u8bbe\\u5907\\u4e0a\\u767e\\u6b3e\\uff0c\\u4e3a\\u5317\\u65b9\\u96c6\\u56e2\\uff0c\\u4ee5\\u53ca\\u6c7d\\u8f66\\u6559\\u80b2\\u884c\\u4e1a\\u7684\\u4f18\\u8d28\\u6559\\u5b66\\u6548\\u679c\\u5960\\u5b9a\\u4e86\\u575a\\u5b9e\\u7684\\u7269\\u8d28\\u57fa\\u7840\\u3002&lt;\\/span&gt;&lt;\\/p&gt;\"}', '保存数据', '1', '27.188.252.74', '1584096520', '1584096520');
INSERT INTO `c_system_log` VALUES ('144', '1', '反馈列表', '/admin.php/admin/feedback/index.html', '[]', '浏览数据', '14', '27.188.252.74', '1584174653', '1584347479');
INSERT INTO `c_system_log` VALUES ('145', '1', '反馈列表', '/admin.php/admin/feedback/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '13', '27.188.252.74', '1584174653', '1584347479');
INSERT INTO `c_system_log` VALUES ('146', '1', '公司简介', '/admin.php/admin/company/index.html', '[]', '浏览数据', '5', '27.188.252.74', '1584175733', '1584347471');
INSERT INTO `c_system_log` VALUES ('147', '1', '公司简介', '/admin.php/admin/company/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '5', '27.188.252.74', '1584175733', '1584347472');
INSERT INTO `c_system_log` VALUES ('148', '1', '未加入系统菜单', '/admin.php/admin/company/edit.html?id=1&hisi_iframe=yes', '{\"id\":\"1\",\"hisi_iframe\":\"yes\"}', '浏览数据', '3', '27.188.252.74', '1584175735', '1584347473');
INSERT INTO `c_system_log` VALUES ('149', '1', '未加入系统菜单', '/admin.php/admin/company/edit.html', '{\"contact_information\":\"15749574443\",\"id\":\"1\",\"content\":\"&lt;p&gt;&lt;p&gt;\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb&lt;\\/p&gt;&lt;p&gt;&lt;p&gt;&lt;img src=&quot;http:\\/\\/cmf.qc110.cn\\/upload\\/company\\/image\\/88\\/ddb189f72fb538b423e84c93bfa751.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;\\/p&gt;&lt;p&gt;\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb&lt;\\/p&gt;&lt;\\/p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;b&gt;\\u8537\\u8587\\u8537\\u8587\\u8537\\u8587&lt;\\/b&gt;&lt;\\/p&gt;\"}', '保存数据', '1', '27.188.252.74', '1584176644', '1584176644');
INSERT INTO `c_system_log` VALUES ('150', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/add.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', '7', '27.188.252.74', '1584345258', '1584350804');
INSERT INTO `c_system_log` VALUES ('151', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/add.html', '{\"category_name\":\"\\u5176\\u5b83\\u5b9e\\u8bad\\u5ba4\"}', '保存数据', '6', '27.188.252.74', '1584345285', '1584350664');
INSERT INTO `c_system_log` VALUES ('152', '1', '附件上传', '/admin.php/system/annex/upload/group/video/thumb/100x100/water/no.html', '{\"group\":\"video\",\"thumb\":\"100x100\",\"water\":\"no\"}', '保存数据', '3', '27.188.252.74', '1584346203', '1584346346');
INSERT INTO `c_system_log` VALUES ('153', '1', '未加入系统菜单', '/admin.php/admin/video/upload_file/type/video.html', '{\"type\":\"video\"}', '保存数据', '3', '27.188.252.74', '1584346207', '1584346350');
INSERT INTO `c_system_log` VALUES ('154', '1', '未加入系统菜单', '/admin.php/admin/video/upload/group/video/thumb/200/water/no.html', '{\"group\":\"video\",\"thumb\":\"200\",\"water\":\"no\"}', '保存数据', '1', '27.188.252.74', '1584346374', '1584346374');
INSERT INTO `c_system_log` VALUES ('155', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/del.html?id=1', '{\"id\":\"1\"}', '浏览数据', '1', '27.188.252.74', '1584347362', '1584347362');
INSERT INTO `c_system_log` VALUES ('156', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/del.html?id=2', '{\"id\":\"2\"}', '浏览数据', '1', '27.188.252.74', '1584347364', '1584347364');
INSERT INTO `c_system_log` VALUES ('157', '1', '状态设置', '/admin.php/system/menu/status/table/admin_menu/id/150.html?val=0', '{\"val\":\"0\",\"table\":\"admin_menu\",\"id\":\"150\"}', '浏览数据', '1', '27.188.252.74', '1584347427', '1584347427');
INSERT INTO `c_system_log` VALUES ('158', '1', '未加入系统菜单', '/admin.php/admin/video/edit.html?id=4&hisi_iframe=yes', '{\"id\":\"4\",\"hisi_iframe\":\"yes\"}', '浏览数据', '1', '27.188.252.74', '1584347445', '1584347445');
INSERT INTO `c_system_log` VALUES ('159', '1', '联系我们', '/admin.php/admin/company/telindex.html', '[]', '浏览数据', '1', '27.188.252.74', '1584347476', '1584347476');
INSERT INTO `c_system_log` VALUES ('160', '1', '联系我们', '/admin.php/admin/company/telindex.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', '1', '27.188.252.74', '1584347476', '1584347476');
INSERT INTO `c_system_log` VALUES ('161', '1', '未加入系统菜单', '/admin.php/admin/company/teledit.html?id=2&hisi_iframe=yes', '{\"id\":\"2\",\"hisi_iframe\":\"yes\"}', '浏览数据', '1', '27.188.252.74', '1584347477', '1584347477');
INSERT INTO `c_system_log` VALUES ('162', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/del.html?id=6', '{\"id\":\"6\"}', '浏览数据', '1', '27.188.252.74', '1584350568', '1584350568');
INSERT INTO `c_system_log` VALUES ('163', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/edit.html?id=7&hisi_iframe=yes', '{\"id\":\"7\",\"hisi_iframe\":\"yes\"}', '浏览数据', '1', '27.188.252.74', '1584350628', '1584350628');
INSERT INTO `c_system_log` VALUES ('164', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/edit.html', '{\"category_name\":\"\\u5954\\u5b9d\\u5965\\u5b9e\\u8bad\\u5ba4\",\"id\":\"7\"}', '保存数据', '1', '27.188.252.74', '1584350644', '1584350644');
INSERT INTO `c_system_log` VALUES ('165', '1', '未加入系统菜单', '/admin.php/admin/laboratory/edit.html?id=3&hisi_iframe=yes', '{\"id\":\"3\",\"hisi_iframe\":\"yes\"}', '浏览数据', '4', '27.188.252.74', '1584351478', '1584351601');
INSERT INTO `c_system_log` VALUES ('166', '1', '未加入系统菜单', '/admin.php/admin/laboratory_category/del.html?id=8', '{\"id\":\"8\"}', '浏览数据', '1', '27.188.252.74', '1584351587', '1584351587');
INSERT INTO `c_system_log` VALUES ('167', '1', '备份数据库', '/admin.php/system/database/export.html', '{\"id\":[\"c_banner\",\"c_case\",\"c_case_category\",\"c_company\",\"c_feedback\",\"c_jobs\",\"c_laboratory\",\"c_laboratory_category\",\"c_laboratory_video\",\"c_product\",\"c_product_category\",\"c_system_annex\",\"c_system_annex_group\",\"c_system_config\",\"c_system_hook\",\"c_system_hook_plugins\",\"c_system_language\",\"c_system_log\",\"c_system_menu\",\"c_system_menu_lang\",\"c_system_module\",\"c_system_plugins\",\"c_system_role\",\"c_system_user\",\"c_system_user_role\",\"c_token\",\"c_video_category\",\"c_video_comment\",\"c_video_main\",\"c_videos\"]}', '保存数据', '1', '27.188.252.74', '1584351787', '1584351787');

-- -----------------------------
-- Table structure for `c_system_menu`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_menu`;
CREATE TABLE `c_system_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID(快捷菜单专用)',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL COMMENT '模块名或插件名，插件名格式:plugins.插件名',
  `title` varchar(20) NOT NULL COMMENT '菜单标题',
  `icon` varchar(80) NOT NULL DEFAULT 'aicon ai-shezhi' COMMENT '菜单图标',
  `url` varchar(200) NOT NULL COMMENT '链接地址(模块/控制器/方法)',
  `param` varchar(200) NOT NULL DEFAULT '' COMMENT '扩展参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '打开方式(_blank,_self)',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `debug` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开发模式可见',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `nav` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为菜单显示，1显示0不显示',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1显示，0隐藏',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='[系统] 管理菜单';

-- -----------------------------
-- Records of `c_system_menu`
-- -----------------------------
INSERT INTO `c_system_menu` VALUES ('1', '0', '0', 'system', '首页', '', 'system/index', '', '_self', '0', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('2', '0', '0', 'system', '系统', '', 'system/system', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('3', '0', '0', 'system', '插件', 'aicon ai-shezhi', 'system/plugins', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('4', '0', '1', 'system', '快捷菜单', 'aicon ai-caidan', 'system/quick', '', '_self', '0', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('5', '0', '3', 'system', '插件列表', 'aicon ai-mokuaiguanli', 'system/plugins', '', '_self', '0', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('6', '0', '2', 'system', '系统基础', 'aicon ai-gongneng', 'system/system', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('7', '0', '17', 'system', '导入主题SQL', '', 'system/module/exeSql', '', '_self', '10', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('8', '0', '2', 'system', '系统扩展', 'aicon ai-shezhi', 'system/extend', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('9', '0', '4', 'system', '预留占位', '', '', '', '_self', '4', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('10', '0', '6', 'system', '系统设置', 'aicon ai-icon01', 'system/system/index', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('11', '0', '6', 'system', '配置管理', 'aicon ai-peizhiguanli', 'system/config/index', '', '_self', '2', '1', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('12', '0', '6', 'system', '系统菜单', 'aicon ai-systemmenu', 'system/menu/index', '', '_self', '3', '1', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('13', '0', '6', 'system', '管理员角色', '', 'system/user/role', '', '_self', '4', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('14', '0', '6', 'system', '系统管理员', 'aicon ai-tubiao05', 'system/user/index', '', '_self', '5', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('15', '0', '6', 'system', '系统日志', 'aicon ai-xitongrizhi-tiaoshi', 'system/log/index', '', '_self', '7', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('16', '0', '6', 'system', '附件管理', '', 'system/annex/index', '', '_self', '8', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('17', '0', '8', 'system', '本地模块', 'aicon ai-mokuaiguanli1', 'system/module/index', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('18', '0', '8', 'system', '本地插件', 'aicon ai-chajianguanli', 'system/plugins/index', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('19', '0', '8', 'system', '插件钩子', 'aicon ai-icon-test', 'system/hook/index', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('20', '0', '4', 'system', '预留占位', '', '', '', '_self', '1', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('21', '0', '4', 'system', '预留占位', '', '', '', '_self', '2', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('22', '0', '4', 'system', '预留占位', '', '', '', '_self', '1', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('23', '0', '4', 'system', '预留占位', '', '', '', '_self', '2', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('24', '0', '4', 'system', '后台首页', '', 'system/index/index', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('25', '0', '4', 'system', '清空缓存', '', 'system/index/clear', '', '_self', '2', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('26', '0', '12', 'system', '添加菜单', '', 'system/menu/add', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('27', '0', '12', 'system', '修改菜单', '', 'system/menu/edit', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('28', '0', '12', 'system', '删除菜单', '', 'system/menu/del', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('29', '0', '12', 'system', '状态设置', '', 'system/menu/status', '', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('30', '0', '12', 'system', '排序设置', '', 'system/menu/sort', '', '_self', '5', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('31', '0', '12', 'system', '添加快捷菜单', '', 'system/menu/quick', '', '_self', '6', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('32', '0', '12', 'system', '导出菜单', '', 'system/menu/export', '', '_self', '7', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('33', '0', '13', 'system', '添加角色', '', 'system/user/addrole', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('34', '0', '13', 'system', '修改角色', '', 'system/user/editrole', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('35', '0', '13', 'system', '删除角色', '', 'system/user/delrole', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('36', '0', '13', 'system', '状态设置', '', 'system/user/statusRole', '', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('37', '0', '14', 'system', '添加管理员', '', 'system/user/adduser', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('38', '0', '14', 'system', '修改管理员', '', 'system/user/edituser', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('39', '0', '14', 'system', '删除管理员', '', 'system/user/deluser', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('40', '0', '14', 'system', '状态设置', '', 'system/user/status', '', '_self', '4', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('41', '0', '4', 'system', '个人信息设置', '', 'system/user/info', '', '_self', '5', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('42', '0', '18', 'system', '安装插件', '', 'system/plugins/install', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('43', '0', '18', 'system', '卸载插件', '', 'system/plugins/uninstall', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('44', '0', '18', 'system', '删除插件', '', 'system/plugins/del', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('45', '0', '18', 'system', '状态设置', '', 'system/plugins/status', '', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('46', '0', '18', 'system', '生成插件', '', 'system/plugins/design', '', '_self', '5', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('47', '0', '18', 'system', '运行插件', '', 'system/plugins/run', '', '_self', '6', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('48', '0', '18', 'system', '更新插件', '', 'system/plugins/update', '', '_self', '7', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('49', '0', '18', 'system', '插件配置', '', 'system/plugins/setting', '', '_self', '8', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('50', '0', '19', 'system', '添加钩子', '', 'system/hook/add', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('51', '0', '19', 'system', '修改钩子', '', 'system/hook/edit', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('52', '0', '19', 'system', '删除钩子', '', 'system/hook/del', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('53', '0', '19', 'system', '状态设置', '', 'system/hook/status', '', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('54', '0', '19', 'system', '插件排序', '', 'system/hook/sort', '', '_self', '5', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('55', '0', '11', 'system', '添加配置', '', 'system/config/add', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('56', '0', '11', 'system', '修改配置', '', 'system/config/edit', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('57', '0', '11', 'system', '删除配置', '', 'system/config/del', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('58', '0', '11', 'system', '状态设置', '', 'system/config/status', '', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('59', '0', '11', 'system', '排序设置', '', 'system/config/sort', '', '_self', '5', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('60', '0', '10', 'system', '基础配置', '', 'system/system/index', 'group=base', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('61', '0', '10', 'system', '系统配置', '', 'system/system/index', 'group=sys', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('62', '0', '10', 'system', '上传配置', '', 'system/system/index', 'group=upload', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('63', '0', '10', 'system', '开发配置', '', 'system/system/index', 'group=develop', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('64', '0', '17', 'system', '生成模块', '', 'system/module/design', '', '_self', '6', '1', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('65', '0', '17', 'system', '安装模块', '', 'system/module/install', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('66', '0', '17', 'system', '卸载模块', '', 'system/module/uninstall', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('67', '0', '17', 'system', '状态设置', '', 'system/module/status', '', '_self', '3', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('68', '0', '17', 'system', '设置默认模块', '', 'system/module/setdefault', '', '_self', '4', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('69', '0', '17', 'system', '删除模块', '', 'system/module/del', '', '_self', '5', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('70', '0', '4', 'system', '预留占位', '', '', '', '_self', '1', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('71', '0', '4', 'system', '预留占位', '', '', '', '_self', '2', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('72', '0', '4', 'system', '预留占位', '', '', '', '_self', '3', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('73', '0', '4', 'system', '预留占位', '', '', '', '_self', '4', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('74', '0', '4', 'system', '预留占位', '', '', '', '_self', '5', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('75', '0', '4', 'system', '预留占位', '', '', '', '_self', '0', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('76', '0', '4', 'system', '预留占位', '', '', '', '_self', '0', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('77', '0', '4', 'system', '预留占位', '', '', '', '_self', '0', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('78', '0', '16', 'system', '附件上传', '', 'system/annex/upload', '', '_self', '1', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('79', '0', '16', 'system', '删除附件', '', 'system/annex/del', '', '_self', '2', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('80', '0', '8', 'system', '框架升级', 'aicon ai-iconfontshengji', 'system/upgrade/index', '', '_self', '4', '0', '1', '1', '1', '1491352728');
INSERT INTO `c_system_menu` VALUES ('81', '0', '80', 'system', '获取升级列表', '', 'system/upgrade/lists', '', '_self', '0', '0', '1', '1', '1', '1491353504');
INSERT INTO `c_system_menu` VALUES ('82', '0', '80', 'system', '安装升级包', '', 'system/upgrade/install', '', '_self', '0', '0', '1', '1', '1', '1491353568');
INSERT INTO `c_system_menu` VALUES ('83', '0', '80', 'system', '下载升级包', '', 'system/upgrade/download', '', '_self', '0', '0', '1', '1', '1', '1491395830');
INSERT INTO `c_system_menu` VALUES ('84', '0', '6', 'system', '数据库管理', 'aicon ai-shujukuguanli', 'system/database/index', '', '_self', '6', '0', '1', '1', '1', '1491461136');
INSERT INTO `c_system_menu` VALUES ('85', '0', '84', 'system', '备份数据库', '', 'system/database/export', '', '_self', '0', '0', '1', '1', '1', '1491461250');
INSERT INTO `c_system_menu` VALUES ('86', '0', '84', 'system', '恢复数据库', '', 'system/database/import', '', '_self', '0', '0', '1', '1', '1', '1491461315');
INSERT INTO `c_system_menu` VALUES ('87', '0', '84', 'system', '优化数据库', '', 'system/database/optimize', '', '_self', '0', '0', '1', '1', '1', '1491467000');
INSERT INTO `c_system_menu` VALUES ('88', '0', '84', 'system', '删除备份', '', 'system/database/del', '', '_self', '0', '0', '1', '1', '1', '1491467058');
INSERT INTO `c_system_menu` VALUES ('89', '0', '84', 'system', '修复数据库', '', 'system/database/repair', '', '_self', '0', '0', '1', '1', '1', '1491880879');
INSERT INTO `c_system_menu` VALUES ('90', '0', '21', 'system', '设置默认等级', '', 'system/member/setdefault', '', '_self', '0', '0', '1', '1', '1', '1491966585');
INSERT INTO `c_system_menu` VALUES ('91', '0', '10', 'system', '数据库配置', '', 'system/system/index', 'group=databases', '_self', '5', '0', '1', '0', '1', '1492072213');
INSERT INTO `c_system_menu` VALUES ('92', '0', '17', 'system', '模块打包', '', 'system/module/package', '', '_self', '7', '0', '1', '1', '1', '1492134693');
INSERT INTO `c_system_menu` VALUES ('93', '0', '18', 'system', '插件打包', '', 'system/plugins/package', '', '_self', '0', '0', '1', '1', '1', '1492134743');
INSERT INTO `c_system_menu` VALUES ('94', '0', '17', 'system', '主题管理', '', 'system/module/theme', '', '_self', '8', '0', '1', '1', '1', '1492433470');
INSERT INTO `c_system_menu` VALUES ('95', '0', '17', 'system', '设置默认主题', '', 'system/module/setdefaulttheme', '', '_self', '9', '0', '1', '1', '1', '1492433618');
INSERT INTO `c_system_menu` VALUES ('96', '0', '17', 'system', '删除主题', '', 'system/module/deltheme', '', '_self', '10', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('97', '0', '6', 'system', '语言包管理', '', 'system/language/index', '', '_self', '9', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('98', '0', '97', 'system', '添加语言包', '', 'system/language/add', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('99', '0', '97', 'system', '修改语言包', '', 'system/language/edit', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('100', '0', '97', 'system', '删除语言包', '', 'system/language/del', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('101', '0', '97', 'system', '排序设置', '', 'system/language/sort', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('102', '0', '97', 'system', '状态设置', '', 'system/language/status', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('103', '0', '16', 'system', '收藏夹图标上传', '', 'system/annex/favicon', '', '_self', '3', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('104', '0', '17', 'system', '导入模块', '', 'system/module/import', '', '_self', '11', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('105', '0', '4', 'system', '后台首页', '', 'system/index/welcome', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('106', '0', '4', 'system', '布局切换', '', 'system/user/iframe', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('107', '0', '15', 'system', '删除日志', '', 'system/log/del', 'table=admin_log', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('108', '0', '15', 'system', '清空日志', '', 'system/log/clear', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('109', '0', '17', 'system', '编辑模块', '', 'system/module/edit', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('110', '0', '17', 'system', '模块图标上传', '', 'system/module/icon', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('111', '0', '18', 'system', '导入插件', '', 'system/plugins/import', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('112', '0', '4', 'system', '钩子插件状态', '', 'system/hook/hookPluginsStatus', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('113', '0', '4', 'system', '设置主题', '', 'system/user/setTheme', '', '_self', '100', '0', '1', '0', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('114', '0', '8', 'system', '应用市场', 'aicon ai-app-store', 'system/store/index', '', '_self', '0', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('115', '0', '114', 'system', '安装应用', '', 'system/store/install', '', '_self', '0', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('116', '0', '21', 'system', '重置密码', '', 'system/member/resetPwd', '', '_self', '6', '0', '1', '1', '1', '1490315067');
INSERT INTO `c_system_menu` VALUES ('117', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('118', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('119', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('120', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('121', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('122', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('123', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('124', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('125', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('126', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('127', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('128', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('129', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('130', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('131', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('132', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('133', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('134', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('135', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('136', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('137', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('138', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('139', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('140', '0', '4', 'system', '预留占位', '', '', '', '_self', '100', '0', '1', '1', '0', '1490315067');
INSERT INTO `c_system_menu` VALUES ('141', '0', '0', 'admin', '后台管理', 'aicon ai-shezhi', 'admin', '', '_self', '1', '0', '0', '1', '1', '1583230546');
INSERT INTO `c_system_menu` VALUES ('142', '0', '141', 'admin', '首页管理', 'aicon ai-shouyeshouye', 'admin/index/default', '', '_self', '0', '0', '0', '1', '1', '1583230825');
INSERT INTO `c_system_menu` VALUES ('143', '0', '142', 'admin', '轮播广告', 'aicon ai-shuaxin2', 'admin/banner/index', '', '_self', '0', '0', '0', '1', '1', '1583230968');
INSERT INTO `c_system_menu` VALUES ('144', '0', '150', 'admin', '产品分类', 'typcn typcn-th-small', 'admin/category/index', '', '_self', '0', '0', '0', '1', '1', '1583292365');
INSERT INTO `c_system_menu` VALUES ('145', '0', '150', 'admin', '全部产品', 'aicon ai-systemmenu', 'admin/product/index', '', '_self', '0', '0', '0', '1', '1', '1583293766');
INSERT INTO `c_system_menu` VALUES ('146', '0', '156', 'admin', '实训室列表', 'typcn typcn-pin-outline', 'admin/laboratory/index', '', '_self', '1', '0', '0', '1', '1', '1583399333');
INSERT INTO `c_system_menu` VALUES ('147', '0', '156', 'admin', '实训室系列视频', 'typcn typcn-video', 'admin/laboratoryVideo/index', '', '_self', '2', '0', '0', '1', '1', '1583478657');
INSERT INTO `c_system_menu` VALUES ('148', '0', '141', 'admin', '案例管理', 'aicon ai-mokuaiguanli1', 'admin/cases/default', '', '_self', '3', '0', '0', '1', '1', '1583748569');
INSERT INTO `c_system_menu` VALUES ('149', '0', '148', 'admin', '案例分类', 'aicon ai-caidan', 'admin/caseCategory/index', '', '_self', '0', '0', '0', '1', '1', '1583748595');
INSERT INTO `c_system_menu` VALUES ('150', '0', '141', 'admin', '产品管理', 'fa fa-clipboard', 'admin/product/default', '', '_self', '2', '0', '0', '1', '0', '1583824811');
INSERT INTO `c_system_menu` VALUES ('151', '0', '148', 'admin', '案例列表', 'fa fa-th-list', 'admin/cases/index', '', '_self', '0', '0', '0', '1', '1', '1583826861');
INSERT INTO `c_system_menu` VALUES ('152', '0', '141', 'admin', '视频库管理', 'fa fa-file-video-o', 'admin/video/default', '', '_self', '4', '0', '0', '1', '1', '1583911420');
INSERT INTO `c_system_menu` VALUES ('153', '0', '152', 'admin', '视频库分类', 'typcn typcn-th-small-outline', 'admin/videoCategory/index', '', '_self', '0', '0', '0', '1', '1', '1583911481');
INSERT INTO `c_system_menu` VALUES ('154', '0', '152', 'admin', '视频库', 'fa fa-video-camera', 'admin/video/index', '', '_self', '0', '0', '0', '1', '1', '1583911544');
INSERT INTO `c_system_menu` VALUES ('155', '0', '152', 'admin', '设置主推视频', 'aicon ai-tishi', 'admin/video/main', '', '_self', '0', '0', '0', '1', '1', '1583981596');
INSERT INTO `c_system_menu` VALUES ('156', '0', '141', 'admin', '实训室管理', 'aicon ai-peizhiguanli', 'admin/laboratory/default', '', '_self', '1', '0', '0', '1', '1', '1584066685');
INSERT INTO `c_system_menu` VALUES ('157', '0', '156', 'admin', '实训室分类', 'aicon ai-quanping1', 'admin/laboratoryCategory/index', '', '_self', '0', '0', '0', '1', '1', '1584093382');
INSERT INTO `c_system_menu` VALUES ('158', '0', '141', 'admin', '服务管理', 'aicon ai-chu', 'admin/feedback/default', '', '_self', '5', '0', '0', '1', '1', '1584174310');
INSERT INTO `c_system_menu` VALUES ('159', '0', '158', 'admin', '反馈列表', 'aicon ai-caidan', 'admin/feedback/index', '', '_self', '0', '0', '0', '1', '1', '1584174346');
INSERT INTO `c_system_menu` VALUES ('160', '0', '158', 'admin', '公司简介', 'typcn typcn-edit', 'admin/company/index', '', '_self', '0', '0', '0', '1', '1', '1584175237');
INSERT INTO `c_system_menu` VALUES ('161', '0', '158', 'admin', '联系我们', 'typcn typcn-phone-outline', 'admin/company/telindex', '', '_self', '0', '0', '0', '1', '1', '1584177447');

-- -----------------------------
-- Table structure for `c_system_menu_lang`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_menu_lang`;
CREATE TABLE `c_system_menu_lang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '标题',
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '语言包',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COMMENT='[系统] 管理菜单语言包';

-- -----------------------------
-- Records of `c_system_menu_lang`
-- -----------------------------
INSERT INTO `c_system_menu_lang` VALUES ('131', '1', '首页', '1');
INSERT INTO `c_system_menu_lang` VALUES ('132', '2', '系统', '1');
INSERT INTO `c_system_menu_lang` VALUES ('133', '3', '插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('134', '4', '快捷菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('135', '5', '插件列表', '1');
INSERT INTO `c_system_menu_lang` VALUES ('136', '6', '系统基础', '1');
INSERT INTO `c_system_menu_lang` VALUES ('137', '7', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('138', '8', '系统扩展', '1');
INSERT INTO `c_system_menu_lang` VALUES ('139', '9', '开发专用', '1');
INSERT INTO `c_system_menu_lang` VALUES ('140', '10', '系统设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('141', '11', '配置管理', '1');
INSERT INTO `c_system_menu_lang` VALUES ('142', '12', '系统菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('143', '13', '管理员角色', '1');
INSERT INTO `c_system_menu_lang` VALUES ('144', '14', '系统管理员', '1');
INSERT INTO `c_system_menu_lang` VALUES ('145', '15', '系统日志', '1');
INSERT INTO `c_system_menu_lang` VALUES ('146', '16', '附件管理', '1');
INSERT INTO `c_system_menu_lang` VALUES ('147', '17', '本地模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('148', '18', '本地插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('149', '19', '插件钩子', '1');
INSERT INTO `c_system_menu_lang` VALUES ('150', '20', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('151', '21', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('152', '22', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('153', '23', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('154', '24', '后台首页', '1');
INSERT INTO `c_system_menu_lang` VALUES ('155', '25', '清空缓存', '1');
INSERT INTO `c_system_menu_lang` VALUES ('156', '26', '添加菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('157', '27', '修改菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('158', '28', '删除菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('159', '29', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('160', '30', '排序设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('161', '31', '添加快捷菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('162', '32', '导出菜单', '1');
INSERT INTO `c_system_menu_lang` VALUES ('163', '33', '添加角色', '1');
INSERT INTO `c_system_menu_lang` VALUES ('164', '34', '修改角色', '1');
INSERT INTO `c_system_menu_lang` VALUES ('165', '35', '删除角色', '1');
INSERT INTO `c_system_menu_lang` VALUES ('166', '36', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('167', '37', '添加管理员', '1');
INSERT INTO `c_system_menu_lang` VALUES ('168', '38', '修改管理员', '1');
INSERT INTO `c_system_menu_lang` VALUES ('169', '39', '删除管理员', '1');
INSERT INTO `c_system_menu_lang` VALUES ('170', '40', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('171', '41', '个人信息设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('172', '42', '安装插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('173', '43', '卸载插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('174', '44', '删除插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('175', '45', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('176', '46', '生成插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('177', '47', '运行插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('178', '48', '更新插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('179', '49', '插件配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('180', '50', '添加钩子', '1');
INSERT INTO `c_system_menu_lang` VALUES ('181', '51', '修改钩子', '1');
INSERT INTO `c_system_menu_lang` VALUES ('182', '52', '删除钩子', '1');
INSERT INTO `c_system_menu_lang` VALUES ('183', '53', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('184', '54', '插件排序', '1');
INSERT INTO `c_system_menu_lang` VALUES ('185', '55', '添加配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('186', '56', '修改配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('187', '57', '删除配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('188', '58', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('189', '59', '排序设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('190', '60', '基础配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('191', '61', '系统配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('192', '62', '上传配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('193', '63', '开发配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('194', '64', '生成模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('195', '65', '安装模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('196', '66', '卸载模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('197', '67', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('198', '68', '设置默认模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('199', '69', '删除模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('200', '70', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('201', '71', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('202', '72', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('203', '73', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('204', '74', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('205', '75', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('206', '76', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('207', '77', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('208', '78', '附件上传', '1');
INSERT INTO `c_system_menu_lang` VALUES ('209', '79', '删除附件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('210', '80', '框架升级', '1');
INSERT INTO `c_system_menu_lang` VALUES ('211', '81', '获取升级列表', '1');
INSERT INTO `c_system_menu_lang` VALUES ('212', '82', '安装升级包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('213', '83', '下载升级包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('214', '84', '数据库管理', '1');
INSERT INTO `c_system_menu_lang` VALUES ('215', '85', '备份数据库', '1');
INSERT INTO `c_system_menu_lang` VALUES ('216', '86', '恢复数据库', '1');
INSERT INTO `c_system_menu_lang` VALUES ('217', '87', '优化数据库', '1');
INSERT INTO `c_system_menu_lang` VALUES ('218', '88', '删除备份', '1');
INSERT INTO `c_system_menu_lang` VALUES ('219', '89', '修复数据库', '1');
INSERT INTO `c_system_menu_lang` VALUES ('220', '90', '设置默认等级', '1');
INSERT INTO `c_system_menu_lang` VALUES ('221', '91', '数据库配置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('222', '92', '模块打包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('223', '93', '插件打包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('224', '94', '主题管理', '1');
INSERT INTO `c_system_menu_lang` VALUES ('225', '95', '设置默认主题', '1');
INSERT INTO `c_system_menu_lang` VALUES ('226', '96', '删除主题', '1');
INSERT INTO `c_system_menu_lang` VALUES ('227', '97', '语言包管理', '1');
INSERT INTO `c_system_menu_lang` VALUES ('228', '98', '添加语言包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('229', '99', '修改语言包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('230', '100', '删除语言包', '1');
INSERT INTO `c_system_menu_lang` VALUES ('231', '101', '排序设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('232', '102', '状态设置', '1');
INSERT INTO `c_system_menu_lang` VALUES ('233', '103', '收藏夹图标上传', '1');
INSERT INTO `c_system_menu_lang` VALUES ('234', '104', '导入模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('235', '105', '后台首页', '1');
INSERT INTO `c_system_menu_lang` VALUES ('236', '106', '布局切换', '1');
INSERT INTO `c_system_menu_lang` VALUES ('237', '107', '删除日志', '1');
INSERT INTO `c_system_menu_lang` VALUES ('238', '108', '清空日志', '1');
INSERT INTO `c_system_menu_lang` VALUES ('239', '109', '编辑模块', '1');
INSERT INTO `c_system_menu_lang` VALUES ('240', '110', '模块图标上传', '1');
INSERT INTO `c_system_menu_lang` VALUES ('241', '111', '导入插件', '1');
INSERT INTO `c_system_menu_lang` VALUES ('242', '112', '钩子插件状态', '1');
INSERT INTO `c_system_menu_lang` VALUES ('243', '113', '设置主题', '1');
INSERT INTO `c_system_menu_lang` VALUES ('244', '114', '应用市场', '1');
INSERT INTO `c_system_menu_lang` VALUES ('245', '115', '安装应用', '1');
INSERT INTO `c_system_menu_lang` VALUES ('246', '116', '重置密码', '1');
INSERT INTO `c_system_menu_lang` VALUES ('247', '117', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('248', '118', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('249', '119', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('250', '120', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('251', '121', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('252', '122', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('253', '123', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('254', '124', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('255', '125', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('256', '126', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('257', '127', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('258', '128', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('259', '129', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('260', '130', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('261', '131', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('262', '132', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('263', '133', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('264', '134', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('265', '135', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('266', '136', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('267', '137', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('268', '138', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('269', '139', '预留占位', '1');
INSERT INTO `c_system_menu_lang` VALUES ('270', '140', '预留占位', '1');

-- -----------------------------
-- Table structure for `c_system_module`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_module`;
CREATE TABLE `c_system_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统模块',
  `name` varchar(50) NOT NULL COMMENT '模块名(英文)',
  `identifier` varchar(100) NOT NULL COMMENT '模块标识(模块名(字母).开发者标识.module)',
  `title` varchar(50) NOT NULL COMMENT '模块标题',
  `intro` varchar(255) NOT NULL COMMENT '模块简介',
  `author` varchar(100) NOT NULL COMMENT '作者',
  `icon` varchar(80) NOT NULL DEFAULT 'aicon ai-mokuaiguanli' COMMENT '图标',
  `version` varchar(20) NOT NULL COMMENT '版本号',
  `url` varchar(255) NOT NULL COMMENT '链接',
  `sort` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未安装，1未启用，2已启用',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '默认模块(只能有一个)',
  `config` text NOT NULL COMMENT '配置',
  `app_id` varchar(30) NOT NULL DEFAULT '0' COMMENT '应用市场ID(0本地)',
  `app_keys` varchar(200) DEFAULT '' COMMENT '应用秘钥',
  `theme` varchar(50) NOT NULL DEFAULT 'default' COMMENT '主题模板',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='[系统] 模块';

-- -----------------------------
-- Records of `c_system_module`
-- -----------------------------
INSERT INTO `c_system_module` VALUES ('1', '1', 'system', 'system.hisiphp.module', '系统管理模块', '系统核心模块，用于后台各项管理功能模块及功能拓展', 'HisiPHP官方出品', '', '1.0.0', 'http://www.hisiphp.com', '0', '2', '0', '', '0', '', 'default', '1489998096', '1489998096');
INSERT INTO `c_system_module` VALUES ('2', '1', 'index', 'index.hisiphp.module', '默认模块', '推荐使用扩展模块作为默认首页。', 'HisiPHP官方出品', '', '1.0.0', 'http://www.hisiphp.com', '0', '2', '0', '', '0', '', 'default', '1489998096', '1489998096');
INSERT INTO `c_system_module` VALUES ('3', '1', 'install', 'install.hisiphp.module', '系统安装模块', '系统安装模块，勿动。', 'HisiPHP官方出品', '', '1.0.0', 'http://www.hisiphp.com', '0', '2', '0', '', '0', '', 'default', '1489998096', '1489998096');
INSERT INTO `c_system_module` VALUES ('4', '0', 'admin', 'admin', '后台管理', '后台所有管理', 'Peng', '/static/admin/admin.png', '1.0.0', '', '0', '2', '0', '', '0', '', 'default', '1583230533', '1583230533');

-- -----------------------------
-- Table structure for `c_system_plugins`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_plugins`;
CREATE TABLE `c_system_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '插件名称(英文)',
  `title` varchar(32) NOT NULL COMMENT '插件标题',
  `icon` varchar(64) NOT NULL COMMENT '图标',
  `intro` text NOT NULL COMMENT '插件简介',
  `author` varchar(32) NOT NULL COMMENT '作者',
  `url` varchar(255) NOT NULL COMMENT '作者主页',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `config` text NOT NULL COMMENT '插件配置',
  `app_id` varchar(30) NOT NULL DEFAULT '0' COMMENT '来源(0本地)',
  `app_keys` varchar(200) DEFAULT '' COMMENT '应用秘钥',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='[系统] 插件表';

-- -----------------------------
-- Records of `c_system_plugins`
-- -----------------------------
INSERT INTO `c_system_plugins` VALUES ('1', '1', 'hisiphp', '系统基础信息', '/static/plugins/hisiphp/hisiphp.png', '后台首页展示系统基础信息和开发团队信息', 'HisiPHP', 'http://www.hisiphp.com', '1.0.0', 'hisiphp.hisiphp.plugins', '', '0', '', '1509379331', '1509379331', '0', '2');

-- -----------------------------
-- Table structure for `c_system_role`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_role`;
CREATE TABLE `c_system_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `intro` varchar(200) NOT NULL COMMENT '角色简介',
  `auth` text NOT NULL COMMENT '角色权限',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='[系统] 管理角色';

-- -----------------------------
-- Records of `c_system_role`
-- -----------------------------
INSERT INTO `c_system_role` VALUES ('1', '超级管理员', '拥有系统最高权限', '0', '1489411760', '0', '1');
INSERT INTO `c_system_role` VALUES ('2', '系统管理员', '拥有系统管理员权限', '[\"1\",\"4\",\"25\",\"24\",\"2\",\"6\",\"10\",\"60\",\"61\",\"62\",\"63\",\"91\",\"11\",\"55\",\"56\",\"57\",\"58\",\"59\",\"12\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"13\",\"33\",\"34\",\"35\",\"36\",\"14\",\"37\",\"38\",\"39\",\"40\",\"41\",\"16\",\"78\",\"79\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"7\",\"20\",\"75\",\"76\",\"77\",\"21\",\"90\",\"70\",\"71\",\"72\",\"73\",\"74\",\"8\",\"17\",\"65\",\"66\",\"67\",\"68\",\"94\",\"95\",\"18\",\"42\",\"43\",\"45\",\"47\",\"48\",\"49\",\"19\",\"80\",\"81\",\"82\",\"83\",\"9\",\"22\",\"23\",\"3\",\"5\"]', '1489411760', '1507731116', '1');
INSERT INTO `c_system_role` VALUES ('3', '普通管理员', '普通管理员', '{\"0\":\"1\",\"1\":\"4\",\"2\":\"25\",\"4\":\"24\",\"6\":\"106\",\"8\":\"113\"}', '1507737902', '1542075415', '1');

-- -----------------------------
-- Table structure for `c_system_user`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_user`;
CREATE TABLE `c_system_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL,
  `nick` varchar(50) NOT NULL COMMENT '昵称',
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `auth` text NOT NULL COMMENT '权限',
  `iframe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0默认，1框架',
  `theme` varchar(50) NOT NULL DEFAULT 'default' COMMENT '主题',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `last_login_ip` varchar(128) NOT NULL COMMENT '最后登陆IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登陆时间',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='[系统] 管理用户';

-- -----------------------------
-- Records of `c_system_user`
-- -----------------------------
INSERT INTO `c_system_user` VALUES ('1', '1', 'admin', '$2y$10$Cjp1MGGKwMYvX358SEEj0uo7BeWWNv1vqdupgpklQbmJnb49hO1Ji', '超级管理员', '', '', '', '0', '3', '1', '27.188.252.74', '1584345208', '1583230494', '1584345208');

-- -----------------------------
-- Table structure for `c_system_user_role`
-- -----------------------------
DROP TABLE IF EXISTS `c_system_user_role`;
CREATE TABLE `c_system_user_role` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员角色索引';

-- -----------------------------
-- Records of `c_system_user_role`
-- -----------------------------
INSERT INTO `c_system_user_role` VALUES ('1', '1');

-- -----------------------------
-- Table structure for `c_token`
-- -----------------------------
DROP TABLE IF EXISTS `c_token`;
CREATE TABLE `c_token` (
  `token` varchar(128) NOT NULL DEFAULT '' COMMENT 'Token',
  `tag` varchar(50) DEFAULT '' COMMENT '标签',
  `value` varchar(30) NOT NULL DEFAULT '' COMMENT '映射的值',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='token表';


-- -----------------------------
-- Table structure for `c_video_category`
-- -----------------------------
DROP TABLE IF EXISTS `c_video_category`;
CREATE TABLE `c_video_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '分类名称',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `c_video_category`
-- -----------------------------
INSERT INTO `c_video_category` VALUES ('4', '新能源', '1584066158');
INSERT INTO `c_video_category` VALUES ('2', '变速箱系统', '1584065860');
INSERT INTO `c_video_category` VALUES ('3', '发动机系统', '1584065903');

-- -----------------------------
-- Table structure for `c_video_comment`
-- -----------------------------
DROP TABLE IF EXISTS `c_video_comment`;
CREATE TABLE `c_video_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v_id` int(11) DEFAULT '0' COMMENT '视频资源库ID',
  `u_id` int(11) DEFAULT '0' COMMENT '评论人',
  `content` text COMMENT '评论内容',
  `p_id` int(11) DEFAULT '0' COMMENT '父级评论ID',
  `c_time` varchar(255) DEFAULT '' COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `c_video_main`
-- -----------------------------
DROP TABLE IF EXISTS `c_video_main`;
CREATE TABLE `c_video_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主推视频ID',
  `data_id` int(11) DEFAULT '0' COMMENT '视频ID',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `c_time` varchar(11) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `c_videos`
-- -----------------------------
DROP TABLE IF EXISTS `c_videos`;
CREATE TABLE `c_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vc_id` int(11) DEFAULT '0' COMMENT '分类ID',
  `video_name` varchar(100) DEFAULT '' COMMENT '视频名称',
  `video_qrcode` varchar(100) DEFAULT '' COMMENT '视频二维码地址',
  `image` varchar(100) DEFAULT '' COMMENT '主图',
  `video` varchar(100) DEFAULT '' COMMENT '视频地址',
  `introduction` text COMMENT '简介',
  `watch_number` int(11) DEFAULT '0' COMMENT '观看次数',
  `share_number` int(11) DEFAULT '0' COMMENT '分享次数',
  `fabulous_number` int(11) DEFAULT '0' COMMENT '点赞次数',
  `type` int(11) DEFAULT '0' COMMENT '类别1维修案例2产品讲解',
  `c_time` varchar(11) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `c_videos`
-- -----------------------------
INSERT INTO `c_videos` VALUES ('1', '4', '卡罗拉混动视频', '', '/upload/laboratory/image/88/ddb189f72fb538b423e84c93bfa751.jpg', '', '&lt;p&gt;卡罗拉混动视频&lt;/p&gt;', '14', '0', '0', '1', '1584066268');
INSERT INTO `c_videos` VALUES ('2', '4', '测试视频库1', '', '/upload/video/image/88/ddb189f72fb538b423e84c93bfa751.jpg', '/upload/laboratory/video/20200316/27a6f1ab5d33de50c9670560fce3f63f.mp4', '&lt;p&gt;123123123123123213&lt;/p&gt;&lt;p&gt;&lt;b&gt;去去去去去去去去去去去去去&lt;/b&gt;&lt;/p&gt;&lt;p&gt;哦哦哦哦哦哦哦哦哦哦哦哦哦哦哦&lt;/p&gt;', '5', '0', '0', '2', '1584346244');
INSERT INTO `c_videos` VALUES ('3', '2', '测试视频12', '', '/upload/video/image/88/ddb189f72fb538b423e84c93bfa751.jpg', '/upload/laboratory/video/20200316/b7fd545b83eec45d8ddf55fe9ce7e464.mp4', '&lt;p&gt;发发发发发发发发发&lt;/p&gt;&lt;p&gt;嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎&lt;/p&gt;', '5', '0', '0', '1', '1584346289');
INSERT INTO `c_videos` VALUES ('4', '2', '测试视频库3333', '', '/upload/video/image/88/ddb189f72fb538b423e84c93bfa751.jpg', '/upload/laboratory/video/20200316/ba9d694bf0b2cc259546620e93480210.mp4', '&lt;p&gt;测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据测试视频库数据&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/upload/video/image/88/ddb189f72fb538b423e84c93bfa751.jpg&quot; alt=&quot;undefined&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;测试测试测试&lt;/p&gt;', '5', '0', '0', '2', '1584346383');
