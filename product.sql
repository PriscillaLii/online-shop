/*类别；1：数码。2：玩具  3：家具  4：美妆  5：数码  6：图书  7：男装 8：女装  9：零食   10：鞋   11：游戏外设 12：手机  13：笔记本*/
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS = 0;
delete from `productinfo`;
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`) values(1,'mp3',1,299,199,10,'propicture/pro_1_1.jpg');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`) values(2,'鼠标',11,215,108,34,'propicture/pro_2_1.jpg');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`) values(3,'kindle',1,815,722,14,'propicture/pro_3_1.jpg');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(4,'儿童故事机',2,288,163,10,'propicture/pro_4_1.jpg','全新苹果ipod shuffle,8GB内存，五种颜色可选，全网最低价');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(5,'变形金刚',2,499,209,19,'propicture/pro_5_1.jpg','Hasbro 孩之宝 变形金刚 亚洲独家款 钢锁和擎天柱2人组套装');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(6,'大白毛绒公仔',2,138,79,17,'propicture/pro_6_1.jpg',' Disney 迪士尼 超能陆战队大白毛绒公仔站高33cm');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(7,'空气净化器',3,5059,2049,294,'propicture/pro_7_1.jpg','PHILIPS飞利浦AC4074/00空气净化器');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(8,'转页扇',3,189,109,1368,'propicture/pro_8_1.jpg','GREE格力KYT-2501(带定时) 转页扇 蓝色、灰色随机发货');





INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(9,'智能家用扫地机机器人',3,5880,1099,194,'propicture/pro_9_1.jpg',' ECOVACS 科沃斯 智能家用扫地机机器人吸尘器 地宝魔镜S ');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(10,'栀子淡香水',4,660,456,5,'propicture/pro_10_1.jpg',' Gucci古驰绚丽栀子淡香水30ml');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(11,'男士劲能醒肤露',4,100,85,2228,'propicture/pro_11_1.jpg','L OREAL PARIS巴黎欧莱雅男士劲能醒肤露 8重功效50ml');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(12,'美宝莲绝色持久唇膏',4,89,89,251,'propicture/pro_12_1.jpg','Maybelline 美宝莲绝色持久唇膏粉红警报 POW2 3.9g');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(13,'头戴开放式发烧级耳机',5,2580,2099,98,'propicture/pro_13_1.jpg',' Sennheiser 森海塞尔 HD600 头戴开放式发烧级耳机');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(14,'激光游戏鼠标',11,499,439,22,'propicture/pro_14_1.jpg',' SteelSeries 赛睿 Sensei [RAW] 霜冻之蓝版 激光游戏鼠标');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(15,'运动监测健康手环',5,1299,599,4,'propicture/pro_15_1.jpg',' GARMIN 佳明 Vivofit 运动监测健康手环 橙色(续航一年 弧形达屏 50米防水 睡眠监测 无线传输 支持心率带 时尚搭配 老少皆宜) ');



INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(16,'追风筝的人',6,17,24,10976,'propicture/pro_16_1.jpg',' 追风筝的人 平装 – 2006年5月1日 ');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(17,'长歌行(第7卷)',6,12,20,149,'propicture/pro_17_1.jpg',' 漫友精品图书系列:长歌行(第7卷) ');




INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(18,'张剑考研英语黄皮书',6,42,50,39,'propicture/pro_18_1.jpg',' (2016)张剑考研英语黄皮书•(2005-2012)历年考研英语真题解析及复习思路:阅读分册+写作与知识运用分册(珍藏版)(套装共2册)(附8套真题+答题卡) 平装 – 2015年3月14日');


INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(19,'儿童夏款中大童运动两件套',7,148,69,10,'propicture/pro_19_1.jpg','童装男童夏装套装2015新款儿童夏款中大童运动两件套短袖T恤套装'); 





 
INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid` ,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(20,'亚麻休闲西服',7,750,268,20,'propicture/pro_20_1.jpg','春秋薄款亚麻休闲西服男版修身型英伦商务男士小西装潮男装外套'); 

INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(21,'关西襟水手服',8,168,98,100,'propicture/pro_21_1.jpg','kyouko|JK制服 独家高端定制日系拼接领一本关西襟水手服学生制服'); 

INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(22,'波西米亚长裙',8,588,118,80,'propicture/pro_22_1.jpg',' 2015春夏新款女装韩版纯色无袖沙滩裙气质修身波西米亚长裙连衣裙'); 




INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(23,'圆领短袖',8,56,28,80,'propicture/pro_23_1.jpg',' 2015夏装大码宽松圆领短袖女t恤韩范字母百搭女上衣学生闺蜜装潮'); 


INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(24,'费列罗巧克力',9,1520,1288,28,'propicture/pro_24_1.jpg',' 【全国包邮】意大利费列罗巧克力食品进口零食礼盒576粒结婚喜糖');



INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(25,'贝蒂香浓宠物牛肉',9,18,9,288,'propicture/pro_25_1.jpg',' 贝蒂香浓宠物牛肉条500g 宠物狗狗零食 狗狗牛肉条牛肉棒25省包邮糖');


INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(26,'马大姐肉松饼',9,20,13,3000,'propicture/pro_26_1.jpg',' 马大姐肉松饼10个装正宗特价休闲便携零食黄金肉松饼团购糕点特产');



INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(27,'白色懒人鞋',10,85,48,49,'propicture/pro_27_1.jpg',' 春夏大码女中学生白色懒人鞋');



INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(28,'网面透气轻便运动鞋',10,698,138,66,'propicture/pro_28_1.jpg',' 春夏女鞋网面透气轻便运动鞋新款正品低帮舒适休闲鞋旅游鞋女单');



INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(29,'水晶婚鞋',10,378,198,26,'propicture/pro_29_1.jpg',' 水晶婚鞋防水台红色新娘婚纱鞋水钻银色伴娘鞋细跟尖头夜店高跟鞋');


INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(30,'达尔优机械师键盘',11,469,368,116,'propicture/pro_30_1.jpg','达尔优机械师键盘彩虹背光机械键盘lol cf游戏键盘无冲青轴黑轴87');


INSERT INTO `productinfo` 
(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
Values
(31,'亚瑟王 游戏键盘',11,469,368,116,'propicture/pro_31_1.jpg',' 亚瑟王 游戏键盘 有线三色呼吸背光 悬浮机械手感电脑键盘USB');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(40,'小米4',12,1899,1749,1547,'propicture/pro_40_1.jpg','小米 4 电信合约版 3GB内存 雅黑 电信3G手机 不含合约计划');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(41,'iPhone 6',12,5288,4988,28472,'propicture/pro_41_1.jpg','苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(42,'华为荣耀6',12,1699,1699,43940,'propicture/pro_42_1.jpg','荣耀 6 (H60-L01) 移动4G(TD-LTE)低配版 白色 移动4G手机');



INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(43,'苹果MJVM2CH/A',13,6288,5858,1005,'propicture/pro_43_1.jpg','苹果（Apple）MacBook Air 11.6英寸128GB闪存宽屏笔记本电脑 MJVM2CH/A');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(44,'微软Surface Pro 3',13,11088,11088,653,'propicture/pro_44_1.jpg','微软（Microsoft） Surface Pro 3（专业版 Intel i7 256G存储 8G内存）5D2-00009');
INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(45,'联想小新出色版',13,4499,4399,2636,'propicture/pro_45_1.jpg','联想（Lenovo）小新i1000出色版 14英寸笔记本电脑（I7-4558U 4G 500G+8G SSHD 锐炬IRIS显卡 Win8.1）浆果红');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(1,'mp3',1,299,199,10,'propicture/pro_1_1.jpg');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(46,'李维斯牛仔短裤',7,499,199,10,'propicture/pro_46_1.jpg','品牌: Levi’s/李维斯
适用季节: 夏季
适用场景: 其他休闲
适用对象: 青年
材质: 棉
弹力: 无弹
腰型: 中低腰
裤脚口款式: 直脚
裤门襟: 拉链
洗水工艺: 水洗 石洗/石磨 砂洗
');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(47,'与狼共舞男士长袖衬衫2015春季新款波点纯棉衬衫',7,399,199,20,'propicture/pro_47_1.jpg','•	版型: 修身
•	领型: 尖领（常规）
•	颜色: 206豆绿
•	尺码: 165/84A 170/88A 175/92A 180/96A 185/100A 190/104A 195/112
•	品牌: D－WOLVES/与狼共舞
•	材质: 棉
•	上市时间: 2015年
•	适用季节: 春季
•	适用对象: 青年
•	基础风格: 时尚都市
•	细分风格: 欧美简约
•	图案: 圆点
');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(48,'男装',7,399,199,30,'propicture/pro_48_1.jpg','•	颜色: 白色
•	尺码: M L XL 2XL 3XL
•	品牌: Heilan Home/海澜之家
•	袖型: 常规
•	花型图案: 条纹
•	适用季节: 夏季
•	上市时间: 2015年
•	适用对象: 青年
•	基础风格: 时尚都市
');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(49,'新品欧美韩版时尚动物字母3D印花个性圆领修身冰丝棉短袖T恤男潮',7,99,69,50,'propicture/pro_49_1.jpg','
★★★★★高端精美印花，不脱落！抠不掉！ 高档纯棉棉，贵族品质风范！ ★★★★★2015男神新衣，让潮男的你不会有撞衫！舒适透气修身多重功效！ ★★★★★
薄款! 超柔! 透气! 高弹! 爽肤!
95%的棉! 5%的氨纶!
【丝滑感觉! 冰爽一夏】
【不可多得的精品潮t哦，爱自己爱家人就果断下手吧！】'
);

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(50,' nian jeep夏季新品男士短袖t恤吉普特大码翻领休闲条纹男polo衫
',7,129,89,50,'propicture/pro_50_1.jpg','
质量保障！！
天然柔和，皮肤接触无刺激，无污染，无漂染，无任何添加剂，气息清新自然，是绝对健康环保的绿色产品。舒适，透气，不变形。');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(51,'2015夏季保罗衫男士t恤短袖纯棉翻领商务休闲polo衫男装宽松大码
',7,469,189,10,'propicture/pro_51_1.jpg','厚薄: 常规
•	袖长: 短袖
•	货号: SRL1402P
•	版型: 宽松
•	工艺处理: 免烫处理
•	男装品牌: Polo
•	袖型: 常规
•	材质: 棉
•	棉含量: 95%以上
•	适用场景: 其他休闲
•	上市时间: 2015年
•	适用季节: 夏季
•	适用对象: 青年
•	基础风格: 时尚都市
•	细分风格: 商务休闲
•	图案: 纯色
•	服装款式细节: 开衩');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(52,'新款半身裙超短裙女夏季鱼尾裙摆小短裤OL粉色韩版修身显瘦包臀',8,179,129,30,'propicture/pro_52_1.jpg','

运动时尚 青春活力 适合场合多 长腿MM性感 娇小MM甜美可爱
这款粉色系鱼尾小裙裤    最近卖的十分红火呢
老板娘加购了该款的布料  重新制作了一批  还是相同的做工 还是相同的布料
鱼尾边    小裤袋   小荷包    收腰包角    我们一个都不少
这真心是最低价了  不然  这么好的裙子  也不会卖了这么久才打折这么一点点
一分钱一分货    相信您的眼光~！  ' );

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(53,'连衣裙夏2015 粉红大布娃娃 新款女荷叶边网点拼无袖 蕾丝连衣裙',8,679,329,30,'propicture/pro_53_1.jpg','

随着温度的变化，大街上的连衣裙也越来越多了
在这个盛行的连衣裙季节，如何才能从人群中脱颖而出呢
来试试娃娃家这款绝美单品吧，上身绝对给足你惊喜感
采用超优雪纺面料设计，唯美的通透质感带着浪漫的气息，十分适合夏日穿着
有着极好的透气性，上身舒适清爽，即使出汗也不会粘住肌肤
而柔嫩的粉色则能悄悄点亮你的少女情怀，且拥有衬肤效果，将皮肤衬托得更加白皙娇嫩，繁复重叠的不规则荷叶边设计，上身完全不用担心会有臃肿的感觉，增强设计感，更具时尚摩登范，让整体造型更加生动，肩部星星点点的透明网纱拼接，饱含着甜美韵味，若隐若现的呈现出肩部柔美线条，透露出性感小心机
当然透视不仅只是性感的代名词，更是一种穿衣风格与品位，展现出一个不一样的你
简单的搭配一些闪亮饰品即可轻松拥有潮流女神范
无论怎样的场合它都不会让你黯然失色的，绝对惊艳');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(54,' T恤 女粉红大布娃娃2015夏季新款潮印花短袖t韩版女装修身T恤上衣
',8,199,99,30,'propicture/pro_54_1.jpg','吊带以其简约清爽的特质征服了诸多姑娘
设计师们也对这种款式亲睐有加
常规的吊带衫通常会选择以简单明了的肩带设计
而娃娃家这款绝美单品打破了原先传统单一的肩带，
采用精致的花边吊带设计而成，其样式是独家定制的，所以十分独一无二
其上的花纹肌理，精美得无语伦比，更添女神气质
胸前超大的蝴蝶结装饰，不会夸张轻浮
反而更加精致生动，增强整体视觉效果，十分引人注意
赋予了美衣全新面貌，清新脱俗，绽放甜美气息
精选超优水晶棉面料，弹性纤维的加入
使面料上身更加舒适，且不易起皱变形，十分吸汗透气
含棉量超过百分之九十，为您的炎炎夏日带来无限棉柔体验
简单的搭配一款半裙或是一条短裤，即可轻松靓丽的出街约会了
是清凉过夏的必备单品，值得入手');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(55,'连衣裙 女 夏粉红大布娃娃2015新款女装黑色披肩OL气质修身连衣裙
',8,499,299,30,'propicture/pro_55_1.jpg','
撞色一直是T台上不退潮的流行元素，
而贴合身形的连衣裙则是夏天女神衣橱的必备款，
所以，将撞色的设计手法融进一件修身版型的连衣裙，
所产生的化学反应一定会超出你的期待。
这件披肩设计的气质连衣裙，
采用黑白撞色的处理，极具视觉的张力但却不失张扬，
展现出你的时髦气质同时，却又有一种知性优雅的魅力。
而披肩的设计，则能够帮你遮挡肩部的不完美线条，
同时更让你超有时髦气场，不惧众人目光。
收拢腰线的设计不仅让腰腹部的游泳圈都不见，
而且下摆紧致修身的裙摆，
更是能让你在行走时都保持优雅姿态。');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(56,'连衣裙夏粉红大布娃娃预2015夏季新款女装修身褶皱斗篷连衣裙气质',8,799,399,10,'propicture/pro_56_1.jpg','

斗篷的设计有着与生俱来的吸睛气场，
而你的衣橱也需要一件能够彰显自信的单品！
斗篷在上身瞬间就能够让你有hold住一切的感觉，
娃娃的设计师用完美的时尚创意，
将斗篷元素与飘逸质感的梭织面料结合，
让以往给人潇洒利落印象的斗篷，在与修身剪裁的碰撞中
演绎出全新的气场与性感魅力。
精选质感上乘的梭织面料，采用严苛的质量标准与织造工艺，
保证了面料完美的透气性、抗皱性与垂顺性，
就算在盛夏的高温中穿着，也不会因为面料而觉得闷热，
在你的轻轻的走动之间，斗篷的部分则会飘动而起，衬托着你灵动仙美的气质。
完美的抗皱性既保证了再上身穿着时，不会产生令人烦恼的褶皱，洗后面熨烫的特性，也会大大减少你打理的时间。这件非常适合出街的斗篷连衣裙，如果再搭配一双完美的高跟鞋，你所走过的每一条街道，都将成为你展现魅力的主场！');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(57,'外单公主纯全棉超长款长袖女士春秋季加肥加大码睡裙睡衣家居服',8,199,99,10,'propicture/pro_57_1.jpg','

样子实在美呆了哦！！淡淡天蓝色睡裙上点缀蓝白色的小玫瑰，是如此的纯粹自然，印染工艺恰到好处，颜色搭配，呈现清新，唯美，浪漫的公主风！圆圆的小翻领，灵动又甜美，
上身后真是又洋气又清新，花色真是超赞的！！很美非常美，长长的衣身可以一直盖到小腿哦，喜欢长睡裙的姑娘们必入的哦，无乱款式，花色，面料都无可挑剔！！
薄厚适中，如果冬天家里不冷也可以穿，春秋必须败的睡裙！！');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(58,'2015春人本帆布鞋女鞋平底一脚蹬懒人鞋夏白色厚底板鞋乐福鞋布鞋
',10,199,49,80,'propicture/pro_58_1.jpg','
【为什么选择我们？】1.正规国产品牌授权2.百搭时尚，很多明星时尚达人钟爱款3、超值划算，现在拍下能享受包邮的特惠4、全国包邮，服务号。5、商品做工精细，质量有保障。6、支持15天无理由退换。7、送运费险 退货无忧');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(59,'春夏新款韩版潮女式碎花帆布鞋子平底低帮休闲运动鞋学生跑步单鞋
',10,299,149,80,'propicture/pro_59_1.jpg','
•	品牌: 厦仙
•	货号: 厦仙A09
•	上市年份季节: 2015年夏季
•	风格: 甜美
•	鞋底材质: 橡胶
•	鞋帮高度: 低帮
•	闭合方式: 系带
•	流行元素: T型绑带 交叉绑带
•	颜色分类: 红色 蓝色
•	尺码: 默认 韵达快递 35 36 37 38 39 40
•	图案: 碎花');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(60,'凉鞋女2015夏欧洲站真皮女鞋防水台粗跟凉靴高帮鱼嘴高跟鞋百搭潮
',10,299,149,80,'propicture/pro_60_1.jpg','
----100%保证头层牛皮-----高跟8CM----防水台2CM---时尚粗跟 ---够高又不累脚---显瘦----性感-----美女必备哦
•	上市年份季节: 2015年夏季
•	风格: 欧美
•	后跟高: 高跟(5-8cm)
•	流行元素: 粗跟 防水台 金属装饰 罗马风格
•	颜色分类: 白色 黑色
•	闭合方式: 拉链
•	图案: 纯色
•	鞋制作工艺: 胶粘鞋
•	适合场合: 宴会
•	款式: 凉靴');

INSERT INTO `productinfo` (`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) values(61,'韩版大白鞋女2015春夏袁姗姗同款全真皮厚底运动鞋跑步松糕休闲鞋',10,296,149,10,'propicture/pro_61_1.jpg','

你可以说它是运动风格回潮，也可理解为潮流混搭新理念。 白球鞋不仅可以搭配裤子，长的短的窄脚的阔脚的， 还可以搭配裙子，迷你裙半裙长裙连衣裙; 简直无所不能！
•	闭合方式: 系带
•	颜色分类: 白色
•	尺码: 35 36 37 38 39
•	鞋制作工艺: 胶粘鞋
•	图案: 纯色
•	款式: 板鞋
•	适用对象: 青年
•	适用场景: 日常
');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(65,'华硕 飞马手机',12,999,838,12,' propicture/pro_65_1.jpg',' ASUS 华硕 飞马手机X002 5英寸华硕4G移动 64位(黑色）四核双卡手机');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(66,'酷派 大神F2全高清版手机',10,1299,999,569,' propicture/pro_66_1.jpg','Coolpad 酷派 大神F2全高清版(8675-FHD) 移动联通双网通4G手机(智尚白)双卡双待,5.5英寸1080P视网膜屏,高通骁龙八核64位处理器,2G+16G,500万+1300万像素');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(67,' Apple iPhone 6',12,5288,4958,445,' propicture/pro_67_1.jpg','Apple iPhone 6 (16G) 4G智能手机(金色 公开版)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(68,'魅族 魅蓝 note',12,1199,1079,514,' propicture/pro_68_1.jpg','魅族 魅蓝 note 移动4G手机 16G版(白色)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(69,' HUAWEI 华为 荣耀6 Plus',12,2199,2189,335,' propicture/pro_69_1.jpg','HUAWEI 华为 荣耀6 Plus 标准版 移动4G手机(白色) 16GB存储 双卡双待双通');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(70,' HUAWEI 华为 荣耀畅玩4X ',12,1199,1168,1264,' propicture/pro_70_1.jpg','HUAWEI 华为 荣耀畅玩4X Che2-TL00(2G RAM)移动高配版 4G智能手机(黑色)双卡双待双通');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(71,' Lenovo 联想 乐檬 K3 Note ',12,999,985,24,' propicture/pro_71_1.jpg','Lenovo 联想 乐檬 K3 Note(K50-t5) 珍珠白 移动联通4G手机 双卡双待');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(72,' NOKIA诺基亚1050 ',12,169,136,5769,' propicture/pro_72_1.jpg','NOKIA诺基亚1050 超长待机直板手机(黑)');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(73,' Acer 宏碁 E5-572G-550P 15.6英寸笔记本电脑 ',13,4999,3999,402,' propicture/pro_73_1.jpg','Acer 宏碁 E5-572G-550P 15.6英寸笔记本电脑 i5-4210M 4G内存 1TB硬盘 GT-840M 2G独显 高清屏 USB3.0 Windows 8.1 家庭版 经典黑/ 大屏游戏四代i5正常电压CPU+海量1TB存储+高阶GT-840G 2G独显 1080高清屏');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(74,' ASUS 华硕15.6英寸笔记本电脑',13,4299,3099,102,' propicture/pro_74_1.jpg','ASUS 华硕 F555LD4210-554BSC52X10 15.6英寸笔记本电脑(i5-4210U 4GB 500GB GT820M 2GB独显 Win8.1 黑色)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(75,' Dell 戴尔 Ins14PR-1748BB 14英寸笔记本电脑',13,6999,5700,78,' propicture/pro_75_1.jpg','Dell 戴尔 Ins14PR-1748BB 14英寸笔记本电脑(i7-4710HQ 8G 1T GTX850M高端4G独显 DVDRW 高清防眩光显示屏 Win8 USB3.0 蓝牙4.0)游戏本 黑色');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(76,' Lenovo 联想 Y410p 14英寸笔记本电脑',13,6799,4999,366,' propicture/pro_76_1.jpg','Lenovo 联想 Y410p 14英寸笔记本电脑(英特尔 酷睿Haswell双核i5-4200M 主频2.5GHz 睿频3.0GHz 4G 1TB 2G独显 DVD刻录 HDMI 摄像头 Windows8)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(77,' ASUS 华硕 FX50J4200-154JSC52X10 15.6英寸游戏笔记本',13,6999,4998,167,' propicture/pro_77_1.jpg','ASUS 华硕 FX50J4200-154JSC52X10 15.6英寸游戏笔记本 (i5-4200H 4GB 1TB GTX850M 2G独显 高清屏 WIN8.1 红黑色)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(78,' Apple MacBook Air',13,7788,6998,329,' propicture/pro_78_1.jpg',' Apple MacBook Air MD712CH/B 11.6英寸笔记本电脑(11.6/1.4/4/256FLASH)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(79,' Thinkpad （联想）X240',13,5599,4459,84,' propicture/pro_79_1.jpg',' Thinkpad （联想）X240 20AMA449CD I3-4030U/4GB/500GB 7200/6芯电池/win7/寰宇黑');




INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(80,' Lenovo 联想 Erazer Y50-70AM',13,7499,5749,366,' propicture/pro_80_1.jpg',' Lenovo 联想 Erazer Y50-70AM 15.6英寸高分屏 游戏本 (i5-4210H 4G 1TB GTX860M 2G独显 Windows8 背光键盘 黑色)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(81,' Alienware（外星人）ALW17ER-1828T',13,25598,25598,4,' propicture/pro_81_1.jpg',' Alienware（外星人）ALW17ER-1828T 17.3英寸触控屏游戏笔记本电脑 （酷睿i7-4980HQ 16G 512GSSD+1TB GTX980M/4G独显 IPS1920X1080P Win8.1系统 2年上门服务）');


INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(82,' RAJFOO 雷技 X-MAN2 背光键鼠套装 ',11,288,109,80,' propicture/pro_82_1.jpg','RAJFOO 雷技 X-MAN2 背光键鼠套装 有线USB发光竞技键盘七彩呼吸灯鼠标 (背光键鼠套装)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(83,' Logitech 罗技 G510s ',11,799,409,19,' propicture/pro_83_1.jpg','Logitech 罗技 G510s游戏键盘');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(84,' Logitech 罗技 G105 ',11,309,268,49,' propicture/pro_84_1.jpg','Logitech 罗技 G105背光游戏键盘');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(85,' LBOTS 达尔优 牧马人专业电竞游戏鼠标 ',11,199,130,1088,' propicture/pro_85_1.jpg','LBOTS 达尔优 牧马人专业电竞游戏鼠标(炫酷四色呼吸灯可调节 顶级游戏光学引擎 四档变速高分辨率4000DPI 7个可独立编辑控制键 超级玩家首选)');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(86,' Razer DeathAdder',11,262,200,862,' propicture/pro_86_1.jpg','Razer DeathAdder 炼狱蝰蛇升级版游戏鼠标');

INSERT INTO`productinfo`(`pid`,`pname`,`typeid`,`marketprice`,`sellprice`,`sellcount`,`picture`,`intro`) 
values(87,' Logitech 罗技 G502',11,599,379,114,' propicture/pro_86_1.jpg','Logitech 罗技 G502自适应游戏鼠标');










