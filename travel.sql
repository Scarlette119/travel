SET NAMES UTF8;
DROP DATABASE IF EXISTS travel;
CREATE DATABASE travel CHARSET=UTF8;
USE travel;
-- 页面轮播表
CREATE TABLE site_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(30),
  ctype VARCHAR(1),
  intro VARCHAR(255),
  href VARCHAR(128),
  subtitle VARCHAR(50)
);
-- 旅游攻略表
CREATE TABLE travel_notes(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  thumb VARCHAR(128),
  thumb_s VARCHAR(128),
  rdate VARCHAR(11),
  href VARCHAR(128),
  title VARCHAR(50),
  intro VARCHAR(255),
  content VARCHAR(1000)
);
-- 导游表
CREATE TABLE guide(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  guide_pic VARCHAR(128),
  gname VARCHAR(20),
  intro VARCHAR(255)
);
-- 路线缩略表
CREATE TABLE route_thumb(
  rid INT PRIMARY KEY AUTO_INCREMENT,
  thumb VARCHAR(128),
  title VARCHAR(30),
  subtitle VARCHAR(50),
  intro VARCHAR(255),
  href VARCHAR(128)
);
-- 旅游路线表
CREATE TABLE travel_routes(
  rid INT PRIMARY KEY AUTO_INCREMENT,
  destination VARCHAR(20),
  guideId INT,
  distance VARCHAR(10),
  people INT,
  duration VARCHAR(10),
  route_intro VARCHAR(1000),
  jd DECIMAL(16,12),
  wd DECIMAL(16,12),
  FOREIGN KEY(guideId) REFERENCES guide(gid)
);
-- 服务表
CREATE TABLE services(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(255),
  title VARCHAR(10),
  intro VARCHAR(255)
);
-- 用户表
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(30),
  mobile VARCHAR(11),
  destination VARCHAR(50),
  people INT,
  comment VARCHAR(255)
);
-- 路线图片表
CREATE TABLE routes_images(
  id INT PRIMARY KEY AUTO_INCREMENT,
  routeId INT,
  route_pic VARCHAR(255),
  FOREIGN KEY(routeId) REFERENCES travel_routes(rid)
);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/1/c11.png', NULL, 1, NULL, NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/1/c12.png', NULL, 1, NULL, NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/1/c13.png', NULL, 1, NULL, NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/1/c14.png', NULL, 1, NULL, NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/2/c21.png', '梵净山', 2, '梵净山（Mount Fanjing），得名于“梵天净土”，位于贵州省铜仁市。系武陵山脉主峰，是中国的佛教道场和自然保护区', '/routeIntro.html/route/1','Distance:4.3km Days:4');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/2/c22.png', '玉龙沙湖', 2, '玉龙沙湖国际生态文化旅游区位于内蒙古赤峰市翁牛特旗乌丹镇东北处，被誉为最近最美的大漠响沙旅游区', '/routeIntro.html/route/2','Distance:3.8km Days:2');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/2/c23.png', '格凸河', 2, '格凸河位于贵州安顺紫云县，国家级风景名胜区，它集岩溶、山、水、洞、石、林为一身，是稀世之珍的喀斯特自然公园', '/routeIntro.html/route/3','Distance:3.5km Days:2');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/2/c24.png', '乌兰布统草原', 2, '乌兰布统草原是距北京最近的草原，素有“北京后花园”之称。可以在草原骑马射箭、摄影滑雪，坐羊车，饱览草原秀色，体验民族风情。', '/routeIntro.html/route/4','Distance:10.5km Days:8');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/2/c25.png', '青龙洞', 2, '青龙洞，群坐落在中国历史文化名城——镇远城东的中和山上。这里山势挺拔，峭壁悬崖。巨岩、洞穴和为一体。道、儒、佛三种宗教的寺庙群生就山腰', '/routeIntro.html/route/5','Distance:6.5km Days:5');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/2/c26.png', '织金大峡谷', 2, '织金大峡谷是贵州省毕节市织金县风景区，又称“一线三槽”景区，距织金洞景区2公里；其“水上水、洞上洞、桥上桥、天外天”景观被地质学家称为“世界一流的喀斯特景观”', '/routeIntro.html/route/5','Distance:8.5km Days:7');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/3/c31.png', 'Finley', 3, '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。太深的流连便成了一种羁绊，绊住的不仅是双脚，还有未来。', NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/3/c32.png', 'Nannie', 3, '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。太深的流连便成了一种羁绊，绊住的不仅是双脚，还有未来。', NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/3/c33.png', 'Manuel', 3, '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。太深的流连便成了一种羁绊，绊住的不仅是双脚，还有未来。', NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/3/c34.png', 'Rolland', 3, '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。太深的流连便成了一种羁绊，绊住的不仅是双脚，还有未来。', NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/3/c35.png', 'Sherwood', 3, '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。太深的流连便成了一种羁绊，绊住的不仅是双脚，还有未来。', NULL, NULL);
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/4/c41.png', '行走在天堂的边缘', 4, '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', NULL, '发布日期：2019-04-01');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/4/c42.png', '	鳌太也可以奢游', 4, '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', NULL, '发布日期：2019-04-01');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/4/c43.png', '	太白南北重装行', 4, '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', NULL, '发布日期：2019-04-01');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/4/c44.png', '	登梅里雪山冰湖', 4, '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', NULL, '发布日期：2019-04-01');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/4/c45.png', '	徒步晋东南,自虐变休闲', 4, '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', NULL, '发布日期：2019-04-01');
INSERT INTO site_carousel VALUES(NULL, 'static/images/index/carousel/4/c46.png', '	隧道奇迹欧米伽', 4, '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', NULL, '发布日期：2019-03-28');
INSERT INTO services VALUES(NULL, 'static/images/about/s1.png', '高原徒步', '起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可...');
INSERT INTO services VALUES(NULL, 'static/images/about/s2.png', '登山服务', '起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可...');
INSERT INTO services VALUES(NULL, 'static/images/about/s3.png', '专题活动', '起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可...');
INSERT INTO services VALUES(NULL, 'static/images/about/s4.png', '服务定制', '起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可...');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide1.png', 'Nannie', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide2.png', 'Finley', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide3.png','Manuel', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide4.png','Rolland', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide1.png','Nannie', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide2.png','Finley', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide3.png','Manuel', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO guide VALUES(NULL, 'static/images/about/guide4.png','Rolland', '我喜欢出发。凡是到达了的地方，都属于昨天。哪怕那山再青，那水再秀，那风再温柔。');
INSERT INTO route_thumb VALUES(NULL, 'static/images/route/r1.png','织金大峡谷', 'Distance:8.5km  Days:7', '织金大峡谷是贵州省毕节市织金县风景区，又称“一线三槽”景区，其“水上水、洞上洞、桥上桥、天外天”景观被地质学家称为“世界一流的喀斯特景观', 'http://localhost:8080/route_detail.html?rid=1');
INSERT INTO route_thumb VALUES(NULL, 'static/images/route/r2.png','青龙洞', 'Distance:6.5km  Days:5', '青龙洞，群坐落在中国历史文化名城——镇远城东的中和山上。这里山势挺拔，峭壁悬崖。巨岩、洞穴和为一体。道、儒、佛三种宗教的寺庙群生就山腰', 'http://localhost:8080/route_detail.html?rid=2');
INSERT INTO route_thumb VALUES(NULL, 'static/images/route/r3.png','乌兰布统草原', 'Distance:10.5km  Days:8', '乌兰布统草原是距北京最近的草原，素有“北京后花园”之称。可以在草原骑马射箭、摄影滑雪，坐羊车，饱览草原秀色，体验民族风情。', 'http://localhost:8080/route_detail.html?rid=3');
INSERT INTO route_thumb VALUES(NULL, 'static/images/route/r4.png','格凸河', 'Distance:3.5km  Days:2', '格凸河位于贵州安顺紫云县，国家级风景名胜区，它集岩溶、山、水、洞、石、林为一身，是稀世之珍的喀斯特自然公园', 'http://localhost:8080/route_detail.html?rid=4');
INSERT INTO route_thumb VALUES(NULL, 'static/images/route/r5.png','玉龙沙湖', 'Distance:3.8km　Days:2', '玉龙沙湖国际生态文化旅游区位于内蒙古赤峰市翁牛特旗乌丹镇东北处，被誉为最近最美的大漠响沙旅游区', 'http://localhost:8080/route_detail.html?rid=5');
INSERT INTO route_thumb VALUES(NULL, 'static/images/route/r6.png','梵净山', 'Distance:4.3km　Days:4', '梵净山（Mount Fanjing），得名于“梵天净土”，位于贵州省铜仁市。系武陵山脉主峰，是中国的佛教道场和自然保护区', 'http://localhost:8080/route_detail.html?rid=6');
INSERT INTO travel_routes VALUES(NULL, '织金大峡谷', 1, '8.5 km', 10, '10 days', '织金大峡谷是贵州省毕节市织金县风景区，又称“一线三槽”景区，其“水上水、洞上洞、桥上桥、天外天”景观被地质学家称为“世界一流的喀斯特景观”。进入大峡谷，抬头仰望各种保护完好的峡谷、天窗、天坑、天生桥、暗河、绝壁等地质遗迹，无不感叹大自然的鬼斧神工，尤其看罢“水上水、洞上洞、桥上桥、天外天”地质奇观，更加惊叹地壳运动留下的绝世美景。“万燕归巢”是织金大峡谷蔚为壮观的一道风景，黄昏时分，数以万计的燕子飞回巢穴，在大峡谷的天窗上方形成密密麻麻的黑影，为织金大峡谷的景色添上了灵动的一笔。', 105.8755100000, 26.7694100000);
INSERT INTO travel_routes VALUES(NULL, '青龙洞', 2, '6.5 km', 7, '5 days', '青龙洞，群坐落在中国历史文化名城——镇远城东的中和山上。这里山势挺拔，峭壁悬崖。巨岩、洞穴和为一体。道、儒、佛三种宗教的寺庙群生就山腰。它背靠青山，面临绿水，贴壁临空，五步一楼，十步一阁，翘翼飞檐、雕梁画栋。青龙洞，这些古建筑依山因地，分别采用了“吊”、“借”、“附”、“嵌”、“筑”等多种工艺，硬是在一段悬崖上筑出中元洞、紫阳洞、青龙洞、万寿宫等一片阁楼洞天。它气势雄伟、构思大胆、布局精巧。', 101.4050900000, 26.9571800000);
INSERT INTO travel_routes VALUES(NULL, '乌兰布统草原', 3, '10.5 km', 9, '8 days', '乌兰布统草原是距北京最近的草原，素有“北京后花园”之称。可以在草原骑马射箭、摄影滑雪，坐羊车，饱览草原秀色，体验民族风情。乌兰布统景区自然旅游资源以草原、湖泊、沙地、湿地、林地为主，以林木花卉、野生动物为辅，而且大多保存完好；人文旅游资源以蒙古民族风情、古战场遗址遗迹、特色旅游商品为主，以蒙古文化、特色饮食等为辅，是开展文化旅游、民俗旅游、宗教旅游和产业观光旅游的载体。', 117.2354890000, 42.5254360000);
INSERT INTO travel_routes VALUES(NULL, '格凸河', 4, '3.5 km', 3, '2 days', '格凸河位于贵州安顺紫云县，国家级风景名胜区，它集岩溶、山、水、洞、石、林为一身，是稀世之珍的喀斯特自然公园。穿洞一带，奔腾的飞池河，流到穿洞前宽30余米的河面陡然缩小，咆哮的河水变得暗然无声，流入洞内，与猴场河汇集，成为伏流。后由中洞村脚下的冒鼓天进出，在两岸群山中，缓缓蜿蜒跌落。奇峰遥逸，直插云天，古木参天，枯藤倒挂，绵延数十里，峰影倒映河中，一片秀色，幽美动人，使人留连不舍。', 106.2633800000, 25.6766500000);
INSERT INTO travel_routes VALUES(NULL, '玉龙沙湖', 5, '3.8 km', 4, '2 days', '玉龙沙湖国际生态文化旅游区位于内蒙古赤峰市翁牛特旗乌丹镇东北处，被誉为最近最美的大漠响沙旅游区。乌丹镇的玉龙沙湖度假区集沙漠、沙地、古松、怪石、奇峰、湿地、草原、湖泊为于一身，5万亩草原与茫茫无边的科尔沁沙地相连，沙地中有一眼清泉，在沙漠中积水成湖。沙漠中，有一面积达1.4万亩的湖泊。湖中又有十多座沙岛。形成沙中有湖、湖中有岛、岛上有草、草中有鸟的奇特沙湖景观。', 119.0606400000, 43.1265900000);
INSERT INTO travel_routes VALUES(NULL, '梵净山', 6, '4.3 km', 5, '4 days', '梵净山（Mount Fanjing），得名于“梵天净土”，位于贵州省铜仁市。系武陵山脉主峰，是中国的佛教道场和自然保护区。原始洪荒是梵净山的景观特征，云瀑、禅雾、幻影、佛光四大天象奇观，为梵净山添上了神秘的色彩。标志性景点有红云金顶、月镜山、万米睡佛、蘑菇石、万卷经书、九龙池、凤凰山等。梵净山有植物2000余种，被誉为地球绿洲、动植物基因库、人类的宝贵遗产。有华山之气势，泰山之宏伟，兔耳岭之奇石。', 108.6978900000, 27.9077600000);
INSERT INTO routes_images VALUES(NULL, 1, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 1, 'static/images/route/r2_d.png');
INSERT INTO routes_images VALUES(NULL, 1, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 1, 'static/images/route/r2_d.png');
INSERT INTO routes_images VALUES(NULL, 1, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 2, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 2, 'static/images/route/r2_d.png');
INSERT INTO routes_images VALUES(NULL, 2, 'static/images/route/r3_d.png');
INSERT INTO routes_images VALUES(NULL, 2, 'static/images/route/r5_d.png');
INSERT INTO routes_images VALUES(NULL, 2, 'static/images/route/r6_d.png');
INSERT INTO routes_images VALUES(NULL, 2, 'static/images/route/r4_d.png');
INSERT INTO routes_images VALUES(NULL, 3, 'static/images/route/r4_d.png');
INSERT INTO routes_images VALUES(NULL, 3, 'static/images/route/r5_d.png');
INSERT INTO routes_images VALUES(NULL, 3, 'static/images/route/r6_d.png');
INSERT INTO routes_images VALUES(NULL, 4, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 4, 'static/images/route/r2_d.png');
INSERT INTO routes_images VALUES(NULL, 4, 'static/images/route/r3_d.png');
INSERT INTO routes_images VALUES(NULL, 4, 'static/images/route/r4_d.png');
INSERT INTO routes_images VALUES(NULL, 5, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 5, 'static/images/route/r2_d.png');
INSERT INTO routes_images VALUES(NULL, 5, 'static/images/route/r3_d.png');
INSERT INTO routes_images VALUES(NULL, 5, 'static/images/route/r4_d.png');
INSERT INTO routes_images VALUES(NULL, 5, 'static/images/route/r5_d.png');
INSERT INTO routes_images VALUES(NULL, 6, 'static/images/route/r1_d.png');
INSERT INTO routes_images VALUES(NULL, 6, 'static/images/route/r2_d.png');
INSERT INTO routes_images VALUES(NULL, 6, 'static/images/route/r3_d.png');
INSERT INTO routes_images VALUES(NULL, 6, 'static/images/route/r4_d.png');
INSERT INTO routes_images VALUES(NULL, 6, 'static/images/route/r5_d.png');
INSERT INTO routes_images VALUES(NULL, 6, 'static/images/route/r6_d.png');
INSERT INTO travel_notes VALUES(NULL, 'static/images/note/n1.png', 'static/images/note/ns1.png', '2017-04-18', '', '行走在天堂的边缘', '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', '
当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。支持打字传图、自由拖拽，不需要专业编写代码，无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可完成自己的网站，这一切都是免费的。迄今为止，起飞页用户的最短建站时间纪录为30分钟。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，也没有其他建站工具的层叠式烦恼，您可以随心所欲创建区块、添加组件…');
INSERT INTO travel_notes VALUES(NULL, 'static/images/note/n2.png', 'static/images/note/ns2.png', '2017-07-19', '', '鳌太也可以奢游', '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', '
当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。支持打字传图、自由拖拽，不需要专业编写代码，无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可完成自己的网站，这一切都是免费的。迄今为止，起飞页用户的最短建站时间纪录为30分钟。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，也没有其他建站工具的层叠式烦恼，您可以随心所欲创建区块、添加组件…');
INSERT INTO travel_notes VALUES(NULL, 'static/images/note/n3.png', 'static/images/note/ns3.png', '2018-04-01', '', '太白南北重装行', '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', '
当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。支持打字传图、自由拖拽，不需要专业编写代码，无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可完成自己的网站，这一切都是免费的。迄今为止，起飞页用户的最短建站时间纪录为30分钟。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，也没有其他建站工具的层叠式烦恼，您可以随心所欲创建区块、添加组件…');
INSERT INTO travel_notes VALUES(NULL, 'static/images/note/n4.png', 'static/images/note/ns4.png', '2019-05-01', '', '登梅里雪山冰湖', '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', '
当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。支持打字传图、自由拖拽，不需要专业编写代码，无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可完成自己的网站，这一切都是免费的。迄今为止，起飞页用户的最短建站时间纪录为30分钟。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，也没有其他建站工具的层叠式烦恼，您可以随心所欲创建区块、添加组件…');
INSERT INTO travel_notes VALUES(NULL, 'static/images/note/n5.png', 'static/images/note/ns5.png', '2019-09-30', '', '徒步晋东南,自虐变休闲', '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', '
当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。支持打字传图、自由拖拽，不需要专业编写代码，无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可完成自己的网站，这一切都是免费的。迄今为止，起飞页用户的最短建站时间纪录为30分钟。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，也没有其他建站工具的层叠式烦恼，您可以随心所欲创建区块、添加组件…');
INSERT INTO travel_notes VALUES(NULL, 'static/images/note/n6.png', '', '2019-03-28', '', '隧道奇迹欧米伽', '当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。', '
当今最领先的响应式自助建站平台，我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。支持打字传图、自由拖拽，不需要专业编写代码，无论您是普通互联网用户， 还是专业网站制作人员，都能使用起飞页设计出最具专业水准的网站。起飞页提供了海量精美网站模板和成品网站，几乎覆盖了当今各个行业，您只需在模板上进行少量修改，即可完成自己的网站，这一切都是免费的。迄今为止，起飞页用户的最短建站时间纪录为30分钟。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，也没有其他建站工具的层叠式烦恼，您可以随心所欲创建区块、添加组件…');
