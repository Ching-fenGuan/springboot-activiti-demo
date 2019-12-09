/*
SQLyog ä¼ä¸šç‰ˆ - MySQL GUI v8.14 
MySQL - 5.5.20 : Database - activiti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`activiti` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `activiti`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='èµ„æºæ–‡ä»¶è¡¨';

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'processes/Default_Dataset_Process.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"Default_Dataset_Process_Key\" name=\"é»˜è®¤æ•°æ®é›†å®¡æ‰¹æµç¨‹\" isExecutable=\"true\">\r\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\r\n    <userTask id=\"default_dataset_approval_task\" name=\"æ•°æ®é›†å®¡æ‰¹\"></userTask>\r\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"default_dataset_approval_task\"></sequenceFlow>\r\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\r\n    <sequenceFlow id=\"flow2\" sourceRef=\"default_dataset_approval_task\" targetRef=\"endevent1\"></sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_Default_Dataset_Process_Key\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"Default_Dataset_Process_Key\" id=\"BPMNPlane_Default_Dataset_Process_Key\">\r\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"230.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"default_dataset_approval_task\" id=\"BPMNShape_default_dataset_approval_task\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"200.0\" y=\"220.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"350.0\" y=\"230.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\r\n        <omgdi:waypoint x=\"155.0\" y=\"247.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"200.0\" y=\"247.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\r\n        <omgdi:waypoint x=\"305.0\" y=\"247.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"350.0\" y=\"247.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0),('2512',1,'123456.bpmn20.xml','2511','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processholidays\">\n  <process id=\"holidays\" name=\"è¯·å‡å®¡æ‰¹æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"å¼€å§‹\"></startEvent>\n    <userTask id=\"yuangong\" name=\"å‘˜å·¥è¯·å‡ç”³è¯·\">\n      <documentation>å‘˜å·¥å¡«å†™è¯·å‡ç”³è¯·å•</documentation>\n    </userTask>\n    <userTask id=\"jingli\" name=\"ç»ç†å®¡æ‰¹\" activiti:assignee=\"jingli\" activiti:candidateUsers=\"jingli1\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"zongjian\" name=\"æ€»ç›‘å®¡æ‰¹\" activiti:assignee=\"zongjian\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"renshi\" name=\"äººäº‹å­˜æ¡£\" activiti:assignee=\"renshi\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\" sourceRef=\"start\" targetRef=\"yuangong\"></sequenceFlow>\n    <sequenceFlow id=\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\" sourceRef=\"yuangong\" targetRef=\"jingli\"></sequenceFlow>\n    <exclusiveGateway id=\"hc1\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\" sourceRef=\"jingli\" targetRef=\"hc1\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\"></exclusiveGateway>\n    <exclusiveGateway id=\"sid-188B5A06-B469-463F-934B-920966143B88\"></exclusiveGateway>\n    <endEvent id=\"end\" name=\"ç»“æŸ\"></endEvent>\n    <sequenceFlow id=\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\" sourceRef=\"renshi\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"agree\" name=\"åŒæ„\" sourceRef=\"hc1\" targetRef=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"disagree\" name=\"ä¸åŒæ„\" sourceRef=\"hc1\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"moredays\" name=\"è¯·å‡å¤©æ•°å¤§äº3å¤©\" sourceRef=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\" targetRef=\"zongjian\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${holidays>3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"lessdays\" name=\"è¯·å‡å¤©æ•°å°äºç­‰äº3å¤©\" sourceRef=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\" targetRef=\"renshi\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${holidays<=3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\" sourceRef=\"zongjian\" targetRef=\"sid-188B5A06-B469-463F-934B-920966143B88\"></sequenceFlow>\n    <sequenceFlow id=\"agree2\" name=\"åŒæ„\" sourceRef=\"sid-188B5A06-B469-463F-934B-920966143B88\" targetRef=\"renshi\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status2==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"disagree2\" name=\"ä¸åŒæ„\" sourceRef=\"sid-188B5A06-B469-463F-934B-920966143B88\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status2==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_holidays\">\n    <bpmndi:BPMNPlane bpmnElement=\"holidays\" id=\"BPMNPlane_holidays\">\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"90.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"yuangong\" id=\"BPMNShape_yuangong\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"165.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"jingli\" id=\"BPMNShape_jingli\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"345.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"zongjian\" id=\"BPMNShape_zongjian\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"810.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"renshi\" id=\"BPMNShape_renshi\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"615.0\" y=\"375.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"hc1\" id=\"BPMNShape_hc1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"510.0\" y=\"175.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\" id=\"BPMNShape_sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"645.0\" y=\"175.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-188B5A06-B469-463F-934B-920966143B88\" id=\"BPMNShape_sid-188B5A06-B469-463F-934B-920966143B88\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"840.0\" y=\"395.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"846.0\" y=\"525.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"agree2\" id=\"BPMNEdge_agree2\">\n        <omgdi:waypoint x=\"840.4487179487179\" y=\"415.44871794871796\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"715.0\" y=\"415.12787723785164\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\" id=\"BPMNEdge_sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\">\n        <omgdi:waypoint x=\"860.0\" y=\"235.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.0\" y=\"395.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\" id=\"BPMNEdge_sid-1A8B86D7-986A-461C-B303-B336250C6A34\">\n        <omgdi:waypoint x=\"120.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"165.0\" y=\"195.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\" id=\"BPMNEdge_sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\">\n        <omgdi:waypoint x=\"665.0\" y=\"455.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"665.0\" y=\"539.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"846.0\" y=\"539.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"lessdays\" id=\"BPMNEdge_lessdays\">\n        <omgdi:waypoint x=\"665.4566210045662\" y=\"214.54337899543378\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"665.0911161731208\" y=\"375.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"disagree\" id=\"BPMNEdge_disagree\">\n        <omgdi:waypoint x=\"530.5\" y=\"214.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"530.5\" y=\"539.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"846.0\" y=\"539.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"moredays\" id=\"BPMNEdge_moredays\">\n        <omgdi:waypoint x=\"684.5489690721649\" y=\"195.45103092783506\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"810.0\" y=\"195.12853470437017\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\" id=\"BPMNEdge_sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\">\n        <omgdi:waypoint x=\"265.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"345.0\" y=\"195.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"agree\" id=\"BPMNEdge_agree\">\n        <omgdi:waypoint x=\"549.570895522388\" y=\"195.42910447761193\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"645.074074074074\" y=\"195.07407407407408\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"disagree2\" id=\"BPMNEdge_disagree2\">\n        <omgdi:waypoint x=\"860.4227642276422\" y=\"434.5772357723577\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.056679697426\" y=\"525.0001147357594\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\" id=\"BPMNEdge_sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\">\n        <omgdi:waypoint x=\"445.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"510.0\" y=\"195.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('2513',1,'123456.holidays.png','2511','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0C\0\0\0\0\0Ğk¨™\0\05IDATxÚíİ]ey0ğ[L#R†)c3L&2`ÍäËP†a\n2|©Á‰˜b\nË&‘Pd’”SŠ0jm‘2FKÕjÅÁR>iEDŒü‘$@ˆ”ÈÄ4\n’\"\rK iŒIø§ç;ÏÍy7\'7÷îîİİìŞ{÷÷›yfïŞ»{÷yÏó>÷=çÜJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€±-Ë²qÏ<óÌí>úèoW­Z•­X±BŒp¬\\¹2{øá‡ÿ\'ù2R>Ëg\0ÔP5TFHú5kÖdÛ¶mË^}õU1J±}ûölõêÕ/åƒàƒ²R>Ëg\0ÔP5TV€èş%}Ë$ÿ«+V¬xBVÊgù€\Zª†ÊÊË ’®u\"Oü×e¥|–Ï\0¨¡j¨¬±¢„k©ÄÏd¥|–Ï\0¨¡j¨¬l¡ÄÿÍ¯¶fÏ<vSöÓ•Ÿ©F\\ë$«Ä—ÏB>¨¡ê\ZÚ±‰¿kgO¶ñ{K³ŸÜ}Å~×ÅmVâËg!ŸÔPµO\ríÈÄßòÓïô)ûér	+ñå³Ï\0j¨Ú§†vfâ?ñàç\Z&~Ü&a%¾|ò@\rUûÔĞLü+>İ0ñã6	+ñå³Ï\0j¨Ú§†J|!ñå³Ï\0j¨PC;%ñãL!?n“°_>ù †ª}jhG&ş¦µÿÒ0ñã6	+ñå³Ï\0j¨Ú§†vdâïèÙm¼ÿÊ—Cóëâ6	+ñå³Ï\0j¨Ú§†vdâGl^wË‰×IV‰/Ÿ…|PCÕ=5´sÿ•W²M?ø×—Cóëâ6	+ñå³Ï\0j¨Ú§†v\\âÇ§	?µö‹\r÷Û|â°Ä—ÏB>¨¡j¨\ZÚ9‰Ÿw÷[7=ı×}Û0éSÄ}â¾ŞøòYÈg\05T\rUCÛ:ñûëü½# ñå³Ï\0j¨\Zª†vdâ¤óïë	,ñå³ÏÍz	¨¡j(1ñ›ô)$°Ä—ÏB>3óÈŠ¯ 7PCÕPFâ‰/Ÿ…|n93òØ™ÇuÅ×Y^äj¨\ZŠÄ—øÈgù<V&»³J«\0ÛMz‘¨¡j(_â#ŸåóXšìöw=rCn †ª¡H|‰/Ÿ…|n{3û™Ô¦Û\'\"7äj¨\ZÚœ,Ëİ°aÃ¢›o¾yõ²eË^Z²dÉë\\pAvŞyçeóçÏÿİ_ıÕ_½ú©O}ê™Ï}îs·æñ¿$¾0y”ÏB>Âd·¿É¬U\0¹!7PCÕĞæš ;î¸ã–«¯¾úõK/½4»á†²G}4ëééÉöìÙ“…øºmÛ¶ìÇ?şq–7KÙ_ÿõ_ÿîoşæo~±páÂ‹$¾0y”ÏB>d3š|W¿Ùû#7@\r‹54oz.üû¿ÿûW®¸âŠj£óÆodµ~ıúìŸøÄ‹-zbÎœ9“%¾0y”ÏB>ÄÉî¬A<n—I¯Ü¨¡jh½Õ qwİu×‹/Î–/_ŞTTë¾ûîË.¼ğÂİ²J$ñMmÈ…|nûÉîp=¹\Z*:­†F#ôĞCıè£ıhöÔSOeÃá¿øE–7V»/ºè¢ÿ#ñ…É£|òyôw@üH?r5TtB\r¡h„â áÏ·páÂ]İİİó%¾0y”ÏB>Ã$u¸vc²\n 7äj¨\Zº÷¡Ø5n¸V„ê­şù;ó†hªÄ&òYÈç!LNÓd÷÷òXP|mFíã8/7äjèX®¡qÖ¸Ï|æ3¯Æ1BÓİwß½{Ş¼yH|aò(Ÿ…|â»ô1YıZ”°âë@\'½gÒ+7äjèX­¡wŞyçÿ³Æ½öÚkÙÁvñÅ¿Ğ®»ËI|“Gr!Ÿ[b²[)Ş½ÏJ1Ioy²›âüÒí‘r5t¬ÕĞXŠÏŠÓg„Ÿüä\'¯¶ëêÄ7y´!òyÄ5š„Ö›¼ö5é­wÿëÜßq\"rCn †¥\ZºaÃ†EqÒ„¡œB»Y^xáçwŞ±­’Ğİİİ+òøßßä±ÈgùÜ®9ÙÇdwf“Øz“ŞNvk\'½v‹’rCNª¡^Co¾ùæÕ7Şxc6’®»îºõy3ty«$~ş»d1\0ºººŞ)ñMÛ™|–Ïíš“ƒœtö7émv²[şùÛ­È\r¹!\'ÕĞ¯¡Ë–-{éÑGÑfè?øÁ/òD[Şj‰_Š{ë½+ ñMÛiC.Ÿås»ådÉî@\'›&½‡r²[»ú`Ò+7ä†œTC;µ†.Y²äõ­[·h3ôÂ/lË“kK\'~ï»å ñMÛtC.Ÿås[ää \'»}Mz>„ÉîPäj¨h‡\ZzÁd{öìÑf(~^X{Z=ñËï\nÄR©Ä7ylç\r¹|–Ï­“Ãğn{½IïP&»µ“^Ç‰È\r¹!\'ÕĞN«¡ñ\rH¶–‰ßZÑ9$Ÿ…|®ç{nš˜^7Ä¹Ì!uŞõÿyqıP\\×‰¯ûœ9säFæÆhıßò&`¿ËåïÅ‡>ô¡İn©]Ò-X°àw#½2´{÷îÚdeè±| Ïš>}ú¸áZ×:¢öú;wÖ½¾Ùç®wı~ô£ìùçŸ¯{Ûúõë³—_~¹ásìÚµ«áÏÛ¼ys¶qãÆaı}¼“Ş^ùÜLô•KÃ[¶lé÷>ëÖ­«æ~ÄsÏ=×Ôc­œœ¬ô†°¡¼ûßÌ‡o¶ã»ÿñ;Ş—ÇõyÜP3Š× ‘¸mrGå1En´\\nœšÇéuşgK‹ËSêÜ¶6Óò˜T|I‹ËÇ÷;\"Õy|»ø;f_Ï,îwbÍïpdqı1Å×SŠ¯ÜÏï÷éîãöµEÌ(VşâëÙÅã&àõiæïhÛ\ZšæŠµ×ıìg?ëó1?şxï|ìé§ŸVCëùèG?úêH3”O„ŞâÇÕn„‡mÿĞ˜Æàœ6mZïÏ»ıöÛ«×]}õÕM=×ïÿşïğî~<O4(Ñ¨DrîØ±£zİÅ_\\qùÙgŸİïş×^{m6yòäì®»îª~ÿı÷gşçŞû{}õ«_­ûóÿó?ÿ3ûƒ?øƒ>Çf“ÇöÊçf\"åZ\\^½zuïï—òîŸÿùŸ«·=òÈ#Ù_üÅ_ôæß¿øÅlÊ”)ÕûEÎ_zé¥½yğÁë6ZozÓ›²Ë.»¬Ïæ<÷Icò;îè½>Î°©\Zùœ,M.wUÎq!ƒ™ô¶Ëq!»ó¸¹Îõ“JÒÚ¿«»¸>5KßÉã$¹Ñ’¹‘š˜µ¥ÿW4sòøYû>˜ÇKßŸUçr¥´*6¾¸­QSMÉ¯óx¶xü„âşŠÛíçwŸİÄßynëç±¹ôÿšSgÕo GÛÖĞÔØ}ôÑû½¡o¼É\\¾ßÚµk³ã?¾·¦}éK_ª6-qùŸşéŸú}³rÌÕĞ¥K—n\Zé³É}ï{ß»§EÏ&÷Hww÷ìáam†Î9çœì¢‹.ªÆ½÷Ş[½.&ˆåûNš4)[¼xq¶iÓ¦j¼ıío¯N&Ó÷ÑÀÄíåÇ¼ğÂÙ„	ª+/qŸø\ZÏüŸşéŸf·Şzkï}ÓÀˆ‰å‰\'Ø›Äñ}9ÙÓ÷‘è±Ü}á…V¯‹Ÿ“&©×\\sMu\0\rö÷1yl¿|hDãyÿÿíÛ·°œXµjÕÚxÇ+®Oÿ¸îÎ;ï<àòıÑeŸÿüç³eË–Uó,wşùçg_ùÊWz¯«}Ã!¾ÇÄï—ã>µÏ«\ZÙœÂ»íN‘\\ïŒaÍLzÛéŒa©šR¬\0L,­Qj†â5Y_¬\"ÅëüZñuwÍ;ò§É–ÊñÅ×‰¥Õh¾›ÇÂÒıN*5<¿*5N3J—§4X]‰Û¦Õ¹-^«Ç‹Û²âgœ]Z%J—§æ1®hÄ.ËcI)/©ùİÏj²ÊŠUÎCJÿ¯J“GÛÖĞˆ´GMªWio6×®ÆÄüğ½ï}oïıã>QG#b¾–ŞlLuwÌ×Ğø‡¸q¤?gèÊ+¯¼»Å>g¨¯w¢†5ñ#i¢c¦¨6lèwù2ìë_ÿzŸ÷‰U˜´ÛÛòåË{ßAÿ÷ÿ÷ìÏşìÏzß}ø·û·êÀˆIê[Şò–ŞûÆï÷¾÷½¯÷ûr·÷İw×l§œrJ5ûû˜<¶_>4\"ÇREC]›×ÑH×Ë÷ÔÅå´ñ~ÿûßß{96¾‘cq¹ÜdEnsÌ1û-ÛÇKKûéñï~÷»«Ï+œ1şRc?w8vå”ÏÍåä ßuïï³búá›µN®´×gÉ¤f(&Èß,.Çkøbƒ•¡øş•ıw¥‹	ïUr£¥r#š‡?.Mğ¿QüıóøB©ÁI»Ñ]^|uieè°:+…±’³®h¦f+/i×»ò÷“JMXäÒ¥yôäñ—yü²”K‹ûhââöyun‹İîÖäñ­Êş»s¦ÜU|f*[Å÷JÏÑìßÑ–54í\r”ÿN½{¥=(–.]ZÍİòÊMm3u2ê\\ÌáÊ‡F¤yÚ˜¯¡÷w÷K.¹ä·o¼ñÆˆLnîÜ¹OçÿÌcÛ­ GâG’D—\"­ò¤®;5Í6CÑõG\'š™XeŠÕ§”°±‚”.§Õ˜HŞXF‰jZ*¯\ZÕ.‹Æ*PÜ/­Õ®Åó-Y²dĞ¿Écûåó@\"-ãwÜqÕ\rlù¶hÂ×¬YSÍû£:ªz]Œ…ø>+±›fäJ_+C/½ôRõû÷¼ç=½yõ| z9}ã­Ş.œiµ6Ş‹7†*Å®¡•Ònxš¡QÓß»ïıĞÌf\'½iw¬ÙmôZí.&ËßªìÛ]îğ:+Cåfèã5«H‹FJn´^n¤iE“s}ÍªOˆccªìÛ,vi[]4S·•ViÎ¬óüÑÜİÓ`E0š–SJ«2G+BOæñÖâº3\ZüŞïÊãbeh ç¹}ÜWÚÚàö¾ş¶¬¡åšU»;\\z³qâÄ‰û]{•›¡ÚÚ]åÔĞXË¼ì²ÿ÷ãÿx¤v‘»5o„ÖŒÕÉcjÒ>Gyä~·ÅÄp(+C•ÒnmÑ¬D×Kq]¸œîÇğDç_»2gìÂ–¾¿şúë½24ĞßÇä±s›¡åF?Ş5Š\rgwVÎ•«®ºê€•¡XQl´2ôä“Oî·ûi:¡GíX©Ôìş™®;í´ÓªïxUJÇ®Uì&×j\Z­t²Ûì¤7ı¼Ùmö:¥fhvñş´bÒûË>V†î©ìÛ}jFqß/Ë–ÌÔuş«*w{KÇ­¨ì;YÂ‹xWÏ?µ²o7¸²#Š×x{±*sY‘[±r²°xÌQ}<ï	¥çj3>\\i¼›\\_GÛ7Cõæˆõš¡˜‹}ò“Ÿì}\\ù0Œ´{]¬ğÔÂ1¦kèG>ò‘9ûØÇ^Õ¡sçÎ}¼»»{¾fèÕêªLœHá`5C•â ¶8iA:qA9™ãº@õV†R³”&¤éº˜˜¶êï÷1yìÜf(ş×\'œpBuKç§zjõrZîOï\"•÷{N¹yXo#[oCù˜šøÔt—wÿLËÿqĞgÊñôØ´€f¨eWjwKZPiş³bêMzÏobµ¡Õ›¡›‹wÄÓÙ³-şÆñu&1AİRZIˆUƒ	ÅãÇË–Ë´\ZrV±‚wzi¥ç„:÷í.šÛk+{wK¯É‘u;ò`UqyR¥ñqEéÄåÛãòã\r~çã‹Û¯ì;İiø;3ôµRNgCø;Ú¶Jo(§ˆú‡;Ô{c9j^Ìµb5)Í»Êó¯ØkC\r­±hÑ¢\r1Ñ=˜âø¤Xjrßàm†âò•W^9ìÍPœm$N\\—çÏŸ_=s[:î¢üüõš¡”Üñ}ì¢TŞç3VrÒŠQ½İäb•+í&7˜ßÇä±s›¡rãR>{`ä^4Õµ÷OëxÃ ÃV>»ac—ã~å%ş8bzlÜ¯¼áÛÊ§ı¬]â¯·!¯İ·Z34ê“ŞòóåÉk3šÙèqíşá™Î&7¡²ow¹òÄò¸Ê¾]è¦–®OìYr£erc|©‘X]Dù9­ÁÊĞKMñÒâúãkî»·=]g,î»¬æúÉEƒµ½h®b…ìââ¾©¹ï©uš¯)•}g-<¤Nã”NÕ}j×`qÑf\ršºfş¶l†Ê\'OˆİÏ*¥ã„bUï¾qB¥8#55işUŞåN\r-Ä1<^xáî§zê 4Bù‹tWş3¶vwwOmÓB3lÍP¼Û’«v7¡¾ö¯¬×Õ™+îóæ7¿¹÷r¼_>}w£f(v“»ä’Kªï\nÄd5~NÜ¿¯àjW†\ZıÎı}L;·ŠİÙ¢±‰“f¤¦Q3g§‰Æ:½iP›OõŞqŠcÔâ˜µ8ívÚĞG>Çåô}ùsêmÈ#×Ójh:ÃN\\Öµ”Úİ¢~¯x÷¾ÙS\"×>n¨ŸaÓ*ÍĞÒÍP:YBWj‚bõ v©‹âã´ÅëŠIêr£år#­ÖÅÿé¦âr:‹[yw°t\\Ïw‹æéÔ¢I8¤´:ÇïÄ±>k+å™\\Ü·«øÙ«K?wr±\Ztvñ}zŞÅE3ÍÎ5\r7åc½³ÉE£µ¾É×¥™¿£mkhÌ\rÓîmiJqÒƒ˜G¥ÚU>”!Í7+¥\ZÄåø¬¢òójhùóçÏ[´hÑËÛ¶mÖF(q¾?wîÜgÛu÷¸áNü”Xé«¢cŸ:ujvúé§W»óô9,qÂˆÔ<Ä*Lş:V/—Š.¸`¿ä,”\0ñ3ÒÏ,¿{“Ò8}wXñ)ŸÒ;W:V£Ñùâci6>¨¿fh ¿Écg6C±‘-71±ÁLï6Åu‘×éÍ[n¹å€¢òYÓér½ÏK(®B½Ûb•2½ù˜~¿hÀÒ†<Ş1‹ñ©j‹Iïp¬*´ÓYãŒ¡\Z\ZoPWŠİÈS“5,ê`:­u461Ÿ*ï…ÑW3{şôõfö˜¯¡óæÍ»páÂ…»†k…(V„¢êêêúÄXOüh\n¢yhô<‘Tie¸–SSçŸ&›å•˜HæØõ-Ş	ˆÏ;Š$¢Ô¥3{Õ¾\"v­‹Ï\Z®ßÇä±sW†Êù§HŸµ•¢ö“´cc\Z»VFÄ*RŠtÿFÍtäõ§>õ©†¿C¼P)v1ˆ(ça,õÇ\rñ&Å`?X>·Í¤·]>P¹Á­¡å]Í¢¡‰ú”Ş,7k¨[ñFcœl(v‹¯éó!ÓG}‹“”WCkäËyùäã¥oûÛ¿ÂIvşã?şãM±k\\H|aò(Ÿ…|FCİ}©vCn †ŠƒUCã¢¹sç®Z´hÑ?şøîf>Gèşûï¿-o¦‹“%´ó1BßäÑ†\\Èç¶˜ô6ûî}»Ÿ,¹\Z*Fª†æ\rÍ£)ºà‚¶-[¶ì§ßÿş÷ŸíééÙ\ZËba÷îİ/<ÿüó?_¹råw?ıéOß;oŞ¼g¢	ŠÕ v=kœÄ—ø6äB>·fwg²û“Ü¨¡jhóò&çmİİİ—æMÎíylÎcOì{X|İ’Çò<.%‰/Lå³Ï-8é=9]•öû@Uäj¨PC%¾øòY>ÓĞÌb2;³Û·›ìÊ\r¹\Zª†\"ñ%>òY>¥U\0»?!7PCÕP$¾ÄG>Ëç17é5ÙEn †ª¡H|‰|–ÏcnÒ{É.r5T\rEâK|ä³|kfÆI~*N‘ŒÜ@\rUC‘øù,ŸÇšbÂr5T\rEâK|ä³|6á¹\Zª†\"ñ%>òY>›ğ\"7@\rUC‘ø_>ùlÂ‹Ü\05T\rEâK|ù,ä³	/rÔP5‰/ñå³Ï&¼È\rPCÕP$¾Ä—ÏB>›ğ\"7@\rUC%¾øòYÈg^äj¨PC%¾øòYÈg^äj¨PC%¾øòYÈg^äj¨PC%¾øòYÈg^äj¨PC%¾øòYÈg^äj¨PC%¾øòYÈg^äj¨PC%¾øòYÈg^äj¨PC%¾øòY>cÂ‹Ü@\rj¨Ä_>ËgLx‘¨¡B\rm«V­’p­{òÄ]VÊgùŒ	/r5T\r••#àá‡ŞºmÛ6I×ÑÓÓóyâ?!+å³|Æ„¹\Zª†ÊÊğÀœóĞCıêÅ_Ü-ùF¯û¤_¹rå³y|PVÊgùŒ	/r5T\r••#$±gåİçc±û\'ŠxİŸôòY>cÂ‹Ü@\rZÄXPCÀ„¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0(ò 7ÀX\0\0Eä\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0 ÈƒÜ\0c\0yä†Ü\0c\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0 È+òÈ\r0\0@‘¹Æ\0(òÈ\r¹Æ\0(òÈ’ÃFéW\ZWº|H£õóÓï0^¦ØN\0Š<™§æqzÍMqıÒâò”:·­Íã´<&ß_’ÇÄâòqÅıÈcußÎcF3‹¯g÷;±ôœñ;Y\\Lñõ”âë÷ógÄ}.íãöµEÄÏU|=»xÜ„:Ïõµâòä<Î*®Gáy±\0yZ47R“&÷Y1±Ÿ“ÇÏê4æñÃÒ÷gÕ¹ÒÊÎøâ¶™\r~•h~Ç³Åã\'÷_PÜ~h?ÍĞìşÉqßsÜvJÑ\0¾V|}Wñû|$õy\\_4lÍ<ïâ<6·gÅë‰í$\0 ÈÓB¹‘v‹ÕI¥æè»y,,=ä¤RÃó«Rã4£tyJuDqÛ´:·EÃôxq[VüŒ´ÂrLéòÔ:\rÈ„ÒmG¡JÏ3®ô|åŸ—OÄóÆõ7cjˆ°\0yFÛ9çœ“vCKÊ7Š¦fc_(58i7ºË‹ï¯®ì[*_4©ø\Z+9ëŠf*cqeß®wåï\'•š°+{wwëÉã/óøe©¡X\\ó«Wz|jZN+\Z´$VqÖäñ­¢!IËÍ•}»¶Å÷g–sZéö´ËÜŒâyÏäó®(¾ß ãl\'\0EÖË´¢3­hr®¯ì¿êâŸ£*ûv÷Š]ÈVÍÔm•}ÇYçGmÏãJıÕ•h.bµ´z+<±\"ôdo-®;£æ1å]èÊ»ÉÅ.n[ûø“­àV48‹¿cbéï,R“Ï›¤ã ¶Ê:ÛI\0@‘§5›¡®¢q¹ªÒx··tÌP¬x¤“%ü°ˆwõÑ,LmĞPÄ.t³ŠŸ«\'—\rÕ¸¢9ÉŠ&¬ü\\k¾OÍPj¨–¢i‰Ÿ7¾NÄcN(¾6Èf(|¸b79ÛI\0@‘§%›¡Xµˆcb¹Ø-nb©¨øwWöîÆvmeï®jŠëë``K«ŠË“*+J\'X(ß—/İçğâ÷ª4h†*¥­Ù¦%\Z¼£‹× ã­•}+S‹Ëã›|Ş´«İ¡ÇÙN\0Š<-—iõ#va[]Dy2?­Î¿|6¹˜è/-®?¾æ¾±{ÛÓ5×¥§e5×O.\Z¬íEs\rÎÅÅ}?Rç×ŸRj®ÎêçOß+ªûÔ~î{HåÀ3äÍäó..šÌ¬fÛI\0@‘gs#­xÄi o*.§³¸T§QønÑ<Z4;‡Tö}NP|æP¬¢¬-.×3¹¸oWñ³W—~nÜöxñó+¥ç]\\çy~Søq8Ñh­oâå9¢øıËŸ4Ï‹í$\0 È#7ÀX\0\0yä\0€\"ÏˆæFì»©}»²÷x™Å×8£[Ü~¢W\nÛI\0@‘§Ssãâk:™ÂL¯¶“\0€\"ÏXÊ#*õÏ ¶“\0€\"Oç˜3gNäÆºÊŞ³ÃÅ®q‹‹fhiÍ÷“¼ZØN\0Š<œñ?÷Tö6l\'\0E1“ñıÔÊŸ/¶“\0€\"OÇæÆ–<V—\'\rÑ¯¶“\0€\"O\'çÆy<]sóŒ¢!Zæ•Âv\0Päé(ïÿû#7ÖæqIƒ»L.\Z¢.¯¶“\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0(ò 7ÀX\0\0Eä\0 È#7ÀX0\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0Š<È\r0\0@‘¹Æ\0(òÈ\r0Œ\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E!æÁòÈ…~â1¯¶“\0€\"O§åÁÉy¼ŞW3ÔÕÕ5Ë+…í$\0 ÈÓ‰¹poÍĞ#Ó§OçUÂv\0PäéÄ\\8¹Q3Ôİİ=Û+„í$\0 ÈÓÉùPïØ¡Ç¬\na;	\0(òtz>pìc…0.l\'@‘gLÈ›Ÿ;­\ní$\0(òŒÅfè¥c…fzE°´\0E±”Õc‡¬\ní$\0(òŒµ¼8Yn€í$\0(ò4%Ë²qÏ<óÌí>úèoW­Z•­X±¢-#r£]÷•+Wf?üğÿä1_Fb;	\0(ò#$\Z¡5kÖdÛ¶mË^}õU1J±}ûölõêÕ/åÑe%¶“\0€\"?bEH#Ô2\rÑ«+V¬xBVb;	\0(ò# vÓˆ´NäÍĞë²ÛI\0@‘qÌŠ&¤¥š!9í$\0 È·R3ô›_mÍyì¦ì§+?S¸×i`4CØN\0Š|Ç6C»vöd¿·4ûÉİWìq]Ü¦‰Ña;	\0(òÙmùéwh„R<÷ÓåšÍ¶“\0€\"ß™ÍĞ~®a3·ib4CØN\0Š|G6CW|ºa3·ib4CØN\0Š¼fHh†ÉmâòØ.öy¥\0@3Ä ›¡8{\\£f(nÓÄh†µmâÉy¼ŞW3ÔÕÕ5Ë+\0š!ÙmZû/\r›¡¸M£bT·‹÷öÑ=2}úôq^%\0Ğ1ÈfhGÏ†lãıW¸‹\\~]Ü¦‰Ñ1ªÛÅ“5Cİİİ³½B\0 bÍPÄæu·ĞÅu\ZÍ-±m¬wìĞcV…\0@3ÄP›¡W^É6ıà_ÜE.¿.nÓÄh†õmãÇ9V\04C±Úµ³\'{jí3·Å}42š!FWŞüÜiU\04CG3ôÊ+ÙÖMdÿußß6l„RÄ}â¾V‰4CŒj3ôÎÒ±B3½\"\0 bÍP«AV‰4C´ì6²zìU!\0Ğ1Èfh «A}­ij4CŒÚ6òäsÏ=W€fˆÁ6Cƒm„Rhj4CŒšØ=.+¾\0š!šm†„fˆ¶4#y\\W|u69\0Ğ¡Ò1f\Z¡Ô\0ÅÊĞv\r\0h†Ği†KP×\0š!4Cš!ÚŞÌ~\Zt»cˆ\0@3„fH3DÇ5Bı5:Vˆ\0@3„fH3DÇ˜QinÅ§Ùû\0š!ÍĞÑ²Ğ¬A<n—†\04Ch†4CŒ¥Fh¸\0h†4CB3Äˆëïd	#ı<\0€fH3$4CŒX#4\\»¸Y!\0Íš!Í-¯öä¿—Ç‚âk3jç¤\n\0 ÒiB4C´|#4«ÔĞ|-¬ø:Ğ†¨Ñã4D\0 Ò	Í-ß…EC“5Ñ•¡ç—nw\0h†4CB3DËhÔ ÔklújˆêİÿÆ:÷w\0h†4C¢µ›¡|œÜÕÕu§ÌĞÌ&\Zœz\rÑ@¡Ú†È.s\0 Ò‰Öi†¢	Êcy¯m \rI\rQ³Pùço¯X!\0ÍfHŒv3TÛ¥¹İ\r´iÔ2ÈF(q\0h†4Cbôš¡®®®wÆîpµMfH#4€†èçCh„†úû\0\0š!Í\\ÜvÛmY½• ÍPGêJL½†h(PmCä\"\0Ği†ÄÁ¾\Z ±sæÌg>¯âP]ãjW„~^\\?×Ïõ‡¶–\0 Ò\rs<ùä“Ù†\r|ÿÍ›7g>øà€î{÷İwg›6mê÷~k×®Í~úéı®ûÑ~4ª»É}èCš‘çû#´2«÷åq}7ÔÄŒbÂİHÜ69£ò˜ÒÃ°¿³Çõ§¯•¡f>˜µŞÿÌÊ\0h†4C+bÂvõÕW7l”Şó÷T#ş÷·ß~{öÉO~²ú˜Ë/¿¼÷ºøşª«®ÊöìÙsÀsGCTïg®[·n¿ï¯¹æšìùçŸÏ^~ùåŞëV­ZU½_\\~é¥—Få\nİİİ3ó¿sM4C»ó¸¹Îõ“J\rOíD¼»¸>5KßÉã¤Šñ7îªœc†Ó9f\04Cš¡‘h†ê5,åX¿~}¶cÇjœzê©ÕHßGÃR^ÍyßûŞWm–.]šMœ81»ôÒKXUy÷»ßİ{ï½ûıñ3vîÜY½MQ|İ¸qcõëW¾ò•Q?µv±R´¦š¡XÙ™XŠø[(5C±[×úÊŞU¤˜¿V|İ]|=»¸ïiÚ5³ÓèôÙõÎ&×LCälr\0 ÒT3tÎ9çè>ÑÀsÌ1ÕˆËqÛ#<R÷1±Ú“š¦±‹İ/¼P½Oì\Z—V–Şşö·g7Şxcõ9ã>q]4WñµvÅi4?tµX)z¤›¡ãòøfq9&ÿ/·×şİñı7*ûïJ÷xWuøèŠLŸ#4Ğf­urÅç€fH34rÍĞ	\'œĞï}¦M›Vm\\&MšT¸œ\Z™ç{n¿ûıë_¯îŞÍÌ¢E‹ª+H·ÜrKõş_úÒ—zï›V¦OŸ^m¢ºõÖ[«×]tÑE½\rWÜ¯š¡6ÍĞ´<¾UÙ·»Üá•W†ÊÍĞÇ+û¯\"m,\Z©N×ßÊÌ@?PµÙ†(íª7Û–\04Cš¡ƒ»víªNĞ?şø†÷yöÙg«JD½fè-oyKvÿı÷÷Ş?šxÎÚ“,Äu‘?µÏÿÕ¯~µzÛäÉ“«»ÅÅïTqûwÜ¡\Zf(&Ú/—ÏÌã—¥æ§¶º§˜ §ˆû~yŒÍF+Dm„šmˆÒÏÓ€fH34R«B×^{mõŒoq9Ùéï1§œrJ5ÊÏÇÅÊMK»Ì¥ç³ÔÅõiõ\'š§t9N¸ûÅ÷q–ºÚ¦òÏ¸óÎ;5CCo†bE(õ9±¸îĞbr>¾N3tB[*{Ï ·ÅÊĞ„âñãÇÈğŒ¢Ú]ÖTšÿ¡z\rÑù5?Ç1B\0 ÒTDã“²8c\\j8â¤åû¬Y³&ûÀ>P]Ñ9ÿüó³»îº+;úè£«—#*ÅñD«W¯Ş¯y¹şúë³íÛ·÷+×-_¾¼÷û8;\\ìJMPÜ–«T\'xbïÉÒ®x±j¤\Z–f¨V48‡×4Cqù¸Ê¾]è¦–®O\']+÷ÚÓn—›f>PµÑãœ>\04Cš¡‘Œ´:SûùB•:»²ECÍND£c†Êg”k´’×Ås\rfå§beh¸š¡¥\rš¡t²„0®ÔÅ©µc—º<6ç±®²÷LiGŒ±aZ»Ë\\42çWš?]víã†úùF\0€fH3ÔLÄjÌ‘GÙç1D•:gˆ‹*Îê\rP¬õ·û]j^b*=o_ÍP¬üDsöŞ÷¾·\ZV†hñ†h¨êí‚\0h†4C+âÃS?şñ¨aª½.>5òº¿“”ŸxÜ„	ú<ICÜíÚµ\ro©“\'h†¡†Èª€fˆ‘n†„fˆ!ê®mv\0Íš!Ímß5»²ãd	\0 B3¤¢í5»«›]ã\0@3„fH3Ä˜kˆNÎcWÅª€fÍfˆ2³htföqûv\0h†Ği†èDVˆì\Z\0š!4Cš!Æ\\C¤\0Íš!Íc®!ºN#\0š!4Cš!Æš™ÅvÒé³@3„fH3„í$\0 È£Òa;	\0(òh†4CØN\0Š¼fHh†°\0yÍĞa;	\0(òš!¡Âv\0Pä5CB3„í$\0 Èk†„fÛI\0@‘×	Í¶“\0€\"¯š!l\'\0E^3$4CØN\0Š¼fHh†°\0yÍĞa;	\0(òš!¡Âv\0Pä5Cš!°\0yÍfl\'\0E~ø­ZµJÒ:±\'o†^—•ØN\0Šüxøá‡·nÛ¶M#ÒÑÓÓóy3ô„¬Äv\0PäGÀ<pÎC=ô«_|q·†dôV„¢Z¹rå³y|PVb;	\0(ò#$Ÿ€ÏZ±bÅc±‹V³Ò¹Ñ®¿{ñº?¡Âv\0Pä‘`,\0\0Š<rŒ\0Päyä\0 ÈƒÜ\0c\0yä†Ü\0c\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0 È+òÈ\r0\0@‘¹Æ\0(òÈ\r`$ÇÂa^m\00áEn@ËèêêŠ±°5y,Écbgäq|qyRqŸÓ‹‡ÌÈã¾<®Ïã†š˜QÜ·‘¸mrGå1Å«\0&¼È\rhµ±×-lğİyÜ\\çúI¥Ç–EƒÔ]\\Ÿš¥ïäq’W\0Lx‘ĞJcaIÑ°ßO3+;K9¢Ô’ÇúÊŞU¤h‚^+¾î.¾]Ü÷4ÿ\00áEnÀh…ãòøBÑ¤]Ù·[[½f(îûÍâr47/·×­øş•ıw¥{<«¼ú\0`Â‹Ü€Viu\'}šÇ¡Åå›jš¡iy|«²ow¹Ã+®•›¡Wö_EÚX4R\0€	/rFu,L-š–ÃJ\rÌ¹ÅåÔ-®i†fWö®Åå3óøeé±µÍĞ=•½+B)â¾_öê€	/rFÍìÙ³c,L©ÓÀœ[úş­¥Ëi7¹8ÖçÄš†i|fè„<¶TöA.­<M(?Ş\0\0Lx‘ĞJc¡¶ªÔi†jEƒsxM3—«ìÛ…njéú´;Ş,ÿ\00áEn@+5CÓúh†–6h†ÒÉÂ¸R§Ö]êzòØœÇºÊŞ³Íá?\0\0&¼È\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0Pä½\nÈ\r0\0@‘¹Æ\0(òÈ\rÀX\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\r0\0\0E¹Æ\0 È#7ÀX\0\0yä\0€\"Ü\0c\0Pä‘`,\0\0Š<rŒ\0@‘Gn€±\0\0(òÈ\rè7ï—Gî÷y¥\0À„¹–÷\'çñz_ÍPWW×,¯\0˜ğ\"7 sÿŞ>š¡G¦OŸ>Î«\0&¼È\rèÄÜ?¹Q3Ôİİ=Û+\0&¼È\rèäü¯wìĞcV…\0À„¹ÿ;äX!\00áEnÀ˜7?wZ\0^äŒÅfè¥c…fzE\0À„¹ciT²*\0&¼È\rèhóæÍ{[WW×%yşßÇ¦<^.V‡öä±¹Øuîò¸ŸW\0Lx‘Ğöâ”Ùy¬ÈãÕ¾>pµ&Ìï?ß«\0&¼È\rhÇ<?6ohîk¢ªkæÌ™3Ù«	\0&¼È\rh]]]çÍ;÷—åÆfŞ¼yÙg?ûÙìÈşû¿ÿ;ûõ¯…—_~9ëééÉÖ®]›]wİuÙ‡?üáÚ†h—U\"\00áEn@;4B³òæårtë­·fÛ¶mËbçÎÕûÇãÊMQşœyuÀ„¹­ÚWn„.»ì²ê*Ğ`Äã®¸âŠÚ†È\n\0˜ğ\"7 åòúØò®qW^yeï®pƒ»Ğ]sÍ5µ»ÌMõj€	/rZFŞ­,¯\rµ*7D5+Dk¼Ú\0`Â‹Ü€–§Ï.#4Ø]ãúÚe®|‘İå\0À„¹­Ò­HJœüà`¸í¶Û¬€	/rF,WwäÎÅ}İgŞ¼yoK\'MˆÕ›;v”f(Î2WsÚícı‡\0À„÷0¯¶Ü€ƒ•«Eìèêêª{jëüúKÒı>ÿùÏgS|QéwºÜ\0ZT>Aˆ	ïÖ<ä±$‰yœ‘ÇñÅåIyÄ}N/2#ûò¸>jbFqßFâ¶ø”ö£ò˜âÕ×Á07C)¶×®å×İnè¡‡j3ÌZú]–û@{Mxãº…\r²;›ë\\?©ôØ²hº‹ëS³ô<Nòêk†à 5C½+E©)Ê/oJ×÷‰jõôô”‡-şC\0Ğ>Ş%EÃr|?ÍP¬ìL,E<æˆR3tHë+{W‘¢	z­øº»øzvqßÓü4Cpš¡Ş•¢<^Iß×é´û:Ívégïñ€6˜DœuÖYÙ”)Sbœ}öÙÕ¯³fÍÚoRñ¦7½);öØc«÷=úè£«—Ï8ãŒìĞCÍŠÉó~÷ïã~ïxÇ;ª÷=òÈ#³?ù“?É0Bˆa‘P³\0Z\\ZİI_ãÓÓ-.ßTº_¬ìLËã[•}»Ë^9pe(‰ï?^Ùicßô’Ãı¦NMü¦««ëªéÓ§š_Şee\0¨gjÑ´Vj`Î-.§†hqM34;‹ËgæñËÒck›¡{*{wK÷ı²—8HÍPoTºc†\0€Ô;³[¹\no-]NÇÅ±>\'Ö4Lãë4C\'ä±¥ø9iåiBñøñ^~`›¡]İİİŸ-7A¥û8›\00 µÍP¥N3T+\ZœÃkš¡¸|\\eß.tSK×§İñfy¹!6C¬Õò9C\0@3ÍĞ´>š¡¥\rš¡xÜ7ŠïÇ•š 8µvìR×“Çæ<ÖUömî/50æÍ›÷¶¼1y=\Z”ür¶cÇƒÒíÜ¹3›?şïJÍĞ±^}\0\0`Tuww¯HMÊ­·ŞzPš¡Ûn»­¼*´Æ«\0\0´B34;5*±:4Ü\'Rˆç›;wnïªPşóæ{Õ\0€–7)¦få²Ë.¶ÓlÇé´?ö±½Q^š>}ú8¯8\0\0Ğ*ÍĞ±ylOMË•W^9ä†(\Z¡k®¹æw5gµ›êÕ\0\0ZJWW×yéd\ni…h°»ÌÅãjV„ì\0\0´®¼i¹ ÜÅ1DqR…8Ü@Ï\Z\'K(#‘7ZŸğê\0\0--VˆòØYnf¢)ŠÏ!ŠfUŸ´]ì\n×ÓÓSı@Õ/|áÙ‚~[~\\ì\Z\r–W\0\0hqQù”ÛƒŒ5\0\0Úµ)ú`Ñ½ŞL«AÎ\Z\0\0´½yóæ½-oŠ.Í›œÛóØœÇ¢ñ‰¯[òXÇå±¢äÕ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0FÚÿ<*Fj)†¥\0\0\0\0IEND®B`‚',1),('3',1,'processes/Default_Dataset_Process.Default_Dataset_Process_Key.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0F\0\0\0}‹¿\0\0\r>IDATxÚíkl[\ZÇ›8bÄ‘GAÆ‘‰Ì‡#&\"2ÆÇ8â6ªnASÔ%âRƒ”ÒÔ FÂVÇH]B¥G\\FK]b4ŠchqôÔ½­C)mY³şköÚgíİî¶ûş¾íÿŸ¬ìw¿—½ß·]ë·ŸçYÏZ+*Š¢(Š¢(Š¢(Š¢(Š¢(Š¢¨Ÿ%„øìÑ£GGsss??^dee±X dgg‹Ë—/¿’%†µ”²­\0—+W®ˆòòrñáÃ•ŠŠ\nqéÒ¥76ãYS)[\n–ábiÈ|Í}ÖTÊ–‚[Ä†lí\"SËšJÙRğ÷Ùˆ-ÁšJµhÀüôc©x”·Wd\'©‚mì#\0Š\n0U¯‹Eş?×ˆŸZæV°Ç†¢üÌó‚oëÁE—\'	†¢üÌıœ¿xEù\r˜ü¬µ^ƒc„\0ˆ&OÜeÒ¤I’Ú,K,ÏeF)•åš<çoòÜÙr»·%díÚµŸ;\rë×¯¿±fÍšŠyóæÕL™2Åõ ±±±uË—/””t{çÎß¬^½ú—CÀ„F\'Nü½„ÆqÙöª=€ÒT©pd™1lØ°Ï\"ş ÉÉÉ#¿‹‰‰ù$Á\"Nœ8!îÜ¹£²Wëêê„Vee¥xğà8{ö¬Ø²e‹Àù8Ïå5±–x½FŞ\0ƒc„\0ã‹$~#KPñVîÃª‰Èƒ,^¼¸÷Ê•+oÏ=ûÓÑ£G@|QMM¸zõª–Ì\'ií”Í™3ç­0…WwxŒîPŠÓqA^DJJŠ@-((¥¥¥¢ººÚÕa<|øPddd¨ó¦NÚhÎÈÏù2l\"­øY³fÕîß¿_¼{÷Nª¼¼<!SwbÂ„	Z`*‹ïˆüs‰õİ#¹Ç¦)¡Í8ã+.(Ì˜1C<xPÄ¡=Ã‘„d¤»õZ¾ùÃ$$$|3şüº›7oŠ`êíÛ·ÂápÔÈ?L‰üƒ}ÑZ\0ƒòøÆz€Á>€€i&\\®˜0@¨–J BxãôéÓÂŒ£ÊR%ËøÂ%>>ş£¯TôEééécbbŞÈ?\\ßV˜÷ïEá¿Rë»GrL17Ë®ûTÅÅÅbÙ²e&dª¥5óUHÜ\"X.¡„‹Vffæ{	™b»[2M™º¯n÷\ZƒÁ1fó0MÄ\\\\?777$í1ÄgLKF~w¿ ts¹}û¶—:Tı­{˜¼FZ&¥…Äİ³ö\n]pÎ¥5CÀ4Ğ[TkZ.¡ÂÉÉÉnù3È±	–ktİpkÑ¢E%Ò‹oI€iÊj¡5CÀ4G²]|gÆ\\‚é5\'3gøıkPò\\ĞŒŞ\"?ü¿:iÅü\'h¤´\0`šcµ4fÍ\n’èÌŞ¢@º¾;AßŞ=’èĞG)mÜ¸±\0¾fKŒ¿pÑ…P `d£>©9º¢Ã-$Ê\ZÙì÷ƒ ı·¾&ÑÙŠ)—€yeÇX\'œ\"`BØí¢ÓÿÑ…NO¹åÇH+ês¿&555ş]¤5wîÜïåöwKkŒsà¢jÜèÙ‰”ÌD<Ù6¿öëa0pñäÉ“Ì¶mÛ®ZÉM’÷’Õà0L°ë•sTtXz\ZÓ‘#GöbT4.FZ¹¹¹·‘Pd!X“;KşqKÀ0áªWfbG°MšL–_Œ)\"áãyª¬¬sV”Z­\"˜ƒÁ\Zúå!`˜`×+s>—pöyêÙ³gn91~=0‚Háè_oğ ®.’›‚€!`‚]¯ÌızTt$„Ä;ó^ü~`«È€1y`â0L°ë•ùŞ\nm2 ÀXÍ‚±[!`¬_ìX¯ZŒc•LEEE‰Åc0ºäa¤©ÎÙ	`a-¿JÜ»wÏµÏÜö,Xm²ªªêÿsÑTVÖŸ\0«°°Ş>¬¯­¿Ë—{{şüy“çÜ¸qC}.Ê‹/|º¶Y0®zÕ¢b0«V­z…Y°,Ò‹tÅÂÁ\r,áˆÁà×`yúô©z½víšz}óæzÅÀ´†®Ã1dêí¸\rõÇ>sÉÛãÇ«}ø¾œœµıúõku=Œ?şyœ•\\º´iÓF,Y²¤Ş}{ŞÎÁµØ>vì˜kÿ={Z;`êÕ«Õ‹„<L:c…<˜€R’CW®!ÉÈ[–q¨¨ ±£1;wN\Z4ÈeÑÀ2Ğ‰i\rè\rëE_çÙà333ÕvYY™zß¿ŸÄÄDÑ±cGu=Ş:TÈ:âº¶K—.bÓ¦MŞ¡¾–Ô´iÓÄ®]»\\ûğyæ5xk¤•ª¶µ…mÀ­•Æk½’Ç¶[!ßmÜïv¿ØáplÁ/a¤Ÿ–éúš_\Z´XÂ	X[·n+W®TQŞ‹`€p¨\0»wïVÇĞÀáæh%::ZÍ‡ŒíqãÆ©ë´õ€W¸*\0¾~áÂ…êœuëÖ‰Î;«mıYÚ­ÉÏÏWï\n}iii¢W¯^nn¬í\ZéÏ>|¸²šÚ·o¯ÒĞµu@•””´&À4Y¯$xb¬Éë1	•³ÜÉùbúôéImäÀ`,ÒO²Ñü‚Cê»;h„xEc9r$VkPÇ5p<¯Ñ1ÓJÀ6 Ïƒ›×Ë´xpÀèŞ½»Ú¾uë–:fºHÚ=1b„\0¶õ{X2÷ƒÏÓ.¬ ¸FØÖ€ƒkÆ¡®—/Í±H˜B!Âñ—ê€f;X±bÅ/^Œ`vìØq‹BEÙP¡~ÙQ\0‚ë×¯»\Z¸n´8ÖP,û†â:(ifß¾}Ê‚Ëb?fÌea`×®]ÕhZ¼?uê”[LFCÀĞ×¦§§7è~™û¬¬Sj­.’–+‰™RSSMÀì\rèa&/]ºôc$º«¥åT‹ù`Âºd‚M\0˜è8\nb\ZxÅÀTOÀ\0Ø‡†WGA×ñ\rÏ\"í:á»\0•=z¨8	Ş£ Ncy=¡…¶õ{¸fÚ}‚e¤İ,}­v¡˜FÇ,¹Ü¤yóæ…µ»\ZsôšËöùë€ëÁ¬·dÃ¹ãw\0©…ƒÍĞK3zôh—k¢]Lmª­İ­İ&íÖôë×O5®víÚ©Æø‡†\0^á\Z5J¹8\Z={öTÛz®ws‘8Öğƒ›£ad•=ÁÖ`|íoé€qvWßÕËŒ„KIIIæ ÇãAy ØØØ?`İ\"üò…K²‚JRÿ`çu’BƒA/,4z4xOËÃsŸ	¼:¦K£k+C—¶mÛŠ3gÎ¨ø\n,{=»¥ñ¹\0†òÃÚÁg>ØÖïÍ\\—†\0Ë\nç˜İåØ&`¼[1°(<yò6‰es‰Y	˜_íâââş±mÛ¶Úp¸J²’½ƒk„©£l¬Pî	òX`Í øŠ%İPaÅ ^øÀ@ãG¬FwwëÖÍÕíÛ·»Ü&İÅ\r\0¡[ZşÔûª¢-¸f€OcAh‡ÃáõŞµÅƒÀ²†À¥ï÷‹{!`¼Æb\\3ÛÁİeg~t<ÖHŠºY6sæÌÇ¨	%\\ÊËËë°øš$ôâ(›+ÔAŞN:¹íCƒD·°™¡+G¸<p[tÆoß¾}•}ÚÁ1X«Ú]ÑİÉcÇuÛ‡d/o÷Ø§O±jÕ*¯Çµ‡ŠvñtzÿÑ_Æ]XÖG6ô\nİèĞG\n(à‚Ô‡ v1ËºL:µ2##ãC¨,\'\\R¢Z€8‰ƒC-ªu.ëª\Z?b$Áœâ¶ÕÏ„4l,Š–––Vì˜‹sÅQ-D¦xÌ×:7F¯4è\"lè-Bæ¶çhî°ÄDaÉ`Q4ô.Ióõ} ]Ñè-B@×î1†€‰”œK™T™@@¦¯¯ã•D‡<«E¹EaïpÁ¢h4/7lØp·¨¨È\'‹º‡#V‹¼ùT;÷0ŒE,™~æhk],X >¬b\\èmÒq\Z¼(°vïZ±bEC#¹kƒĞõ1ĞÔAŞÀZ<Xllì÷›6mº–““sKŞøS(Ò/|‰QÑ¸ˆ±EHÿG†®]“èÆ¢ßÎ5««oy.AíŠFÀÉ	Ì¼õØ\\;sF`”¨sVôav[DÀ0v‘sÌÒz3\0ÜÌ‚XÎŞ dèRÓ2£…rg|f³ó‡ßÓ…Â\"öYÈ˜ÇšKv]¦™€a!`(Š€!`(Š€a!`(†˜€¡(†€¡({ÉœŸÅ’¥Z¦–5•²¥._¾\\Šu¥Ø­YŠ‹‹ÿ.sŸ5•²¥.\\¸0æâÅ‹?¾|ùò¿lĞÖ²\\\0—ììì§²ŒgM¥l+Y¿’¿’y0Åáï³X¢àqŸp¡(Š¢(Š¢(Š¢(Š¢(Š¢(Š¢(Š¢(Š¢(Š¢(Êúû@×ü¦.põ\0\0\0\0IEND®B`‚',1),('6',5,'source',NULL,'{\"resourceId\":\"5\",\"properties\":{\"process_id\":\"holidays\",\"name\":\"è¯·å‡å®¡æ‰¹æµç¨‹\",\"documentation\":\"\",\"process_author\":\"guanjf\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processholidays\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-489A20FA-7AD2-4130-A72D-F9282450B68D\",\"properties\":{\"overrideid\":\"start\",\"name\":\"å¼€å§‹\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\"}],\"bounds\":{\"lowerRight\":{\"x\":120,\"y\":210},\"upperLeft\":{\"x\":90,\"y\":180}},\"dockers\":[]},{\"resourceId\":\"sid-B620F42A-503B-4AFE-919A-8A55E405F6DB\",\"properties\":{\"overrideid\":\"yuangong\",\"name\":\"å‘˜å·¥è¯·å‡ç”³è¯·\",\"documentation\":\"å‘˜å·¥å¡«å†™è¯·å‡ç”³è¯·å•\",\"asynchronousdefinition\":false,\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\"}],\"bounds\":{\"lowerRight\":{\"x\":265,\"y\":235},\"upperLeft\":{\"x\":165,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-9CD66061-5749-4202-83E3-48D2BE120B85\",\"properties\":{\"overrideid\":\"jingli\",\"name\":\"ç»ç†å®¡æ‰¹\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"jingli1\",\"$$hashKey\":\"0EG\"}],\"assignee\":\"jingli\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\"}],\"bounds\":{\"lowerRight\":{\"x\":445,\"y\":235},\"upperLeft\":{\"x\":345,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-7C95C7FB-0E43-4319-AEF0-B4D9D6F1C2E5\",\"properties\":{\"overrideid\":\"zongjian\",\"name\":\"æ€»ç›‘å®¡æ‰¹\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"zongjian\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\"}],\"bounds\":{\"lowerRight\":{\"x\":910,\"y\":235},\"upperLeft\":{\"x\":810,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\",\"properties\":{\"overrideid\":\"renshi\",\"name\":\"äººäº‹å­˜æ¡£\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"renshi\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\"}],\"bounds\":{\"lowerRight\":{\"x\":715,\"y\":455},\"upperLeft\":{\"x\":615,\"y\":375}},\"dockers\":[]},{\"resourceId\":\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B620F42A-503B-4AFE-919A-8A55E405F6DB\"}],\"bounds\":{\"lowerRight\":{\"x\":164.15625,\"y\":195},\"upperLeft\":{\"x\":120.609375,\"y\":195}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-B620F42A-503B-4AFE-919A-8A55E405F6DB\"}},{\"resourceId\":\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9CD66061-5749-4202-83E3-48D2BE120B85\"}],\"bounds\":{\"lowerRight\":{\"x\":344.78125,\"y\":195},\"upperLeft\":{\"x\":265.21875,\"y\":195}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9CD66061-5749-4202-83E3-48D2BE120B85\"}},{\"resourceId\":\"sid-3479D8AB-B63C-4D5D-BD1D-A32C1BFBBC54\",\"properties\":{\"overrideid\":\"hc1\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5665E58F-E3AC-4DF0-8B37-AE98C138BBA6\"},{\"resourceId\":\"sid-A645DCAC-735D-4DD5-AEB2-DD85589BEBAD\"}],\"bounds\":{\"lowerRight\":{\"x\":550,\"y\":215},\"upperLeft\":{\"x\":510,\"y\":175}},\"dockers\":[]},{\"resourceId\":\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3479D8AB-B63C-4D5D-BD1D-A32C1BFBBC54\"}],\"bounds\":{\"lowerRight\":{\"x\":510.015625,\"y\":195},\"upperLeft\":{\"x\":445.5703125,\"y\":195}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-3479D8AB-B63C-4D5D-BD1D-A32C1BFBBC54\"}},{\"resourceId\":\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2ADA5227-9E73-488A-852D-A32AC984F7F2\"},{\"resourceId\":\"sid-4C13A378-1487-4C84-9034-AD8B4D75184D\"}],\"bounds\":{\"lowerRight\":{\"x\":685,\"y\":215},\"upperLeft\":{\"x\":645,\"y\":175}},\"dockers\":[]},{\"resourceId\":\"sid-188B5A06-B469-463F-934B-920966143B88\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-950CC026-8435-4466-A652-A5DBBA42715E\"},{\"resourceId\":\"sid-981608B5-6E8E-40F0-81F7-8940D14B1B73\"}],\"bounds\":{\"lowerRight\":{\"x\":880,\"y\":435},\"upperLeft\":{\"x\":840,\"y\":395}},\"dockers\":[]},{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\",\"properties\":{\"overrideid\":\"end\",\"name\":\"ç»“æŸ\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":874,\"y\":553},\"upperLeft\":{\"x\":846,\"y\":525}},\"dockers\":[]},{\"resourceId\":\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}],\"bounds\":{\"lowerRight\":{\"x\":845.2890625,\"y\":539},\"upperLeft\":{\"x\":665,\"y\":455.71875}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":665,\"y\":539},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}},{\"resourceId\":\"sid-5665E58F-E3AC-4DF0-8B37-AE98C138BBA6\",\"properties\":{\"overrideid\":\"agree\",\"name\":\"åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\"}],\"bounds\":{\"lowerRight\":{\"x\":645.0859444097279,\"y\":195.42597005356777},\"upperLeft\":{\"x\":550.4140555902721,\"y\":195.07402994643223}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\"}},{\"resourceId\":\"sid-A645DCAC-735D-4DD5-AEB2-DD85589BEBAD\",\"properties\":{\"overrideid\":\"disagree\",\"name\":\"ä¸åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}],\"bounds\":{\"lowerRight\":{\"x\":845.4853515625,\"y\":539},\"upperLeft\":{\"x\":530.5,\"y\":215.28515625}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":530.5,\"y\":539},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}},{\"resourceId\":\"sid-2ADA5227-9E73-488A-852D-A32AC984F7F2\",\"properties\":{\"overrideid\":\"moredays\",\"name\":\"è¯·å‡å¤©æ•°å¤§äº3å¤©\",\"documentation\":\"\",\"conditionsequenceflow\":\"${holidays>3}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7C95C7FB-0E43-4319-AEF0-B4D9D6F1C2E5\"}],\"bounds\":{\"lowerRight\":{\"x\":809.6152376792177,\"y\":195.44860118940673},\"upperLeft\":{\"x\":685.4941373207823,\"y\":195.12952381059327}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-7C95C7FB-0E43-4319-AEF0-B4D9D6F1C2E5\"}},{\"resourceId\":\"sid-4C13A378-1487-4C84-9034-AD8B4D75184D\",\"properties\":{\"overrideid\":\"lessdays\",\"name\":\"è¯·å‡å¤©æ•°å°äºç­‰äº3å¤©\",\"documentation\":\"\",\"conditionsequenceflow\":\"${holidays<=3}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}],\"bounds\":{\"lowerRight\":{\"x\":665.4547533515818,\"y\":374.55859634441396},\"upperLeft\":{\"x\":665.0921216484182,\"y\":215.36327865558604}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}},{\"resourceId\":\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-188B5A06-B469-463F-934B-920966143B88\"}],\"bounds\":{\"lowerRight\":{\"x\":860,\"y\":395.09375},\"upperLeft\":{\"x\":860,\"y\":235.53125}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-188B5A06-B469-463F-934B-920966143B88\"}},{\"resourceId\":\"sid-950CC026-8435-4466-A652-A5DBBA42715E\",\"properties\":{\"overrideid\":\"agree2\",\"name\":\"åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status2==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}],\"bounds\":{\"lowerRight\":{\"x\":839.6445345205016,\"y\":415.4466612136074},\"upperLeft\":{\"x\":715.6386686044984,\"y\":415.1295106613926}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}},{\"resourceId\":\"sid-981608B5-6E8E-40F0-81F7-8940D14B1B73\",\"properties\":{\"overrideid\":\"disagree2\",\"name\":\"ä¸åŒæ„\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status2==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}],\"bounds\":{\"lowerRight\":{\"x\":860.4178264501838,\"y\":524.4921956954114},\"upperLeft\":{\"x\":860.0587360498162,\"y\":435.7968668045886}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('7',3,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0À\0\0[\0\0\0+\0ı¯\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€è\0\0u0\0\0ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®Îé\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ä\0\0Ä•+\0\0 \0IDATxÚìİ	œ•u½?ğgXGE4·HMÑìªi©ie7®QWÓÌ›šÊ¢¤”–uİ0C»ni›¥(¤ùo¹Z¸¸¤ví†K…E]3QT*\\ADEd˜ùÿ¾ç<‡–aæÌ¼ß¯×³Î™Ãïüæ<Ïçù-O–\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0íP* \Z466ÖN›6íôººº!o¾ùæî‹-ªmhhP1ëûPSÓØ³gÏ×zôèñğ’%KFôë×ïjE{Ö°\rµ\r€¡¤/¹¯Ì;÷ÊúúúMûôé“m±ÅÙæ›ouéÒEå¬§Ø`¤\rH¶páÂlöìÙo/[¶ìŸ‹/rè¡‡NQ;Ú³ö€m¨m¨\0ÑŒ3îzşùçÜi§²í·ß>N©”VôòË/gÓ§O_ÜØØ8ø“ŸüäİjD{Ö°\rµ\ríHÿ·®>^Úó]*Gî¹çÙ¶Ûnë‹n#ˆ£¨[mµU÷W^yå3C†yòÆo|Z­hÏÚ3\0¶¡¶¡0´¢â2}úôsâ‹®wïŞ«<şVİœlö?îÌfÿóîlî´?do¾>-ë¹ÙvY·½UŞzêÑ£G|áõœ={öá\'œpÂon¾ùæWÔŠö¬=`jÚş_ÌÓîÄâ1¿#†¸4÷E÷â£?Ïêæ>•5,{;klXš½9ï¹lÆ¤ë³ú…/©À\r`³Í6ËúöíÛĞµk×«Õ†ö¬=`jÚQşO0íN¬ì‹Äü¦Ì{áOÙÒ·­r|ñÍ6An ;î¸ãVİºu{ïı÷ß ÚĞµg\0lCmC`h±¬}¬ì×ÜüÅ«9¢GÙp¶Ûn»Ùéâ5¡=kÏ\0Ø†Ú†\nÀĞ\nâœn±¬}s\Z—-iş‡nCÚf›mvHıÕ„ö¬=`jÚş/İ|œ´7qBóXy¶—>‡w¥‹mÕ„ö¬=`jÚş/z€iwâDÜNhŞN¾ ŠŸƒeÚ³ö€m¨mh‡Ø†jQTî›¼£ÙÇºõt”í\0lCmC€é ¶Úé_³n=6[åş®İ7É¶Ú¹Ÿ\nB{\0ÛP„\0LÇĞkÛ=³Í¶Ù½Éû7ßn/„ö\0¶¡*˜cÙ’Å«Ü·ô­7TÚ3\0Ø†ª`:†·½šÍ˜t}V÷ê?WylÑkÏd3ùïÂs@{\0ÛP€©Z^~4}Ñ]—½ùú´fŸóæü²éÿ8{}Æ_²FçC{\0ÛPÛPÊ8í^½›óôÿæµDÃ²·ÏãÕfÛıËáYmá´e =€m(`Ú½8z×Ò/ºrqTğ…¿ıT¢=€m¨\nD\0¦:ÄÑ»uÕØ°T¢=C+\Z:tè–jmÛPª…!Ğ´{{ü•€öíĞE]4ä™g¹éÒK/úÍo~ó5‚¶m(í`\0`­]|ñÅƒgÎœyÃ§?ıélúôé??ÿüó‡ª´\r@\0\0:”áÃ‡3cÆŒ›N?ıô.\'xbvÖYgu™3gÎugŸ}öñUò_èëSìtmc›¬ù‘½ZùwÇë÷¯¸¯¥ÃÃw[‹ç6¥[3ï§ï:¼n·ÌèQ:\0\0h±èİ{ñÅo>ãŒ3º|ğƒ,Ü·Ï>ûDĞézÕUWİ˜‚N6räÈ_¶òÛ¸0•™kxÎÀT>]\"Ê\'\0œÊ¤T&ç·Hå‘Tò	W}Ûˆ Û/•{*>óR¹;ÿŒ£=L){ì²TşÃ¹©|&•ò×\nÇ¤òÕ¼ÍÅÏîØÌï®ÍÏçS™ßwX*Só÷4%Â·§22•ä­Î7S¹4•ùÍ<¾oEíU°c?ÿ„üç\'æ÷ÉÛûÜüÿ1>•Á©ÔåÊÿavYdù{ß,shíÀ\0@‡wé¥—CZ£w¯pJŞÿş÷gÃ†\rë:jÔ¨O;í´Å×^{í­¼ÿ2º™Çzå;ó/»oË<@Äÿ„T®/\'ûäA¤Î\'Ü!ÚÆÜ<¸}%}ûæ÷÷ÍË©ô©ÀKË‚h´İó\0]ò‘².³+‚õ±ùc¥ƒ\'Ÿ/Œ¥ß;;N„àòûÿ\\ö;»U¼fVñŞ]ÍÿwrÅí¡yø.½ÿÊ¿“ßävfşwñX*§¤2*|lÅó‘ÊÊê`6œÆÆÆÚ\'Ÿ|ò¤Ç{ìøY³fíûòË/oºpáÂnõõõY·nİ\Z7ß|ó%[mµÕK½{÷şKzú·Ï;ï¼§Ô\Z\03àÄÖèÕkJÜÿµ¯}­ë•W^9îÄO<îÆo¼»ßÒ6yø¨/»/z´vNåKû:ä×£çmH*ßÏCPüG®ÌûJfú´«¾m<”Üº<ğÖ–=ö±¬Ø»[yRÅÏ÷©¸=§ìz]ÅÁ’¹yŞÄûèWv å=yèİó2ıóßµ*¿ËŠ½±•ê+nÇÿ%zio^Mh^›Ë®ÏÏßwí\Z(€\0Ì†¾¿úÕ¯~öï|gğk¯½ÖmÏ=÷Ìú÷ïŸ½ûİïÎRàÍjkk³‚kŞxã/¾øâ.S¦LÙåÑG=şì³Ï±hÑ¢ïüìg?»N-ĞŠç„5œ’èí;çœsº1âÖ“N:és7ÜpÃoZémÅùOZğ¼¥y”óópÔ?l\\şXìM´_Tõm£o^NJå§y›®Ñ«;!/çKâ`ÇQùÏÎÌVôÿ5o#¥Ñ³ó.M…Áx»*î;%?˜RêûRş\Z1ÚàÀü`L–ÿ¿æáwü±r{§rIYÀ_ö{§·°^âÿû@Ùí^ù{Ü++ö.*»¿®,h—æM÷­õuMüŸA\0¦ezè¡/~÷»ßı,è9hĞ ÂÒ®]»®ò¼ÁQ¶İvÛ,†xâ‰5?şøÎcÇıÉ©§zÎ¼yóşã¶Ûn{V°!\r6ì¨iÓ¦İó:×pÊƒÎ×¿şõW\\qÅƒşì˜1cÆ·ÒÛ;8ß—©/“óóú²`33ue!fn~;zŸËVòJu¶éyù÷¬Øë¿[Ş¢-Ü›_ï•Únùã³ËÚÊä< ?’0Ù­,fy@àYŞó\Z!òôlÅÛÒpæÒï¿ŞĞü€Í±ùsËCï–ùsÂÔlå9Áñ{ß“?>º‰ÿïùòéİ³•ç×æ¡zv¶bØw·ü9[æ÷ÊßkßlÅ¼çÒÏFà}°,xÏÌVí•†ªbè6ÒØØØíî»ïşıèÑ£¯O—]vY!Ø6~››ôs]>úè=6ß|ó\'¾üå/Ÿ¢fØP¢woşüù·§€Óµr^gK‚ÎğáÃ»wëÖíÎÑJoqÇ<0LÈVÌO,Ù9Ï­ì½Û&ßáï“µ¼\'êhË²óz?–­èrdÙgŞ+[yØñ¡yPıEŞ>zåÏÛ?ñz”µ·	ùãõe·ÈÃê³yèŒŞ²|]DÈ+…èd+ÏG.½Ó¿)­•ÉÛ{ùûyª,ÈOÈÿ—Tüùù}Çå×/ÈïŸRñZñ‡çA¹ü~‹Å!\0³öá÷ÁüË<ğ‰¯}íkÙG±VÁ·Ò¡‡\Z+/nÒ¥K—«O9å”ÓÔ0\0ëë¢‹.\Z2}úô×%à”sÎ9§¶G·µb®ÔÜ¼Èè%›™­è%,s;vÛhj~ki8påR÷æáõ¸ü±¹y—­è¥-Ã›ÌVV_.oôÇ*Òñ<5[ÑÃÚ·,Ø6·ÂóGò×\rÇ¶ğÿ;-ëgfÖüi ¢÷wbşx­–\0Ì:ûõ¯}ßwÜñ¡´ÉŞûŞ÷n×Üyç³o}ë[‚¿?xğà!j€õ	83gÎ¼!æu®kÀ)‰ÑJÃ‡oÍ Á`hVì-›Ÿ­˜ÇY®[hjóçô*Ã¿[‡Ğ m´ÿ¶Ñ7›‹òP[*^ÍÏDÏpÌ¹½\"ÿÙ¸ó‰\'4óüÒ0æ‰ŸÉV]<«Àceèşü×²Ğ?÷íToæµÊy–‡ïí°Çzà>ùïì[Ğcô`S’\rÊÃwPŠ^ìË´~`ÖIÌùıíoû‰3Î8£0ŸwCŠ×;ÿüó{uïŞıš‚÷PÛ\0¬­ÚZ\n8-×¹&ù×Ú´}º5mŸÛ€o7†ş(6ÑK6*[µW/ËƒCÜ¿{|£ğ¼¬ØÃ79Gøô;LÛØ\"pñùn– )•­ágc¤ÀµYqXó–Ùª«>—|=[yEå8×î+BêÄ¼ôOå¦lå^ä¸¾[Ö|ÏrßlåáÙÑ¶ÿ;+Îû]Wuyş¿T\Z³â9¯ÌVÿ¿£[Ùï÷8.¾`ªE°6¢XíùÛßşö?ó™Ïl°ßJÑ<pàÀ¿üå/cşÊGÕ:\0-ÕÔ¢FóçÏÏ¾úÕ¯®òÜ«¯¾z¥¹o¾ùfvòÉ\'¯ò¼k¯½¶pFƒ:ç{î&—_~ù)è³?jjøòùNzÏ²û¢/æ2FoÖüüò¿òË¡y9\'+öx]ımcA¶beãúü\0Im¶bÎws\"èMÏ÷£]LÍÛKìSı ¿½M~°d|¶ò)³\"\\~)îÔ<DÇk=›·Éëóß?(œçåm0nÿ{ ã½öËƒ÷¨Š÷mõÓ©üOşšWf+/˜µwşs¥aËÍà/­æÿ##Ëÿn®xì¡üıı!+®°½®§a‚6§x#ºë®»®SÅœİÖtøá‡o²Å[ìb(4\0-ÕÜ¢F[n¹e!älºé¦+vºtÉ~ò“•Ï@ô³Ÿı,ëŞ½ûòÛïxÇ;²!C†NI¾ğ¦éço_Ï!¯«æ;ê1\\t\\~;BÇ-ùõ¸¼0+.\0s3¿‘ïÔwË²ğ[ım#Ë?ßÒJÅËÊ‚p´›ÒªÊåÁ²WY»Š«‹ßÉYğÃ<<î˜—ÔSš9 stVº<=îny˜­X+†í7Nœ“úî¼îßwÏjì§ó\0:µâ±)ÙŠ!Ë×±ŞÈƒı„fÑ‡dÅÂ/0«½¿S¦L§:*ß´–SO=õi#Ò&b¥ÿã…)|Õ¿#¨zÚ3¡]¦€sÒê5:è ƒ²w½ë]Ëo744dÓ¦MËyä‘Âí§z*{òÉ\'³%K–nwëÖ-ëİ»wvØa«hŞÃsÏ=7V\0»AgÔ\Z¿9[1zzÙõ©y8*/1„z¦¶ÑaÚFSa¸$‚ï—²•Oã33oòv2?ó+‚_étZ“×ğû–f+Ùš™­ºbò#y®¯8h35±kj‹õùk4÷»¿¿átBÖôpïÊ>³­Ú#l\ZãF’¾üOzå•Wºm¨93kò| GÏ=wI_<}Ç;}#ÿw¿öÎw¾³.ış»jjjnYºtéÄÛn»­®£~¾±Á£ŞkûØú¼nkü«mÏ‹S{şmjÏÿİÑÛ3UÕ.ßHíòîõùÍÎÏ×4¯óôÓOÏ.¸à‚ÂpÖ°xñâìºë®Ëvß}÷ìšk®Y~ˆÁ/ùËÍá ¶Q)èd—_~ùØ´s|l+\'¸Ó¶>}ú,Lmã×Úíä»ªnàÀw§}“›mCik]UÁÆqà^µí¶Ûî¼ÿşûo´ß9mÚ´ç^zé¥¥S¦LùËÆü¿î½÷Ş—ÄeÚèöˆmY*CÒõÿLµ÷½ÿıï¯?à€fN<¹Ù£“\'xâ%1—y]½ıöÛÙw¿ûİlÁ‚…#Ï¥’¾l£\'>ëÛ·ïZÉôŞ—ß®¯¯Ïî¼óÎl¯½öZéy_ùÊW\nG´ãµgÌ˜‘m±ÅËûÏÿüÏìÅ_ÌüñlæÌ™…¡`µµµÙ_ÿú×ìùçŸ|ö¾÷½/Ûzë­Wùıwß}wvÓM7eÿşïÿŞäû[—÷³¶^xá…x—vÖ¿İ²öC7öŒöœ6àg¦¶¼_*o´v{^[ßûŞ÷\nkôêÕ«ĞæÒ{Ë}öÙB¹ÿşûc\'¤ĞÊÛö<Í;·pí¥üï&æè}úÓŸnòwE[~÷»ßm¶ÙfÍ¾Ÿ˜÷½CÑ¾¿ğ…/dŸıìgg=öØìsŸûÜF?PÓQÚsY»ìYúMuùÕÔ&[ô=[rñÅNŸy‹5Š6ß¯)eivùwd´±h?q=l¾ùæÙ¿şë¿fŸøÄ\'Vûz©-v}Ï{Ş³ìÿşïÿJßO¶·°áÚFVœ]j_I÷ï™ÚÆ[ÚmµO˜J©=–ÚâcŸp]üñÌ6Ùd“åÛ¶ºººìøãÏ:ê¨•ÜÌ=;{ë­·\nuN;í´ìCúPágây±ß¶ºm£mhÛÒ¼‘Ìš5kßşıûoÔßù‘|dË²>®hëÿúÒÛ2…Ïã»,…¶èI—î»;ÕË=&LØàóHâ%¾$ÊÅ—TåçØá/?2]\Z¢U\Z¦;ÿñ:ñÅ\"¸î±Ç…0ı/ÿò/…a^ñå¡!÷\r7ÜıãÿÈ~ğƒ,ÍvØ¡p<¾@ãµ~÷»ßeÿøÇ—?·K‹¢Å0±9sæ,ÿB›2eJa®ÔïÿûÂí×_½pyÌ1Ç¬óûaƒè•Úsœ\'ò¸Ôß\Z<xğéú¸ÖjÏksÀ&ÚKŸ>Å5^âÀÈ{î¹üñóÎ;/0`@áú£>Z8 sã7féıg/½ôRág£Æœ¾ÿøÇ…çıö·¿]şóÑ>£•ÿ¾ÿ÷ÿş_V>,ò‰\'(´ÏÒïíÑ£Göá¸°süÉO~²0ü1Ä9¥ël0ï(û}3}ÏŞººïÙáÃ‡“¾+n*_ÔhMb‡ëÁ,ôğ•¾3ãû&..ß±HŸk©­Iú½›œsÎ9\r#FŒøåÀ7nÜ=>ÆV“m‡¦Ïihj‹RÛ¸MÛ \rmQ¾O˜¶A·¥ëw¶õ6´$†õÇ~_ì†èˆøéOZØ•{øá‡³×^{­Lc_l»í¶‹³½dıúõ+@ı¯_ÿú×…N™Ø_³\r€;—_~yÓ}k×]wU)öm‡Õ±IiCœvÔ¤\rñø´!İ³gÏ	£G®ß¿ :Ç—Nå}ÑÓZîàƒ^éö-·ÜRXI;¾¼Beˆ±PG‹šS§N-%,™8qbvÜqÇ-¿_€ïyÏ{Zü¾ãõâ.’—o\\/½Ÿûî»oy^—÷C«è™Úr¬â9(µçº´!£?Şí¹¥ÒCöùÏ¾p`\'6Êi§qùcÑ^J#\r8à€BùÃşPh#ÑV\"ÇšèÁ‰ËJñºgŸ}öJÿ….ÿ;Š	¯¼òJaÃ;v~£Gè’K.)b£Ú´ô=ûÎw¾s~j—1Œô†R»Ì{÷njn^gsâ bœÆïŠ+®È-ZT¸¯<àÄ¢H_üâWZiMöÛo¿ÍÎ=÷ÜºË/¿\\ĞÙ86+ÛÏKmã>mƒ¶Ü\',…áØ\'ÌÛãÏÛb\Z¢C!ıîÂ¾`ìGÆ6íÕW_-\\Ë_®rß>¶¥ˆKöŞ{ïåAÕ6T\0îtRï_şÓ’%K¶M_*KSÀ¼¤WMŒÍ˜ŞçÀøÃO¸çâf}Ä°á¦†lşÛ¿ı[á‹-z‡cxğ:Ä(|YıéOŠ!9…/¨RÀˆ^²ËQî¹çBxˆ!aXcG †ÆçCYşùÏzwãK6âEX)“¸¯t”1z¢ã‹³t;®—†3¯ËûY[1t-¾„ÛyjO¢g8š|6Úsª·iëÛ[*6šÑâ\0I|fqÄ¹$>ÿŸÿüçYs+ĞÇÏ†gy¦ğ\Z1\n!.ËÅ†øğÃ/\\–z˜Ÿ{î¹BÛ#Ó¥4Gydázì8G¹÷Ş{ïxNAçÄQï¸m8†€}ãß(omµ=ç#p\ni¢]üñsÒç¸môî­MÀ)‰±8ğm¤4´5ÄA¸wÜ±p`emí³Ï>½†>/1iøîô~Ÿõu²Ql¥mĞö	ËFWÅ>Í³kZ¾½ŒƒÂ• l×´# buóqÓ¢\'¹#mC`ÖZü!oìÆÃ0ÒO|Æß¬¢µ÷Ä†³4Äw]wrK_ MÕÉº„ß°ıöÛæuDY	+‹\r{î8:_zZçÍ›W¸?Ÿ}øÈG>RøB=âˆ#\n·Ò#Ô–ÏÿøÍo~³¼7Bs\\/õÆÅï,í”¬íûY—\0áú±ÇËª©\rµ3»¬o{n©ø~ùÀ>PØ°Æ<¤òp;zôèÂ0ø7Şx£ĞCçèŒ¶C±¢üğ‡?ÌvÛm·ÂÏÇ„8P—!®‡vÚ©°Á½è¢‹–Ïß‹ƒ8Ñk\\ÚxGÈnn§96Ø1_j¿ıö+ô‰÷sàãÈwùrkÒ—ïŒ^¸u	8%±“W:¨W½}G}ô:¿æ¾ûî»Õ;ì°pæÌ™\'øêĞ6´\rÒ>ánkº/+İ.ŸŞÃŸñ‹_,ï\rîÛP˜µÖ³gÏÆ„j6fşğ‡?<÷öÛoß2}|w#ÿw[²sùv~Ù£âËîù8`×õüÂ\\Şc\Z½Ÿ1a¿4‡·©…¦ÖU|I3¦Ğ³\\§}ˆaÖñE4zÜ¢GºfC9õÔSózcèr|á¥{!Ğ†Ï|æ3+…Õ¸^\n#ñÿ*}Q®íûYñZQ)4\\Ú‰ÿ|[Òcœ_lºnèöÜRq`\'†ÊÇF·ôy?¾p\0¦4d+¾.¼ğÂÂ½8h% DoqU£×!†\\•¦TnXc¾ziH~™\rx`áöÿüÏÿzy–ÿ‘§¶\ZèqãÆ6ø²K?‹¥ëKkÏ-i—oE3¬üíÒ¥Ë«‹-ÚúñÇï²®g&øå/Yø®-â\Zßâû®rªIK¥ÏeNÚÜ,V-ÖË×êm£!ÕqC~\\Û ­Ûc–oC»TnCÓşÑ®óÍÆ¨èí­Óˆ¶Ùf›•îûØÇ>¶¼Ã¢´ø[IÓ¦^§š·¡0ë²sºdşüù=JÃ6†îİ»ÏK_õcÇ½dcş_\r\ZÔÜ—İâ´áê’¯ZZØ!K·ç§ÛÄF­gÏãc¾Ç¿øÅÆ\rõ^bç½´ÀTkˆÙòE¢77zxK´|e©¸4¬&V†áØÑ[]\n¿ñ~Ë&‚J¼fé¾3«[ñouïg]Ä—}ü?Î;ï¼K:ëßîjÚs´ße©ívÍCF×ÖnÏkjë§œrJá`IôøÇA•X€-†XÅéHbãÃëŸ~úéì²Ë.[åç£×86ØÑ¾JCèCeû‰…³b>}ˆ0ó—JöbÇ¡$ÑŠ^æØ9ˆ¡ùÍ¸Ù˜:R{^M»\\˜¿Æ‡Ò³¹ïÙóÏ?ÀÈ‘#Çœyæ™k=Ô5Ö6ˆ…Z*,[¶¬Ğ&âÀÛÚu€sÅWl’^s°y­Ö6â[»4R{è¢mĞN¶¡…ã$m¹\r-‰!É±ı,íƒ•n¬Ç½®å¢\'6ÊŠµ^bøt.•cÒX«#lC`ÖÚ–[n9#5ôİ6f\0~òÉ\'ŸË7vm©.1Æw“ü´+q_|KŒKØ¤/¸ùò–uıôå»ÁÿS¥9)6;ì°å÷W~9®”şÓiÔë¯¿¾0g7æßqÇ+-¨«ğÆÎCiÁ„˜“_Œ¥/ÇÎ\ZÃT7ÄûaÛ×[ùAœ,ßp·j{n©®±!\rriG4æâE‰Ñ¥UÈ+wV\'MšT9ğ˜›m°Ôç˜S|ñÅ/Ù±²kiC¡:Jév<^:uœº!Úc¬(½&åsàY\'R»ìšÚcé]öİÛl»üŞ÷¾wë°aÃŞ¾æšknO—][ÚÛAæG?úÑJêÊ{ûbõùö=}-]ì(…¢9W]uUœœ\rnIŞÓßY]ò¢mĞ–ÛĞ¥¥‘íiZÚ†tÒI…yµqğ7¶1r!FNÅßAS=º±Ÿ£ò“ŸNAÛ³Â\'œpBa›Z~mCàN§wïŞN™2e·èÜXşò—¿ÄVçÁ6ş¯÷*Û»=•ß¤0wOk®ìs*\n¿0m„c~cùœßu	„•_,±1x×øÒ*_m:n—†+W*-0¤4T&‚kyî§>õ©•ä¤E\0\0 \0IDAT‹W•^³©×^×÷ÃºÉw$7Z{^óçÏÏÆ[Xmµ|è¦Äù§cîyl¨KCîãT¡¼¸ò NÌq*\r»Š£Õ1zá£ıhávæ’ÊÓE”‹yLå\"„W¶}ÖÊe[Ü.G\ZuW\n8Ç¦ËÛ[ºâï¯~õ«•NkDˆÅXJ§‘‹Ë[o½5:tè\Z_/í<Î\Z9rd­€Ójºk´³mh·öº\r}´ØÆpç³19ÖR‰P\ZkÈÄ´µ»±¦FKÖU)?+‡m¨\0Ü)-X°à²Ô°¿°lÙ².•ç¢m%õ)pí‘.Ok«ÿseIRÀ+^a£Õ‹^°8êvóÍ7gßùÎw\n½§1\"†Çrõ¥£kq¢ó ¥sş†èaCHKbQªøb)-ÂÃ`Î<óÌåø\nhcñ­8Âİ”ø¥†B„˜÷\'J?ë¬³²ÿú¯ÿÊš\ZPÚiXuy?TO{n©Vç<ÿüó½ÀÑJm½\\´½ı÷ß¥‘M=¯üùq\Z‡ØˆŞáòlüL|Ÿ•6Ôå§~ˆß#JC!£=Şÿı…?¾üå/Ö”ÚiÌq¢mÚe´CwÜÕW_=.}t_]Ğ‰®hå!\'vğ.¸à‚Â*¤¥ïÍøÅXu×]›Ÿ¾C[GŒ«¾\n8Ú†¶¡=¶©èìˆ9¸17¶[149:PbÈ~Üsë[ß*ã˜ZÔÒ‘1º´8–m¨\0Üé¤ öÜ×¾öµi?şø{ÖguÅ–ºï¾ûîH4;;vzüw/ª©©™‚çíû¨^O‰#j±P@ùi`J½azï¼óÎB˜-_~u*{ÂÊ_w«­¶*ş!¥/©ø2úË_ş’\r<x¥/·8â_¢1ä+æğÆ¹Zc¾e©W9æiFo*\0ÇœÍ5e\\›÷CuµçµuäÈ‘+Ì‰…ØJÃéc[šŸÌÒPé;¤³fÍZ~0(æ—FÄA˜×ås”ÄkÄ½¹ƒ>1Œ¬Ô~cşm¬[:/u,;ñşÊWÎdã·Ëk¯½öÎşÃşğ7guVæ¶Q1Ä¯|Z|§Åy]ã Üé§Ÿ^UPZõ>¾÷âù1ß¼©ƒ¾¥yéê	cÆŒ¹ËÇ©mhÚc›¿Ñ‹.*\\Æ›˜¢Vš«=¿±]Œƒ:1Š/DÇcáÒá§¢ŒËø;ˆÎ–¸ó#œî²Ë.M.FjÚvjTÁÆsòÉ\'·å–[şò?øA·VîÂ	\'Lkll¼*m<n®¶zºÿşû[\ZNi}qĞàCñ]¡=kÏÜàÁƒëÙ³çgœqFmeĞ‰ƒ‹q:­X» $vøJóÃC€‰i¥‹8 óè*ÏËn^§¶¡m`jÚ–ºø(7ë¯¿ş¶ºººÆüºÖ4bÄˆèı]4kÖ¬±j€–3fÌø·ŞzëèQ£FÕÇ¸’˜[SKÊNˆaxå¢G¢|õßözã7®4¥$z÷\"à¤«mCÛ\0Ú‚!ĞÙ‚>{çwşc÷İwß¤5NÏóä“OşzÒ¤IŸ©©©ùÄ„	–ªq\0Ö&è0à?®¼òÊÿ6lX¡·/U‹•Â×$†½®îy¥Ş½8ñ{Ô¶¶¡m\0mAğFsrß~ûí/¥\rÈ›¥S×l(/½ôÒŸ¿ÿıïï›Âïğ´™ª¶X[·Şzëo½õÖDoß¤I“6È©ô\"àŒ9²Gmp´\rm€;™›o¾ù–ººº3.¼ğÂº˜$¿!DÏï¹çûîeË–ı¸\ZçıĞ.ƒÎ[ëtJC[ÓöéDC[µ\rm€;©[n¹åç,øÒ·¾õ­…wß}÷¢8ü:šŸ6£¿÷½ï}¸¡¡á›iò}µÀ†:iÛtLÉ“\'¯ÓF*z÷ò}ÍëÔ6´\r@\0îìÒşØ¥K—î“6$=í´Óæ<öØc‹×âÇëï¿ÿş±ŸÿüçŸıÛßş¶[Ìù;vìhµ\nÀ†CR#èŒ1\"†¼¾½6?[¾¨‘¡­Ú†¶´Ájcùyzÿ}Ğ AÇ¦ÈW{ôèñş=öØãÕ~ıúõÚe—]zlµÕV}jkkã¼ysæÏŸ¿àÿøÇ3\'NìúÌ3Ïì6<qbÎkgÏ}³¯\0h­ 3`À€£Fy×ÙgŸí¿ÿş=Zp¢w/?€£mh€\0Ì*Aøötqû	\'œ°ãã?~ìäÉ“?–nJœ4¼6•-RY’Jc*¿Kå«yx€VC^#è\\uÕUw¦ ³ä€Ø¬¹ç>ıôÓ³FŒÛ,çrÕ6´\r@\0fõn¹å–™ébT^\0 İÁƒ7räÈ;Î9çœ…üà{W>\'_Ñ·¶±±1Vô½K­iÚĞŞ˜\0´Hy]ºté‘W^yeÍßşö·…å•¯è+àhÚ \0\0U/zûRĞùÜ¨Q£j~øá×K§l^§¡­Ú†¶´[†@W—w§òbÙí8€±G*ÿP5\0lÌ 3`À€:wî°Ã_zé¥ÍRÀ,à m\0íà¶õ©<À–Ê¿”•¸}f*GT<ÿÂTv+»e}Ùç@[tq÷Ì™3c¾çİÚ \0³&÷¥25ºO—•¸}u*•ŒX ëµTvÈoNåÜTŞ©*ØØ\ZŸ-¿m€Ùb¨ú¦©Ä¹~Kå’<$_ŸJœ|~V*_QM\0\0\0«V´_ÑÓûR*\'¥²O*K%Î¯÷ûTNåTöO%šX”Ê°Ìé“\0\0\0àvæİyx\r»¦rTÙc¥ÛıS¹#+öô~!•›Rù¯T®Kåï©<Qñšû«V\0\0\0¸½y1[±¢ó©”Ÿïàüvù}¯•]¡ĞGçA¹dh*§ªV\0\0\0¸={WÃ¿ÊCùí™M„æ9ª\0\0 iÁj{\\okÁóşJÏTO¥‡j\0\0X;z€ÛÖ¶©ìœÊ-xî¦ò³T6ÏŠbE)Ÿ7¼Sşz¯ªV\0ÖAœmàÍ&îGV\\l‘Î«oV<`]÷o“Ê#ª€Y“Xá9æş^ßÄc«¸ıTÆeÅyÀpŸÏŠóË‡@ß¥JXK½ó€»W*3R™RñøûR¹(+wÎå”TÆgÅ)W}ò [é‚TnPU@51ºíÄéşÚÌc•“\'²•ÁÊò@\0ë£_~ù¿©4¤rr*»åeëTŞ/üvZ½²%±şÈìŠÇå÷MTU€\0ëÓ(»tilhhPí@ú^ÈŠ«£=kÏSœWşŠ²ÛŸÌŠ½¾Ûæ!8¶‘ÊÕªªÓYİÈ²!Y±WøRÕ„m¨m¨\0ë©¶¶ö•7ŞxCE´¯¿şz‡œ¬&´gí¹C»&•_”İ~6/Ïç·ïIeOÕDV<(rI*u©ŒÊPÂ6Ô6T\0†õ×½{÷‰,PíÀìÙ³¦‹	jB{Ö;¬=²âÜß/4óøıö:µHF¦rR*¦òÌº#Ø†Ú†\nÀ°áÔ××_>kÖ¬%*£mMŸ7o^¬6~‡ªĞµç)Àúğjï›Ê!ùu‹fv>1Äyx*g¤rv*¿Éï¿,•ÃT¶¡¶¡0l tĞÃé‹î‰—_~Ye´¡)S¦ÜŸ>‡—9ä‡Ô†ö¬=wHq4ÿÆüú/šØ\'˜n¡S«­¸=7•›óPC ¿¢Š°\rµ\r€a©¯¯2}úô7.\\¨2ÚÀüùóï7oŞ444œ­6´gí¹Ã;-•/eÅU Ã¶ÙŠE°ş/•?gÅ¡$V~~ •cU¶¡¶¡0l\0‡zèÔô‡väßÿş÷¾ğ6şİ“O>ùşššš/¥ÏaŠ\ZÑµçïÚlÅbF1ç3&ÜõH%Vù·T>–OİGç²¦aï±PZô\no©ª°\rµ\r€a8øàƒXºté±?şøÂ3fÌ3ÿ£ÕMŸ2eÊ?ñÄI×ÏJõ*Ñµço“Tº—Ée%vv6MåG©ìªª:èá^v»¾‰çLÈVœK\ZlCmC«BWŸ/íÙ7Şøü	\'œp×‚öyùå—{×××?İ¥K—š={öª©©QAë)Îé6oŞ¼?O›6mÒSO=µõâÅ‹»¥ûNøÔ§>5QíhÏÚs§¡f^~}N¿•Êÿ¦òzS?¼÷Ş{÷OQL;KTg‡Ö\\ïOœ.«AÛÀ6´isçÎÍî½÷ŞlÛm·Í6İtSÛĞvÀUã¾ûîÛ7}Á“oPÈV] ƒµÃ£§\'vNî°@ö¬=w:S›	¾•ÎÊš8ÿã Aƒ.IßLåÒ±cÇ^¢:;œèİ¹àc³âÁ’¡YquğøÛz [Íy€µ\rlC‹}ôÑì±ÇËöÛo¿ìƒü m¨\0\0´¡÷¥ò5<çyğùÓ©ËŠ§<š‡Bÿ.•ùòÁÙŠ¡`X\rí9À\0@)‘J¯¼Îï«m*üÒá“Êq©ì’{|OHåC©|>•OgÅƒ\"F®\00\0PuJó;ß‘Êy9:¿ïÕÓ)í˜Êøüú½Y±\'¸´VôÇ¹€û¨& ÚtS\0@nR¶æ!Ñtqš£˜ÿ;5¼gWì?n™5½24@»¦\0€JÑû{Z~}~¶ò\"hGeÅs\0ÏUM@µÑ\0”lÊ»TÉ«y,Âp‘_ªš\0\0¨6=òËWSÙ,¿şÕB™m²=¾Ïª Z\r\0É/§æá&Êª¥SÛ»ìz,ˆõMUtz€ ó:+•YÃsâ`ù‚T>«º:•kRùD~}f*¿Q%€\0\0T³SUÍ¸¡â¶ŸÁh\0\0\0`\0 C‹Õ|·mâşÁ©ôV=^ß²Ò§âv©Ôª& š\r\0×!MÜwrV\\ôhŒêéôú—]ß½‰°8Nu†ª`\0 Ú¼#¿—ª\n’ÑaxBÅã{¤R§š€jb4\0Pr‘ğK3z5sÿLUÀ\0@µ¸?•]³ây_˜çW–wª¦No›&î›ªZ€jc4\0tn1xÿTÎKåì¬8ºR÷Tæ¨ªNe®*\0`\0 #\ZŸÊ}©ü8sn`Šî©¸=[•\0!Ğ\0@hÈÃïª‚¬ØI²eÙíñe×÷P=€\0\0tW¦²¯jèôN)kç—±Öa©R=€\0\0t„ı€ú¬8\'˜Î­¼Ç÷ã©ôIåŠüşéª¨Væ\0@çÕÜÂV×§²s*/¨¢N-V~¾0•ßeÅ9ÀÑ|`~ßü9±X–sUC0\0Ğá·óŠp{D*;¦òı²ûãœ¿1ÿwëTúgÅáĞ·©. šè\0 \\ôêFoïüü²ä©TFçáwB~_½ê`\0\0ªUiœÊn©ÉŠsÂû7ñ¼˜<^u0\0\0Õ,N4%Âq9!•¡eG8áĞ÷¨* š˜\0@¥GRÙ;+©Rt œœÊCª	€\0¨f±ÒóYqÑ«Á7Ä¼àïfÅ¹Â\0UÅh\0\0ÊEïom*\'eÅáÏ%£óËXË©\0\0€ª·4+ÎùC o.»?Xù¨Z†@\0ĞœëòÀ»[Ù}æş0\0\0Æ¾e×cµçóT	 \0\0Ğı¸ìúÔT&©@\0\0 #úiÅmó~\0€i¶*\0:\"«@\0P)V|î[v{›ŠÛ%3³«CÀ\0\0T8pÿ²Û»WÜ{¥² •ï¨.@\0\0 ZÕ¥rOÅ}£+nG ~VUÕÄ`\0\0ÖEÌ©\Z\0\0€jVÛ‚çLUM€\0\0@µ3M€\0è*çÿNQ%€\0\0@gğH~C£T@µ2¼\0€–8*•ËR—ÊCª€\0èˆ†¤²M*ÿ–Ê\\ÕÀ\0\0tD—¤rsæœ¿€\0\0@÷T–ª@\0\0 £é•ÊĞlÕ• ›2S8`\0\0ªY]*ı×ğœ½RY{ˆ`\0\0ª2ünÁóúeæUÆy€\0hN¬üüõ¬xşßJ±\ZôlUÀ\0\0tó³b/ïÈTNÏŠóƒK¦ª Ú\r\0@sb«»òÒ\'•a©Ü.üÕJ0\0\0-ÃcÁ«½¥ê\0`\0\0:’~MÜ79+áĞ}U \0\0Pí¢—÷äTHeÇ&9Á»©& š˜\0@S¢—÷©TöÈŠ=Á;gÅóş>‡Co‘_€\0¨Z}S™İ›Ëîù¿—eÅ^áÿPM€\0\0@5‹áÎW¤òç¬¸\nt80Åqîßæ—±\"ô÷Ë \0\0PUf¦r\\V<íÑQ©Éï‹S!Õ—=ï\'©ôÏƒªˆE°\0\0¨tD~¹W|÷ÍŠÃŸ({NßLï/Peô\0\0PéÙ¬8ìyR*ÇfÅyÀŠæ÷MÈÃğUT=À\0\0”;8½q\Z¤ç—ı³âPçß¥2*•R¹GUÕF0\0\0å&gÅàĞ\'ß_Œ9ÀçdÅ^ßÑ©ÜO4UuÕD0\0\0åb…ç˜ó{XV\\ô*æşöJex*SùJVAyGÕT=À\0\0T\ZŸ‡ß~yèİ#¿ÿ¹¬Ø;<%¿½›ª`\0\0ªYétGóËÙùåè²çl“­*\rP\0 RyÏî…YqHt¥˜¼·ª`\0\0ªÙe×ÒÄã}óğk,@\0\0 ªİPv}nÅcqZ¤+RùB*KUPMÌ\0 ÒÜfîÓ “Ê«y€\0\0@Ué›Êü¼ü{Vœ‹^]”éù`\0\0:¡ùå;³âù~ÿšçü\n¿€\0\0@‡rIÙõş©<’ÊQ©‘ÆªWE@µ±\0\0-Q—ÊÍyùFV\\@\0\0 ÃŠÅ¯F¤2DU\00\0\0ÕîÙ5<½ÁS²âÜ`\0\0€ª5±ìz¯<ìVš\rÀ\0\0T¹>e×cÕçXğª¶â9{gÅU¡ª†U \0(=¾¿ÈŠ§=\n1zÿ<ÿ4[1<ú¼Tş+•™ª€\0¨F1¿÷YqˆsšÊã©ŒÍŠ_œÊ¢TÆ	¿@µ1\Z\0€JMu’l™‡ã²âèGTĞ¾Ü\0\0èÜ––í+>”Ê6YqÅç»²âé8ÒWRù‰ªª‰`\0\0*–Ê%©\\˜ÊY±ç÷à¬Øó{Mşœ»òÇ\0ª†`\0\0*]›­<xr*ä·ïÍ/gg«®\r \0\0PUb¸sÿüú{RÙ-+Îî›‡C÷Í«SU€\0\0@µàÒ~âs©ôËŠó~û—]Æã±\nôxÕÀ\0\0T£=RÙ9•ùYq1¬Ø_¬Ï¯Ï¬Ø¬W]@5±\0\0å¦¦òÕTnÏîÇ²½½å\"ÏU]@5Ñ\0@S\"ÜŞœ—~y\0®Z\0\0€*æOT\r@G`4\0\0•ÊŠ]í›Êy©ôIeoÕT;=À\0\0Tš˜à#S¹#+úèÛYqa¬,¿ì›ÊŸS¡º\0\0€j´excğãù}SR¹;[18.wË`\0\0ªXÛöÜ+/u©LÈ+İeNƒÀ\0\0T±GR9.+î›­¼òó6e¸NU0\0\0Í©|$¿¾OVìùıÈ¿§2Zõ\00\0\0Õ*†:?›‡>˜{¿Z¶ÿ¸TÕÈi\0\0¨=¼ä×gg+ÏõíŸÊ±ª¨Fz€\0¨44+.r=Á#³«A—Ä0èX-ú:UÀ\0\0T«½·g+ÎùûÃlÅ*Ğ\00\0\0FåêÎ³U	ĞQ˜\0ÀêLU€\0\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0À\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0À\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0´İT\0\0ëjàÀß¨©©¹¬™‡¿9hĞ o–ß1vìØ\Zµ´=À\0\0¬ûÎd—.“Õ \0\0Ğá3f|ccãü>}¦\Z`\0\0ªÙí-yR\nÊãU \0\0PµR°·†Ç—ÆeMMÍ-j€\0¨Z›nºéÄt1·¹ÇSğ…WçÎ={¢Ú`\0\0ªÖèÑ£ëÓÅ=«{Nccã]&LXª¶\0\0€jwC3ÁwYa§³K—;T \0\0Põbxs\n»u•÷×ÔÔtM3gÍšõ€Z`\0\0ª^oNawtSÅêÏ†?0\0\0F\nº÷VÜÕ_şNí\00\0\0Æœ9sâ<¿s*ö5ç644Ü£v\0\0€#æüÛŠ»ÇßvÛmuj€\0èhVZ\rº¦¦ÆêÏ€\0\0@ÇS[[ûPùí={NP+€\0\0@‡3zôèút15®×ÔÔ<ŸnÏW+@{ÑM\0\0´oµÓ¦M;½®®nÈ›o¾¹û¢E‹j\Z\ZÚíû3gN6iÒ¤lÿı÷ßõ‹_übc{}Ÿ) 7öìÙóµ=z<¼dÉ’ıúõûƒÖ0\0\0m$ß¯<òÈ#WÖ××oÚ§OŸ,Êæ›ouéÒ¾òwÜqí¾n\Z\Zjêêê¶Y¸páá³gÏ>øüã?/^<äĞC¢åAÇd4\0@;5cÆŒ»^xá…o½õÖ›~èCÊvÚi§l‹-¶h÷á·jv„S=öîİ;ÛqÇ³8 Ç»ßıî}¢7ø÷¿ÿı‘j`\0\06bøMåÈ½öÚ+Ûa‡b¸®JieÛo¿}¶Ï>ûl’‚ñM<ğÀj`\0\0ZY{~şùçÜ}÷İ=”•Şª›“Íœ|Söô¾•=õûK²ş\"«_ø’ŠÛ\06Ûl³ìøÀæ5557İ{ï½{«èXÌ\0hGbÁ«˜óÃ›¿/>úóléÛ‹–ß÷æ¼ç²“®ÏvÚÿä¬¶÷*q„à¾}û6L›6íêtó“j„–8pà7jjj.kæáo\Z4è›åwŒ;Ö°6 \0 ‰ÕcÁ«Û”y/üi¥ğ[Ò°ìílî´	*pÙqÇ·êÖ­Û{ï¿ÿşÕ-\nV]ºLV0\0\0k!Nu+=77çwñj†:Gï0ÎvÛm7;]£&h‰1cÆŒollléy¯gª1\0 Ó‹óüÆJÏÍi\\¶¤ùnlPĞ6ÛlãÉû«	ÖÂíkx¼®ğ§ÚØ8^U	À\0\0Ş¢E‹jã<¿´½ô9¼+]ì«&h©lÇ­á)…¡555·¨-\0 Ókhhpßö²£\\ü,\ZK‹mºé¦ÓÅÜÕ<e³x|öìÙÕ–\0\0À\ZtßäÍ>Ö­§chK£G®O÷4óğâø§±±ñ®	&,U[0\0\0k°ÕNÿšuë±Ù*÷wí¾I¶ÕÎıT´½šº3ßBöêÒ¥ËªH\0\0 zm»g¶Ù6»7yÿæÛí¥‚ Åğævß¨¼¿¦¦¦gº˜9kÖ¬Ô’\0\0@-[²x•û–¾õ†Šv †7§°[Ùüvü«?ş,\0\0Ğo/z5›1éú¬îÕ®òØ¢×Éf<òß…ç\0m+İ{›yèwjG\0\0`\r¼üh\n¿×eo¾>­Ùç¼9ÿ…lúÃ?Î^Ÿñ—´îœÀĞVæÌ™çù}¥ì®©Ìmhh¸GíÀ\0\04#zt_|ì†lÖ?~•-}{Ñ\ZŸß°ìílÎÓÿ›½øè/²ú7f©@hù0çÿ­¸{üm·İV§v`\0\0š=º1¼ymEOñû©\n„¶³Ò<àšš\Z«?À\0\0¬Nôè®«Ækí@[©­­}¨üvÏ=\'¨•¶×M\0\0´_{ü•\0UhôèÑõÇü¬†††wuéÒåÕt{¾Zi{z€\0\06°‹/¾xp÷îİß¹õÖ[gérëóÏ?¨Z€\0\06¤İRÙ²-ßÀğáÃ™1cÆMgyf—ıèGÙÙgŸİeÎœ9×¥Ëã}<mËh\0\0 =é›ÊĞT¦¯æ9{¥ò\\*?ÉÃî6©”Oz¿)•3Ên‘Êu©Ô·ö›ß_|ñæ3Î8£Ë?øÁÂ}ûì³OvÖYgu½êª«nL!89rä/}ÌmC0\0\0ĞŞDøİD¹+¿ü{*ãóçFğİ1•½S9+¿~e¤ÿ;•ƒS™’Jmk¿éK/½ô¤¿§Ÿ~úòğ[òş÷¿?6lX××_ıÆÓN;íh±\0\0\0Pr@Vì	./×¤rlÅó¢WwB*÷¤R—‡İ¸=;+Šèºü¾ƒ[;üNŸ>ıçguÖ*á·$z‚¿öµ¯u­««wâ‰\'é#€\0\0Â#Ùª=ÀŸOåöŠçõÏÃñ°¬8,úˆüöYqÊçWòûzµbø=¡~#ä®NôŸsÎ9İÓÕ[O:é¤Ïø˜`\0\0€pafÎƒîo³U¸z Ç‡–İ½¿Óó=­¥¡ÓÜ°aÃš6mÚ\r1ìyMá·<ıë_ïÑĞĞpçàÁƒó1À\0\0\0İòà\Z!wBVìnÉùtûdÅ9À}óÜ*çàßùóçß~ÆgtmnØóêBğğáÃ»wëÖíÎá£€\0\0Ê-[ÍcõÙŠ^ß‡òÀ<¡µÂïE]4dúôé7®Kø-ÁçœsNm=n‚`\0\0 s‹Óõ/+«sGVÃŸw,»ÿ¯­~gÎœyÃê¼j©6=|øp!X\0\0\0:¹/e+zr£\\ÒÌóbğÄ¬8xjV:sk§§29•od«Î^\'1ì¹~[:çwMòáĞµİ»w¿ÕœàÖÕM\0\0\0íHùùz+‡/GÏnßTvÏqØ7+Îù}¶ìùãóûÃQ©ÜœÊy ^g¥¯Î8ãŒåáwşüùÙW¿úÕU{õÕWgÛn»íòÛo¾ùfvòÉ\'¯ò¼k¯½6Ûj«­\n!øÜsÏİäòÚİUŒ\0\0\ZOIDATË/¿#…àcÆŒ3^SØğô\0\0\0íÍìfîŸ™Ïé;\'¿vËŠ«<OÏïs_’ß½sóç½>o¨¹¯¶ÜrËB\0ŞtÓMW„¬.]²Ÿüä\'+ıüÏ~ö³¬{÷îËo¿ãïÈ†R¿%ùêĞ›¦Ÿ¿İph\0\0ªB\n/ª…uC˜W×û½¼£RYšßó×å×ãş3ò\0exVìıÍÊ³.á÷¤Õ-xuĞAeïz×»–ßnhhÈ¦M›–=òÈ#…ÛO=õTöä“OfK–,)ÜîÖ­[Ö»wïì°ÃVí=Ëç{n¬=V€\0h%±Ó¾6êêêZü3ÿûß³¥K—®ñyo¿ıv5‡Ş½S™Ê3555ÿ§Euyøıùš¼:ıôÓWê^¼xqvİu×eo¼ñFvÍ5×†@—Äó¾üå/g]»vmòµ>ğô(…`s‚`\0\0ZÁ\r7ÜİvÛm-~şÿøÇì[ßúÖJ÷7®Œ+E˜={ÕQ­¯¿şúJ·O;í´lâÄ‰+İ½k/¿üröê«¯f¯¼òJ»ª³AƒõÏCï¬zŸLeX*»iMÃÅ_<¸~×´àUŸ>}\n=º›l²Éòû\"ô~÷»ßÍ.\\¸ü¾Í7ß<ûèG?šíºë®«}½ÁÃ‡ï’ŒÑ¼áX\0€‚˜·øéOºÉÇfÌ˜‘=úè£…ç”Äíğë_ÿz¥×xñÅ½^Zãö¢E‹²yóæ_ú™’Ü—\\rIö÷¼§¸sÚ­[Ö¯_¿B0~ì±Ç²O~ò“Ù^{í•m¿ıö…CH›Zphc\Z<xp¿ÆÆÆéêá©ìš¯ÆÓ¥ğyLj÷7•/xµ&ŸûÜç²|°Ğû¢½ÆßNj/+XjãhÑë¥ß»É9çœÓ0bÄˆ_¦|ü¸qãîñÉÀ\0\0l\0±šm„×=÷Üs•ÇvÚi§B¹üòË³=öØ£ÉŸ¿ùæ›³[o½u•ûcøgô‚í¸ã«<öÙÏ~¶p=»1_2~,½h\"Ş÷¾÷­Â+{œ7†¡C‡ÖÖ××ÇœŞ“R9\"…™m´–-z~óğÛumÎóCšÓÏdW\\qEáÀO(¿±`Ö¿øÅ•†J¯É~ûí·Ù¹ç[—şö„`\0€\reúôéÙ3Ï<Ód\0.‰`Z\n­=zô(\\–òùío»Êó£\'7‚ìO<±Jïï7ŞX‡~x¶İvÛ^çÄOÌî¹§¸C¦ŸşùÂõX@(‚EÌ9.ï…nMO?ıtvÇwd)ü.^—Ÿ4hĞ%ZUõÙ~ûíç¿øâ‹WFÏïÚ„ß’İwß½°šóÃ?¼Òùh·qè€Xë×ÜgŸ}z\r>|^\nÁ·<x S$	À\0\0¬§vØay¯Usâ”-¥!Ï¥@[Z¸êĞC]åùÑû{î¹çfµµµ+İ¯öãÿøòû\"ä†şğ‡…ıøãBCôšÅŠºQF\Z•İwß}…a¤­íÎ;ï,ôŠ¯‡ojUÕ\'†îÇT€u	¿%qz£¿şõ¯+İ=ÁG}ô:¿æ¾ûî»U¿~ıfşéOúíĞ¡Cß1zôèù>-\0€uLÅiY¢Ç*±êÕ«×*Ï™9sf¶Ùf›5û\ZÑ[\Zs%wÙe—Âí˜³›vÖc8éJÏ;õÔS³‹.ºh•!Ñ&L(ÙsæÌÉ:ê¨Âı¥ç½Ì#ü†ã;®¸,XPùPtëµ¤úR-«úì´ÓNo¤¶xyjË-û[é—¿üesÃË‡?ÇÁœ»ï¾{¥aıkã±Ç›3qâÄŞéu?-ü\nÀ\0\0¬‡X:NËÃšñ‹_¬²ĞT„ßè‰=øàƒW¤À|xg,Tî½÷ŞB/nèXôêÈ#Ì&MšT¸/zoË•ÄŠyÃÇ|!ìF\0àıùÏ¾ğœúúú6Ü¹)±Jï±Ç›İrË-›,^¼øà<¢‹;Rù-	ÃcÇ½DËªNçŸş‹#Gsæ™g®õ0è8çoù¯<EØ²eË²^x¡0×}m‡AGø½âŠ+6I¯yÂ¸qã€\0XWÏ=÷\\!xF\0\rİ»w/œŠ(Vc.‰UcNl¹©S§.K?7kÖ¬ÂëDh-Úó!£”D(õê–.#sÌ1…y“%qš¥ÊÑç	=zt}ºˆ‰É÷ôïßÿì>}úÕØØxh\nÄ‡•‡átß[é¾ZTõûŞ÷¾wë°aÃŞ¾æšknO—][Ú!÷G?úÑJ§+ï	Ñq€)z[ºVúÛ˜sÕUW•Â¯°`\0\0ÖÕk¯½V8wïùçŸ¿ü¾SN9¥p>ŞØ™/ÙX+vŞcaªR¯lôĞ†ÒÎş{ßûŞÂ\nÑqÊ¢µÕTØ§>õ©Uî‹!¤miÂ„	KÓÅíy)œ8]“ÊaÎÿÛ±Œ\Z5ê®~M—··t5è_ıêW…sÿ–ÄÁ¤ø{ˆyÅqJ¤—±ZúĞ¡C×øzO?ıô¬‘#GÖ\n¿0\0\0ë©4T³<ü–¤îÂB>±\"s¬Ì=¸x`á±è…¡Ò17Âpièò¹ºMYºtiágârMzè¡ì÷¿ÿı*C ›˜Û¦Æ;!rq\\8p`TĞÉ•=ÃTw>í´Ó»úê«Çyæ™İW‚ãàĞøñãW\nÀ±jú\\}ãß(L1š\"Ú÷ATfßœö<bÄˆ-\Z…_\0€õñÏş³0¼8zjJÜè¥ŠúÊÓ\"Å¹zc^ïe—]VXøjuÊWsıÆ\nÏM¸¤4œ:Âv)p—‹á£íU\n)Ev×º:–k¯½öÎÚîoÎ:ë¬Í…à8uùıâ§ùÚ|óÍ³ÓO?½píÒ¨‰85X<?ş†âÜÁM…ß˜ó›®0fÌ˜»|\nNWU\0\0¬‹½÷Ş»ºˆòà”)S&¨‘\rãÄO¼dçwnõß³í¶ÛÎ½»&»í¶Û*½°±JsuşÒ—¾´<°6§Ô;\"rÈ!ÙG>ò‘fŸ¯Î~ûí·Q?˜¯|ÓM7YÍ¹“ûûßÿşüûŞ÷¾G&MštìN;íÔí]ïz×JÇœù˜³şÖ[o­ô·sÂ	\',ÿ{‹…àb|Ìé1\Z\"ÂoL(s~¯¼òÊÂœß±cÇşZíoX]T\0\0Àê3f|\n¸G\Z5ª>ÎQ]çŠ¾öÚkW9‡v¬ª^.NÿU¾¨[‰¾ñÆ—Ñó^¥«\r{n†@\0\0´00à?®¼òÊÿ6lXm‡Óƒ¥û×ø³1$zuÏ+­öá7~Únz€\0\0ZèÖ[o}à­·Şúè	4iÒ²\rñš~GÙ#†=¿0\0\0@{Áo­o.\r{^¶lÙ‰†=À\0\0\0í2§ĞzL„àÉ“\'¯Sß|µgs~`\0\0€ö+†+G1bD‡~{m~¶|Á+Ã`\0\0€ªÁK–,9jäÈ‘KZ\Z‚Kçù5çW\0\0\0¨*1:BğUW]õö#<²huÏ}úé§g1bótõ$Ã`\0\0€ªÁÇ9²æÑG]ØÔsbÎï¥—^Z›=¿w©5\0\0 *Åpæ¥K—yå•WÖüío[)—¯ö,ü\nÀ\0\0\0U/z‚SşÜ¨Q£j~øá×Ká·4ç×°ç¶ÕM\0\0\0lØ<`À€Áwî°Ã_zé¥ÍRø,ü¶==À\0\0\0­‚ÓÅİ3gÎì—Â¯\0\0\0Ğa566>[~‰\0\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0€\0\0\0@jU\0\0\0ĞQuKeËTMeP÷JåÇùs€\0\0ªÖ)©ì›Ê„²À[nH*W¦2_UU‡nª\0\0\0 IãS9\"ÀÑË{*3óò»üñ!ùíÑªK\0\0`-téÒ¥±¡¡¡&]ªŒ6–>‡ÒÅj¢ÓûL*K³b/ïOóû¦—•ï¤r¡jª’ïXU\0\0Ğ~ÔÖÖ¾òÆo¨ˆvàõ×_Ÿ’.&«‰Nï©<ĞÌcÃR9 Ó±(\0\0°öºwï>qÁ‚*¢˜={öÂlÅÜO:Ÿò<2¿şl4‰üúÒü²o*SSyDU	À\0\0¬ƒúúúËgÍšµ¤±±Qe´­éóæÍÛ\']Ş¡*:u\0¾(¿Ş\'ş<óë¥ ó~Çç×·P]0\0\0ké ƒz8…ß\'^~ùe•Ñ†¦L™rú^>äCRÖôTê²âà¯”İ_êŞ;•kRùv*sTWu0V\0 ©¯¯2}úôI›o¾ù¦½{÷V!Ùÿoï~c¬*ó;€?g†ÈH ²lm‰.KÉÚ*Ã¶ºT¦•¢6ì–íÒÌÎ¾è¦±¶İššF}[7ÁMkV·İl!w6ì®XQ¨qÍÙXéÊ…­©h\"Œ³hp¬3÷öyæŞ‹·tF˜{ÇÏ\'ùyî9÷Ü“ÉïøÂ¯ÏsÓÓÓóDww÷—\n…ÂïëÑöX[b-Õ>\Z	~\"”^”Ö¦ú`\0 ÆÜrË-¯Æğõ‡û÷ïÿÅÉ“\'5ä\"‡ßW^yåú,Ën÷aŸJ£ÀÿzÄº-ÖWÊµ!Ö¬PzM’E\0€óµhÑ¢gûúú–íİ»÷ä›o¾Ùí™àQ×¹oß¾5/¿üòüøù¯cÿ·h	ÑñPZäª)|4ò[‘¦B?[®Z%\0\0p!¸¿¿~ggçÏ^xá…·_{íµİï¼óÎÑB¡PÛ‰áøñğøãlkYzÏï‰\'Ú¿şùçŸ?Õİİı¹4íYø¥Ê{åJáw¨çÁ_\rC¿&‰\Zc¨\0 †¥éĞióÌ3ÏÜĞÕÕõÕXÍ¡´:mS­şÍ»ví\n»wïsçÎ­åö~&ÖÛ±ş+Öw-xÅ Ò{~Ï|tzŞ·oÇ€\08‹/Ş3Èˆ×¤\\.·2nVÄüÍ»ï¾{¥»Gût(½ï·Ú™û×ÅJ/ïş–v	À\0\0\0õêõXëCi¡«45~°g›cY0M\0\0\0¨{é‘ƒ¯–ğÖPz-RÅÊPšş|\\›`\0\0€z×Sz¥áäOËÛZT?¬\r\0\00¸^-€\0\0>	jÁØb\n4\0\0ÀğÌ¥ç~“/„ÒsÁÿ€\0\0ÆŒÊ*Ï+µB\0\0\0‹f‡Şû;ûcÎKS¥·i—\0\0\0P¯6#35ÉU0\0\0@½;¬c‹U \0\0÷ÈÇ\'j\0\0\00–äØ‚XOj\0\0\00–ì8cr¬»b}Ek`\0\0€±ìk±nÕ£0\0\0ÀX’Vx^J‹ÏŠõ³XÇµ¥~Y\Z\0\0`pSËÛÇCiá«ÎXwrŞOc­Õ.\0\0 ­Õë¾XcíÑ’úe\n4\0\0ÀÇëõ·±šCi*40\0\0À˜ö`97i…\0\0\00Ömˆ•Ó\0\0`,lÅç4z_0\n,\0\0\0Œ![†8^‡Ô§=0\0\0À\'\0,\0\0\0€\0\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0À\0\0\0 \0\0\0€\0\0\0€\0¬\0\0\0À\0\0\0 \0\0\0€\0\0\0\00\0\0\0\\lã´\0\0\0àÂ´´´Ü“eÙª!¾^‘ËåVThooÏtíâ3\0\0p¡Áª¡a.À\0\0\0c^>ŸßV,{†yúa€\0\0êV–e?Îy1(oÓ-\0\0 n\n…üY‚ïå ¼Q·`\0\0€º5aÂ„qÓ=Ô÷1ø›ãGİ¡[0\0\0@İZ¿~}oÜüÛ_Ò?ŠÅâæ>İ€\0\0êİcƒŒÁw \0744üH‹`\0\0€º—¦7Ç°ûŞ™Ç³,7‡»ººÕ%\0\0 î¥éÍ\r\r\rÿrÆáÊôçm¦?À\0\0\0cF¡PØZ½_™şıDw`\0\0€1ãØ±cé=¿Ç+ûåéÏÇc0Ş¢;0\0\0À˜‘¦9ÇĞûïgŞ¶iÓ¦÷tG\0\0\0SŠÅâÚêıˆ­ş,\0\0\0Œ=MMMÿQ½?~üø]¹ôÆi\0\0À…kkk›Ö××·4Ë²…½½½7„ÒêÏiĞ±÷w·´´ì‰ßı´±±±}ãÆ‡uL\0\0\0¨+­­­Kãæ…Bá¦p/ä”,ÖŒøİŒ¸]Úßßÿ÷¹\\®#î¯ËçótP\0\0\0¨i1Ä¦Pûh±X¼å<~Ş×¯qGÄ_ß´iÓ€\0\0jNKKK®¡¡au¡PøTåXccc˜={v˜?~˜5kV˜<yr˜4iR8uêTèéé	açÎa×®]áÃ?¬ülAüİîÖÖÖ¿4\Z,\0\0\0ÔZø]Ãï†~+Á÷¶Ûn‹/W^yåÿ;Â„	uÕUW…o¼q ?õÔSaëÖ­¡¿¿?2±X,şkÁM1¯ÕáÑch\0\0€á‡ß4ò»9Öğ›BíªU«ÒXƒ†ßÁ¤‘át~úİôéÓO×\\Cğ×tY\0\0\0¸¤Ò3¿«+á÷šk®	+W®ü?!ö\\¤ß¥ß_ıõÕ!ø‘‚]·`\0\0€K\Z\ZÖVùM#¿wİu×À3¾\"M¾óÎ;«Ctš½F·`\0\0€K\"½ê(†ß›ÓçôÌo\n­\Z~«CğòåË®[¶ÀTh\0\0à¼är¹gc¨\\ÕÜÜÜt—øFåCZğê|§=%]oÉ’%§÷‹ÅâîÚÈ³\n4\0\0ğIps•7O:õ†ÆıµY–­ÉçóÇÎöÃ¶¶¶i…BáwÓçÊŠÏ£áÖ[o\rO?ıtåIÒ3Çííín\0\0\0p¾>ë¾ˆÿ.†Ì0¿ßÔÔôğúõë{;¹¯¯oiËó“çÌ™¦L™2*TZzîÜ¹áÅ_¬ZëÜ.\0\0àBe±>—Âpooï}1¿ƒî¦®®®ovttô>)ËV>Ï›7oTÿ tıª\0¼P\0€\0\0FÃ¯‹Å{¦Nzwkkë‘øù{id8†ã*\'Ìœ9sTÿ€3fTïŞà–À\0@mY‘ËåtjÍUÿn4ku(‹áwZ(W‘¦)¦3®ÿËn…\0\0Ô`Ö†°PKFêÕGCI¯DªÒ¤ã0\0PÖkƒÉ²lr±X4u“Z3\"ÿ3æİwßÕ|êÔ©êİ^·M\0\0j@ùÕ+u¨¹\\®8Üs‹Q–eGbm?~ü·{{{ÿ3•¾ëééÕ\0œ®_å¸;\'\0\0\0Œ´ÓÂW?˜8qâ?®[·î`UxŞS	Ào¼ñF˜>}ú¨ıÕ»{Ü\0\0`¤Bïë1ô>qùå—k¨÷\0Çï·gY–ŞÉvîÜ.½GÛÓõ«lw‹`\0\0€óK¼¥éÍGc=6aÂ„G«Gz‡MãÆmîïïÿNú¸wïŞĞİİ¦L™2â[šşüÒK/¥P•ıĞ€\0\0ÎÕO\Z\Z\Z^»ì²Ëîj¤w(7n<ÜÚÚÚ³ó¢„ÃÖ­[C[[ÛˆÿÛ¶m}}}•ğ»£¼Ö0\0\0ÀğÅ0¹è/ñO±®‘ğM7İ4¢Ï:t(<ùä“§G³,û»6ò\Z´\0\0\0àãåóùÍqÓ‘>§Qà|pà•H#!½úè¡‡ê/\n§G»ººÚu]\0\0\0¸T¾Ê¯&zë­·Â<pÁ!8…ß¦‹Gi,z/Ë²Û;::ú´{ä5j\0\0ÀÙíÛ·¯çºë®;êÒ¸ÛpâÄ‰´hU¸öÚkÃW\\qÎ×KÓï¿ÿşşœ˜Œ×ş³|>ÿœnÀ\0\0\0—Ôşıû÷Í=ûPü¸$…à4üÜsÏ…÷ß?\\}õÕ¡©©é¬×H«=oŞ¼9¬^½ºxòäÉÓá·X,ŞÛŞŞ¾Z—GO¦\0\0\0ç¦¥¥%7dY6¹r¬±±1Ì™3\'Ì›7/Ìœ93L<9Lš4i`šs\n½#Æ±\n|ğAõã¨ïÅZÃïz€\0\0jN.—›ğšôz¤¸ÌôÌo>ŸUG`\0\0€ZÂËbˆ½#áæ0üWÍîˆµîèÑ£,x%\0\0\0Ô•¶¶¶i…BaYÂ_Œ»¿kj¬ôPpo(­½\'ÖöX?looïÔ1\0\0\0\0\0\0\0\0\0\0àâjäØo\rãwiŠô§µ¯6n\0\0\0g·nc+†‘³~/Ö/ªö¿ •Ç8-\0\0\08g¿ke¬ÏÆº*Ö¯–§ğûåXÍ±¾ë­X«PõÛi±–TíOŠu8Ö1m]F€\0\0Î]Zİù`¬å±ŞŒµ¹\\o”·w–?§ \\Î^ÿS®«>ÿF¬-ÂïÅa\0\0àÜ¤Ñß?‰µ Ö?Çz;ÖÂP\ZåM£»¿JÓœ¿]ÀÉ§ÂGS¦gÄzºüùó±ŞÑR\0\0\0jÕ„Xó«ö)ÖÄ3ªzÀñoª>ÿUÕç?×Ê‹Ç0\0\0À¹IÓ™ïõóPš\n½½d^uÎÌXWíÿJ(=üÇ¡4JÜJÏı/ç²>m\0\0 }¾¼½,”F>ãû‡ùMš:ı¡4œ¦LF/.‹`\0\0œ»4j›F}Ó³¾\'‡q~\ZıM#¿–÷Ó¨qzgğR­¼¸7\r\0\0€áK£¿_ŠõPZÉ9”Ãí`a6½é‹±öÅúïò±Ê@dZ-:çc­Šõ²Ö\0\0PëşèŒı/—·Wrîí\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 Fü/á;©~\'¤\0\0\0\0IEND®B`‚',NULL);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='ä¸»é”®ç”Ÿæˆç­–ç•¥è¡¨ï¼ˆå¯¹äºéƒ¨ç½²å¯¹è±¡è¡¨çš„ä¸»é”®IDï¼‰';

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('cfg.execution-related-entities-count','false',1),('next.dbid','5001',3),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²èŠ‚ç‚¹è¡¨';

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values ('2503','holidays:1:2514','2501','2502','start',NULL,NULL,'å¼€å§‹','startEvent',NULL,'2019-12-09 09:57:42','2019-12-09 09:57:42',3,NULL,''),('2504','holidays:1:2514','2501','2502','yuangong','2505',NULL,'å‘˜å·¥è¯·å‡ç”³è¯·','userTask','guan','2019-12-09 09:57:42','2019-12-09 09:57:42',391,NULL,''),('2509','holidays:1:2514','2501','2502','jingli','2510',NULL,'ç»ç†å®¡æ‰¹','userTask','jingli','2019-12-09 09:57:42',NULL,NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²é™„ä»¶è¡¨';

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²æ„è§è¡¨';

/*Data for the table `act_hi_comment` */

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('2507','event','2019-12-09 09:57:42',NULL,'2505',NULL,'AddUserLink','guan_|_assignee',NULL);

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²è¯¦æƒ…è¡¨ï¼Œæä¾›å†å²å˜é‡çš„æŸ¥è¯¢';

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²æµç¨‹äººå‘˜è¡¨ ';

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('2506',NULL,'participant','guan',NULL,'2501'),('2511',NULL,'participant','jingli',NULL,'2501'),('2512',NULL,'candidate','jingli1','2510',NULL),('2513',NULL,'participant','jingli1',NULL,'2501');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²æµç¨‹å®ä¾‹è¡¨';

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('2501','2501',NULL,'holidays:1:2514','2019-12-09 09:57:42',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²ä»»åŠ¡å®ä¾‹è¡¨';

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2505','holidays:1:2514','yuangong','2501','2502','å‘˜å·¥è¯·å‡ç”³è¯·',NULL,'å‘˜å·¥å¡«å†™è¯·å‡ç”³è¯·å•',NULL,'guan','2019-12-09 09:57:42',NULL,'2019-12-09 09:57:42',383,NULL,50,NULL,NULL,NULL,''),('2510','holidays:1:2514','jingli','2501','2502','ç»ç†å®¡æ‰¹',NULL,NULL,NULL,'jingli','2019-12-09 09:57:42',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='å†å²å˜é‡è¡¨';

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('2508','2501','2501',NULL,'holidays','integer',0,NULL,NULL,9,'9',NULL,'2019-12-09 09:57:42','2019-12-09 09:57:42');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='ç”¨æˆ·ç»„ä¿¡æ¯è¡¨';

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='ç”¨æˆ·æ‰©å±•ä¿¡æ¯è¡¨';

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='ç”¨æˆ·ä¸ç”¨æˆ·ç»„å¯¹åº”ä¿¡æ¯è¡¨';

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='ç”¨æˆ·ä¿¡æ¯è¡¨';

/*Data for the table `act_id_user` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='éƒ¨ç½²ä¿¡æ¯è¡¨';

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`KEY_`,`TENANT_ID_`,`DEPLOY_TIME_`,`ENGINE_VERSION_`) values ('1','Default Dataset Process',NULL,NULL,'','2019-12-06 01:56:12',NULL),('2511','è¯·å‡å®¡æ‰¹æµç¨‹',NULL,NULL,'','2019-12-09 09:57:08',NULL);

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='æµç¨‹è®¾è®¡æ¨¡å‹éƒ¨ç½²è¡¨';

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('5',11,'è¯·å‡å®¡æ‰¹æµç¨‹','123456',NULL,'2019-12-06 02:10:31','2019-12-09 09:57:09',1,'{\"name\":\"è¯·å‡å®¡æ‰¹æµç¨‹\",\"description\":\"\",\"revision\":1}','2511','6','7','');

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='æµç¨‹å®šä¹‰æ•°æ®è¡¨ ';

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`ENGINE_VERSION_`) values ('Default_Dataset_Process_Key:1:4',1,'http://www.activiti.org/test','é»˜è®¤æ•°æ®é›†å®¡æ‰¹æµç¨‹','Default_Dataset_Process_Key',1,'1','processes/Default_Dataset_Process.bpmn','processes/Default_Dataset_Process.Default_Dataset_Process_Key.png',NULL,0,1,1,'',NULL),('holidays:1:2514',1,'http://www.activiti.org/processholidays','è¯·å‡å®¡æ‰¹æµç¨‹','holidays',1,'2511','123456.bpmn20.xml','123456.holidays.png',NULL,0,1,1,'',NULL);

/*Table structure for table `act_ru_deadletter_job` */

DROP TABLE IF EXISTS `act_ru_deadletter_job`;

CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_deadletter_job` */

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='è¿è¡Œæ—¶æµç¨‹æ‰§è¡Œå®ä¾‹è¡¨';

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ROOT_PROC_INST_ID_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`IS_MI_ROOT_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`START_TIME_`,`START_USER_ID_`,`LOCK_TIME_`,`IS_COUNT_ENABLED_`,`EVT_SUBSCR_COUNT_`,`TASK_COUNT_`,`JOB_COUNT_`,`TIMER_JOB_COUNT_`,`SUSP_JOB_COUNT_`,`DEADLETTER_JOB_COUNT_`,`VAR_COUNT_`,`ID_LINK_COUNT_`) values ('2501',1,'2501',NULL,NULL,'holidays:1:2514',NULL,'2501',NULL,1,0,1,0,0,1,NULL,'',NULL,'2019-12-09 09:57:42',NULL,NULL,0,0,0,0,0,0,0,0,0),('2502',2,'2501',NULL,'2501','holidays:1:2514',NULL,'2501','jingli',1,0,0,0,0,1,NULL,'',NULL,'2019-12-09 09:57:42',NULL,NULL,0,0,0,0,0,0,0,0,0);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='è¿è¡Œæ—¶æµç¨‹äººå‘˜è¡¨ï¼Œä¸»è¦å­˜å‚¨ä»»åŠ¡èŠ‚ç‚¹ä¸å‚ä¸è€…çš„ç›¸å…³ä¿¡æ¯';

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('2506',1,NULL,'participant','guan',NULL,'2501',NULL),('2511',1,NULL,'participant','jingli',NULL,'2501',NULL),('2512',1,NULL,'candidate','jingli1','2510',NULL,NULL),('2513',1,NULL,'participant','jingli1',NULL,'2501',NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_suspended_job` */

DROP TABLE IF EXISTS `act_ru_suspended_job`;

CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_suspended_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='è¿è¡Œæ—¶ä»»åŠ¡èŠ‚ç‚¹è¡¨';

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values ('2510',1,'2502','2501','holidays:1:2514','ç»ç†å®¡æ‰¹',NULL,NULL,'jingli',NULL,'jingli',NULL,50,'2019-12-09 09:57:42',NULL,NULL,1,'',NULL,NULL);

/*Table structure for table `act_ru_timer_job` */

DROP TABLE IF EXISTS `act_ru_timer_job`;

CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_timer_job` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='è¿è¡Œæ—¶æµç¨‹å˜é‡æ•°æ®è¡¨';

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('2508',1,'integer','holidays','2501','2501',NULL,NULL,NULL,9,'9',NULL);

/*Table structure for table `process_dataset` */

DROP TABLE IF EXISTS `process_dataset`;

CREATE TABLE `process_dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®ID',
  `creator` varchar(255) DEFAULT NULL COMMENT 'æ•°æ®é›†ç”³è¯·äºº',
  `process_status` int(11) unsigned NOT NULL COMMENT 'æµç¨‹çŠ¶æ€',
  `dataset_id` int(11) NOT NULL COMMENT 'æ•°æ®é›†ID',
  `proc_inst_id` varchar(255) DEFAULT NULL COMMENT 'æµç¨‹å®ä¾‹ID',
  `dataset_name` varchar(255) DEFAULT NULL COMMENT 'æ•°æ®é›†åç§°',
  `priority` int(11) DEFAULT NULL COMMENT 'ç”³è¯·ä»»åŠ¡çš„ä¼˜å…ˆçº§',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¥æœŸ',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¥æœŸ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='æ•°æ®é›†';

/*Data for the table `process_dataset` */

/*Table structure for table `process_task` */

DROP TABLE IF EXISTS `process_task`;

CREATE TABLE `process_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®ID',
  `task_id` varchar(255) NOT NULL COMMENT 'taskid',
  `task_name` varchar(255) NOT NULL COMMENT 'taskåç§°',
  `proc_inst_id` varchar(255) DEFAULT NULL COMMENT 'æµç¨‹å®ä¾‹ID',
  `approval_user` varchar(255) NOT NULL COMMENT 'å®¡æ‰¹äºº',
  `approval_result` int(11) unsigned NOT NULL COMMENT 'å®¡æ‰¹ç»“æœï¼š1 åŒæ„,2 é©³å›,3 ç»“æŸæµç¨‹',
  `approval_comment` text COMMENT 'å®¡æ‰¹æ„è§',
  `approval_time` datetime DEFAULT NULL COMMENT 'å¤„ç†æ—¶é—´',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¥æœŸ',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¥æœŸ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='ä»»åŠ¡å¤„ç†è®°å½•';

/*Data for the table `process_task` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
