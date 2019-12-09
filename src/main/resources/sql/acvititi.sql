/*
SQLyog 企业版 - MySQL GUI v8.14 
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='资源文件表';

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'processes/Default_Dataset_Process.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"Default_Dataset_Process_Key\" name=\"默认数据集审批流程\" isExecutable=\"true\">\r\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\r\n    <userTask id=\"default_dataset_approval_task\" name=\"数据集审批\"></userTask>\r\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"default_dataset_approval_task\"></sequenceFlow>\r\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\r\n    <sequenceFlow id=\"flow2\" sourceRef=\"default_dataset_approval_task\" targetRef=\"endevent1\"></sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_Default_Dataset_Process_Key\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"Default_Dataset_Process_Key\" id=\"BPMNPlane_Default_Dataset_Process_Key\">\r\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"120.0\" y=\"230.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"default_dataset_approval_task\" id=\"BPMNShape_default_dataset_approval_task\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"200.0\" y=\"220.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\r\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"350.0\" y=\"230.0\"></omgdc:Bounds>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\r\n        <omgdi:waypoint x=\"155.0\" y=\"247.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"200.0\" y=\"247.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\r\n        <omgdi:waypoint x=\"305.0\" y=\"247.0\"></omgdi:waypoint>\r\n        <omgdi:waypoint x=\"350.0\" y=\"247.0\"></omgdi:waypoint>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0),('2512',1,'123456.bpmn20.xml','2511','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processholidays\">\n  <process id=\"holidays\" name=\"请假审批流程\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"开始\"></startEvent>\n    <userTask id=\"yuangong\" name=\"员工请假申请\">\n      <documentation>员工填写请假申请单</documentation>\n    </userTask>\n    <userTask id=\"jingli\" name=\"经理审批\" activiti:assignee=\"jingli\" activiti:candidateUsers=\"jingli1\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"zongjian\" name=\"总监审批\" activiti:assignee=\"zongjian\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"renshi\" name=\"人事存档\" activiti:assignee=\"renshi\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\" sourceRef=\"start\" targetRef=\"yuangong\"></sequenceFlow>\n    <sequenceFlow id=\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\" sourceRef=\"yuangong\" targetRef=\"jingli\"></sequenceFlow>\n    <exclusiveGateway id=\"hc1\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\" sourceRef=\"jingli\" targetRef=\"hc1\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\"></exclusiveGateway>\n    <exclusiveGateway id=\"sid-188B5A06-B469-463F-934B-920966143B88\"></exclusiveGateway>\n    <endEvent id=\"end\" name=\"结束\"></endEvent>\n    <sequenceFlow id=\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\" sourceRef=\"renshi\" targetRef=\"end\"></sequenceFlow>\n    <sequenceFlow id=\"agree\" name=\"同意\" sourceRef=\"hc1\" targetRef=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"disagree\" name=\"不同意\" sourceRef=\"hc1\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status==0}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"moredays\" name=\"请假天数大于3天\" sourceRef=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\" targetRef=\"zongjian\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${holidays>3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"lessdays\" name=\"请假天数小于等于3天\" sourceRef=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\" targetRef=\"renshi\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${holidays<=3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\" sourceRef=\"zongjian\" targetRef=\"sid-188B5A06-B469-463F-934B-920966143B88\"></sequenceFlow>\n    <sequenceFlow id=\"agree2\" name=\"同意\" sourceRef=\"sid-188B5A06-B469-463F-934B-920966143B88\" targetRef=\"renshi\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status2==1}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"disagree2\" name=\"不同意\" sourceRef=\"sid-188B5A06-B469-463F-934B-920966143B88\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${status2==0}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_holidays\">\n    <bpmndi:BPMNPlane bpmnElement=\"holidays\" id=\"BPMNPlane_holidays\">\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"90.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"yuangong\" id=\"BPMNShape_yuangong\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"165.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"jingli\" id=\"BPMNShape_jingli\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"345.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"zongjian\" id=\"BPMNShape_zongjian\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"810.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"renshi\" id=\"BPMNShape_renshi\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"615.0\" y=\"375.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"hc1\" id=\"BPMNShape_hc1\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"510.0\" y=\"175.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\" id=\"BPMNShape_sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"645.0\" y=\"175.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-188B5A06-B469-463F-934B-920966143B88\" id=\"BPMNShape_sid-188B5A06-B469-463F-934B-920966143B88\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"840.0\" y=\"395.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"846.0\" y=\"525.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"agree2\" id=\"BPMNEdge_agree2\">\n        <omgdi:waypoint x=\"840.4487179487179\" y=\"415.44871794871796\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"715.0\" y=\"415.12787723785164\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\" id=\"BPMNEdge_sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\">\n        <omgdi:waypoint x=\"860.0\" y=\"235.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.0\" y=\"395.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\" id=\"BPMNEdge_sid-1A8B86D7-986A-461C-B303-B336250C6A34\">\n        <omgdi:waypoint x=\"120.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"165.0\" y=\"195.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\" id=\"BPMNEdge_sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\">\n        <omgdi:waypoint x=\"665.0\" y=\"455.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"665.0\" y=\"539.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"846.0\" y=\"539.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"lessdays\" id=\"BPMNEdge_lessdays\">\n        <omgdi:waypoint x=\"665.4566210045662\" y=\"214.54337899543378\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"665.0911161731208\" y=\"375.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"disagree\" id=\"BPMNEdge_disagree\">\n        <omgdi:waypoint x=\"530.5\" y=\"214.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"530.5\" y=\"539.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"846.0\" y=\"539.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"moredays\" id=\"BPMNEdge_moredays\">\n        <omgdi:waypoint x=\"684.5489690721649\" y=\"195.45103092783506\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"810.0\" y=\"195.12853470437017\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\" id=\"BPMNEdge_sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\">\n        <omgdi:waypoint x=\"265.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"345.0\" y=\"195.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"agree\" id=\"BPMNEdge_agree\">\n        <omgdi:waypoint x=\"549.570895522388\" y=\"195.42910447761193\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"645.074074074074\" y=\"195.07407407407408\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"disagree2\" id=\"BPMNEdge_disagree2\">\n        <omgdi:waypoint x=\"860.4227642276422\" y=\"434.5772357723577\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"860.056679697426\" y=\"525.0001147357594\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\" id=\"BPMNEdge_sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\">\n        <omgdi:waypoint x=\"445.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"510.0\" y=\"195.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('2513',1,'123456.holidays.png','2511','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0C\0\0�\0\0\0�k��\0\05IDATx����]ey0�[L#R�)c3L&2`���P�a\n2|����b\n��&�Pd��S�0jm�2FK�j��R>iED���$@����4\n�\"\rK i�I���;��y7\'7�������{���yf���{�y��>�=��J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��-˲q�<���>��oW�Z��X�B�p�\\�2{���\'��2R>�g\0�P5TF��H�5k�d۶m�^}�U1J�}��l���/����R>�g\0�P5TV����%}�$��+V�xBV�g��\Z����ˠ��u\"O��e�|��\0��j�����k���d�|��\0��j��l���ͯ�f�<vS�ӕ��F\\��$�ė�B>���\Zڱ��kgO��{K���}�~��mV��g!��P�O\r���������)���r	+�峐�\0j�ڧ�vf�?���\Z&~�&a%�|�@\rU��ЎL��+>�0��6	+�峐�\0j�ڧ�J|!�峐�\0j�PC;%��L!�?n��_>����}jhG&�����0��6	+�峐�\0j�ڧ�vd���ِm����C���6	+�峐�\0j�ڧ�vd�Gl^w���IV�/��|PC�=5�s��W�M?���C���6	+�峐�\0j�ڧ�v\\�ǧ	?���\r���|�ė�B>��j�\Z�9��w�[7=���}�0�S�}�����Y�g\05T\rUC�:�����# �峐�\0j�\Z��vd�����	,�峐��z	���j(1���)$�ė�B>3�Ȋ� 7PC�PF��/��|n93�ؙ�u��Y^�j�\Z�ė��g�<V&��J�\0�Mz���j(_�#���X���w=rCn����H|�/��|n{3��Ԧ�\'\"7�j�\Zڜ,�ݰaâ�o�y��e�^Z�d��\\pAv�y�e�����_��_���O}��}�s���$�0y��B>��d��ɬU\0�!7PC��暠;�㖫����K/�4���G}4������ٓ���m۶��?�q�7K�_��_��o��o~�p�$�0y��B>d3�|W���#7@\r�54oz.�����W���j���od�~�������-zbΜ9�%�0y��B>���A<n�I�ܐ��jh�ՠqw�u��/Ζ/_�TT����.���ݝ�J$�Mmȅ|n���p=��\Z*:��F#��C���h��SOe����E�7V�/���#�ɣ|�y�w@�H?r5TtB\r��h����Ϸp��]����%�0y��B>�$u�vc�\n 7�j�\Z����5n�V�����;�h��&��Y��!LN�d���XP|mF��8/7�j�X��qָ�|�3��1B��w߽{޼y�H|a�(��|��1Y�Z����@\'��g�+7�j�X��w�y����ƽ��k��v���Ю��I|�Gr!�[b�[)޽�J1�Ioy�������r5t���X����g�����\'�����7y�!�y�5��֛��5�w����q\"rCn����\Z�aÆEq҄��B�Y^x��wޱ������+������g�ܮ9��dwf��z�ށNvk\'�v��rCN���^Co����7�xc6�����y3ty�$~��d1\0����)�Mۙ|��횓��t�7�mv�[��ۭ�\r�!\'����˖-{��G�f�?��/�D[�j�_�{�+ �M�iC.��s��d���@\'��&��r�[��`�+7䆜TC;��.Y����[��h3��/l˓kK\'~�� �M�tC.��s[�� \'�}Mz>���P�j�h�\Zz�d{���f(~^�X{Z=���\n�R��7yl�\r�|�ϭ����n{�I�P&���^ǉ�\r�!\'��N���\rH����Zю9$��|��{n��^7Ĺ�!u���yq�P\\׉���9s�F��h���&`����Ň>����n�]�-X��w#�2�{���de�|�Ϛ>}���Z��:����;wֽ���w��~����矯{���볗_~��s�ڵ���ۼys�q��a�}���^��L��K�[�l��>�֭��~�s�=��c�����������̇o����;ޗ��y�P3�נ��mrG�1En�\\n����u�gK��S�ܶ6���T|I����;\"��y|��;f_�,�wb��pdq�1��S�����������E�(V������&��i��h�\Z�抵���g?��1�?�x�|�駟VC���G?��H3�O�����n��m�И���6mZ�ϻ��۫�]}��M=�������~<O4(ѨDr�ر�z��_\\q��g�����^{m6y��쮻�~���g����{}��_�����?�3��?��>�f�����f\"�Z\\^�zu���������=��#�_��_������lʔ)��E�_z饽�y���6Zozӛ��.����<�Ic�;��>ΰ�\Z��,M.wU�q!�����q!�����J�ڿ���>5K���$�ђ�������W4s��Y��>��KߟU�r��*6���QSMɯ�x�x��������w����yn��籹���Sg�o G�����}�����o��\\��ڵk��?���}�K_�6-q�����}�r��ХK�n\Z��}�{߻�E�&�Hww���am��9�좋.�ƽ��[�.&���N�4)[�xq�iӦj���o�N&�������Ǽ��ل	�+/q��\Z�����f��zk�}�����\'�؛��}9������}�V����&��\\sMu\0\r��1yl�|hD�y���۷����X�j��x�+�O����;�<����e����e˖U�,w���g_��Wz��}�!�������>�ϫ\Zٜ»�N�\\�a�Lz��a��R�\0L,�Qj��5Y_�\"���Z�uw�;�ɍ�ʍ��׉�՞h�������N*5<�*5N3J��4X]�ۦչ-^�ǋ۲�g�]Z%J���1�h�.�cI)/����j�ʊU�CJ��J�G��Ј�GM�Wio6׮�����}o���>QG#b���lLuw������q�?g��+����>g��w��5�#i�c���6l�w�2��_�z���U�������{�A���������z�}��������I�[�������������r���w�l��rJ5���<�_>4\"�REC]���H�������~����{96��cq��dEns�1�-��KK����~����+�1�Rc?w8v����� �u��b�ᛵN���gɤf(&��,.�k�b�������w��	�Ur��r#��?.M�Q����B��I��]^|uie�:+�����h�f+/i׻���JMX�ҥy���y���K��h���yun���������s�ܝU|f*[��J����і54�\r��N�{�=(�.]Z����Mm3u2�\\��ʇF�yژ���w��K.��o��ƈ�Ln�ܹO���cۭ�G�G�D��\"��;5�6C��G\'���Xe�է�����.�՘H�XF��jZ*�\Z�.��*P�/�ծ��-Y�dп��c���@\"-�w�q�\rl��h�׬YS����:�z]���>+���f�J_+C/��R�����=�y��|�z9}��.�i�6��7�*Ů���nx��Q�߻����f\'�iw��m�Z�.&�ߪ��]��:+C�f��5�H�FJn�^n��iE�s}ͪO�cc���ۍ,vi[]4S��Viά������`E0��SJ�2G+BO����3\Z�����beh��}ܞ�W�����������U�;\\z�q�ĉ�]{������]���X˼�����x�v��5o�֌��cj�>�Gy�~���p(+C��nmѬD�K�q]������D�_�2g�������24����s���F?�5�\rgwVΕ���ꀕ�XQl�2��O��i:�G�X������;�Ӫ�xUJǮU�&�j\Z�t���7���m�:�fhv���b���>V����}jFq�/ˍ�̍�u��*�w{K����;Y��xW�?��o7��#��x{�*sY�[�r��x�Q}<�	��j3>\\i��\\_G�7C�������}��}\\�0��{]����1�k�G>�9���^�ա�s��}���{�f���L�H�`5C�� �8iA:qA9��@�V�R��&�麘�����1y��f(��\'�pBuK秞zj�rZ�O�\"��{N�yXo#[oC�����t�w�L��q�g���ش�f�eWjwKZPi��b�Mz�ob��՛���w��ٳ-���u&�1A�RZI�U�	���ˍ�ˍ�\ZrV��wzi��:��.��k+{wK�ɑu�;�`UqyR��qE�������\r~�����;�i�;3��RNgC�;ڶJo(����;�{c9j^̵b5)ͻ���kC\r��hѢ\r1�=����Xjr���m���W^9��P�m$N\\��ϟ_=s[:���������}�T��3VrҊQ���b�+�&7����s��r�R>{`�^4յ�O�x� �V>�ac��~�%�8bzlܯ���ʧ��]⯷!�ݷZ34������k3���q��ᙍ�&7��ow����ʾ]視�O�Yr�erc|��X]D�9����KM�����k���=]g,���E���h�b�������u��)�}g-<�N�N�}j��`q�f\r��f���l��\'O���*��b�U�qB�8#55i�U��N\r-�1<^x�z�4B��tW�3�vwwOm�B3l�P�۝��v7������՞�+���7���r�_>}w�f(v���K��\n�d5~Nܿ��jW�\Z���}L;���٢���f��Q3g���:�iP�O��q�c�☵8�v��G>���}�s�m�#��jh:�N\\����ݢ~�x���S\"�>n��a�*����P:YBWj�b� v������I�r��r#������r:�[yw�t\\�w���ԢI8��:��ı>k+���\\ܷ��٫K?wr�\Ztv�}z��E3��5\r�7�c���E����ץ���mkh�\r��mi�Jq҃�G��U>�!�7+�\Z�������jh�����[�h��۶m�F(q�?w��g�u���N��X���c�:ujv��W���9,q��<�*L�:V/��.�`��,�\0�3��,�{��8}w�X�)��;W:V����ci6>���fh����cg6C��-71��L�6�u���́[n����Y��r��K(�B��b�2���~�h�҆<�1��j�I�p�*��Y���\Z\ZoPW���S�5,�`:�u461�*��W3{���f������ͻp���k�(V�������XO�h\n�yh�<�Tie��SS�&�啘H���-�	��;�$��Ԑ�3{վ�\"v���\Z����sW�����H�������cc\Z�VF�*R�t�F�t���>����C�P)v1�(�a,��\r�&�`?X>�ͤ�]>P�����]͢�����,�7k��[�Fc�l(v�����!��G}����WCk��y���o�ۿ�Iv��?��M�k\\H|a�(��|FC�}�v�Cn����UC���s�Z�h��?���f>G����-o���%��1B��ц\\�綘�6��}��,��\Z*F���\r��)����-[�����������\Z�ba���/<���?_�r�w?��O�;o޼g�	�ՠv=k�ė�6�B>��fwg���ܐ��jh��&�m��ݗ�M��yl�cO�{X|ݒ��<.�%�/L峐�-8�=9�]���@U�j�PC%����Y>���b2;��۷���\r��\Z��\"�%>�Y>��U\0�?!7PC�P$��G>��17�5�En����H|��|��cn�{��.r5T\rE�K|�|kf�I~*N���@\rUC���,�ǚb�r5T\rE�K|�|6���\Z��\"�%>�Y>��\"7@\rUC��_>�l�\05T\rE�K|�,�	/r�P5�/�峐�&��\rPC�P$�ė�B>��\"7@\rUC%����Y�g^�j�PC%����Y�g^�j�PC%����Y�g^�j�PC%����Y�g^�j�PC%����Y�g^�j�PC%����Y�g^�j�PC%����Y�g^�j�PC%����Y>c�@\rj��_>�gLx���B\rm�V��p�{��]V�g��	/r5T\r��#��޺m�6I�����y�?!+�|Ƅ��\Z���������C���_�-�F����_�r�y|PV�g��	/r5T\r��#$�g���c��\'��xݟ���Y>c�@\rZ�XPC����\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0(� 7�X\0\0E�\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�ȃ�\0c\0y��\0c\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0��+��\r0\0@���\0(��\r��\0(�ȍ��F�W\ZW�|H�����0^��N\0�<����qz�Mq����:����<&�_�����q����cu��cF3��g�;����;Y\\L�������g�}.����E�ϞU|=�x܄:������<�*�G�y��\0yZ47R�&�Y1������4�����gչ����⶙\r~�h~�ǳ��\'�_P�~h?�����q�s�vJ�\0�V|}W��|$��y\\_4l�<��<6�g���$\0���B��v�՝I���y,,=�R��R�4�tyJ�uDq۴:�E��xq[V����rL���:\rȄ�mG�J�3��|��O����7cj���\0yF�9眓vCK��7��fc_(58i7�ˋﯮ�[*_4��\Z+9�f*�cqe߮w��\'���+{ww���/��e��X\\�Wz|jZN+\Z�$Vq���!I�͕}����g�sZ����܌�y���(�� �l\'\0E��ˍ��3�hr�������*�v��]�V��m�}��Y�Gm��J�Օh.b��z+<�\"�do-�;��1�]�ʻ��.n[�����V48��cb��,R�ϛ�㠶�:�I\0@��5����q���x��t�P�x��%���w��,Lm�P�.t����\'�\rո�9Ɋ&��\\k�O�Pj���i��7�N�cN(�6�f(|�b79�I\0@��%��X��c�b��-nb����wW���vme�j���``K��˓*��+J\'X(��/������4h�*��٦%\Z���� �㭕}+S���|޴�ݡ��N\0�<-�i�#va[]Dy2?���|6���/-�?�澱{��5ץ�e5�O.\Z��Es\r���}?R�ןRj����O��+����~�{H��3����..�̬�f�I\0@�gs#�x�i�o*.����T�Q�n�<�Z4;�T�}NP|�P���-.�3��oW�W�~n��x��+��]\\�y~S�q8�h�o��9���˟�4ϋ�$\0��#7�X\0\0y�\0�\"ψ�F���}���x����8�[�~�W\n�I\0@��Ss��k:��L���\0�\"�Xʍ#*�� ��\0�\"O�3gN�ƺ�޳�Ůq��fhi����Z�N\0�<���?�T��6l\'\0E�1����ʁ�/��\0�\"O��Ɩ<V�\'\r����\0�\"O\'��y<]s�!Z��v\0P��(���#7��qI��L.\Z�.���\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0(� 7�X\0\0E�\0��#7�X0\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0�<�\r0\0@���\0(��\r0�\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E�!���ȅ~�1���\0�\"O����y��W3���5�+��$\0��Ӊ�po��#ӧO�U�v\0P���\\8�Q3���=�+��$\0�����P�ءǬ\na;	\0(�tz>p�c�0.l\'@�gLț�;�\n��$\0(��f蝥c�fzE����\0E����c��\n��$\0(򌵼8Yn��$\0(�4%˲q�<���>��oW�Z��X��-#r�]��+Wf?����1_Fb;	\0(�#$\Z�5k�d۶m�^}�U1J�}��l���/��e%��\0�\"?bEH#�2\rѫ+V�xBVb;	\0(�# v�ӈ�N�����I\0@�q̊&���!9��$\0�ȷR3��_m͞y��+?S���i`4C�N\0�|�6C�v�d��4���W�q]ܦ��a;	\0(��m��wh�R<������\0�\"ߙ��~�a3�ib4C�N\0�|G6CW|�a3�ib4C�N\0��fHh��m���.��y�\0@3� ��8{\\�f(n��h��m��y��W3���5�+\0�!�mZ�/\r���M�bT�����=2}��q^%\0�1�fhGφl��W��\\~]ܦ��1��œ5C��ݳ�B\0�b�P��u���u\Z�-�m�w��cV�\0@3�P��W^�6��_�E.�.n��h��m��9V\04C�ڵ�\'{j�3��}42�!FW���iU\04CG3��+��Md�u��6l�R�}�V�4C�j3��ұB3�\"\0�b�P�AV�4C��6�z�U!\0�1�fh �A}�ij4C��6��s�=W�f��6C�m�Rhj4C���=.+�\0�!�m��f��4#��y\\W|u69\0���1f\Z��\0���v\r\0h��i�K�P�\0�!4C�!���~\Z�t�c�\0@3�fH3D�5B�5:V�\0@3�fH3DǘQinŧ��\0�!͐�Ѳ�ЬA<n��\04Ch�4C��Fh�\0h�4CB3Ĉ��d	#�<\0�fH3$4C�X#4\\��Y!\0��!�-�����ǂ�k3j�\n\0��iB4C�|#4���|-���:І���4D\0��	�-��EC�5����nw\0h�4CB3D�hԠ�kl�j�����:�w\0h�4C����|����u�����&\Z�z\r�@�چ�.s\0����i��	�cy�m�\rI\rQ��P��o�X!\0͐fH�v3T�����\r�i�2�F(q\0h�4Cb������w��p�M�fH#4����Ch����\0\0�!͐\\�v�mY�� �PG�JL��h(�PmC�\"\0�i�����\Z��s��g>��P�]�jW�~^\\?������\0��\rs<��ن\r|�͛7g>����{��wg�6m��~k׮͞~�����я~4���}�C����#�2���q}7�Čb��H�69���ҁð��������f>������\0h�4C+b�v��W7l����T#����~{��O~����/�������������s�sGCT�g�[�n�ﯹ�����^~����V�ZU�_\\~饗F�\n���3�sM4C�����J\rO�D���>5K�����7��c��9f\04C���h��5,�X�~}�cǎj�z��H�G�R^�y���Wm��.]�M�81���KXUy��ߝ�{����3v��Y�MQ|ݸqc��W��Q?�v�R����XٙX��[�(5C�[����U����V|�]|=���i�5�������&�LC�lr\0���T3t�9��>��s�1Ո�q�#�<R�1�ړ�����/�P�O�\Z�V�����g7�xc�9�>q]4W�v�i4?t�X)z�������fq9&�/������7*��J�xWu���L�#4�f�ur���fH34r��	\'���}�M�Vm\\&M�T���\Z��{n����_����̢E��+H��rK��_�җz�V��O�^m�����[��]t�E�\rWܯ��6�д<�Uٷ���W�����+��\"m,\Z�N����@?P�ن(�7ۖ\04C����v�NЎ?����y��g��JD�f�-oyKv�����?��x�ړ,�u�?���կ~�z��ɓ�����Tq�wܡ\Z�f(&�/���㗥槶�������~y��F+Dm��m�����fH34R�B�^{m��oq9����1��rJ5�����MK�̥獳���i�\'��t9N������q�����ϸ��;5CCo�bE(��9����br>�N3tB[*{� ���Є���������]�T���z\r��5?�1B\0���TD���8c\\j8����Y�&��>P]�9����+;�裫�#*��D�W�ޯy�����۷�+�-_����8;\\�JMPܖ�T\'�xb��Үx�j�\Z�f�V48��4Cq��ʾ]視�O\']+���n��f>P���>\04C�����:S��B�:��EC�ND�c��g�k����s\rf�beh����\r��t��0��ũ�c���<6籮��LiG��aZ��\\42�W�?]v����F\0�fH3�L�j̑G��1D�:g��*��\rP����]j^b*=o_�P��Ds�����\ZV�h�h���\0h�4C+��S?���a��.>5�򺿓��x܄	�<IC��ڵ\ro��\'h������f��n��f�!�mv�\0��!�m�5���d	\0�B3���5���]�\0@3�fH3Ęk�N�cW���f͐f�2�htf�q�v�\0h��i��D�V��\Z\0�!4C�!�\\C�\0��!�c�!�N#\0�!4C�!ƚ��v��@3�fH3��$\0�ȣ�a;	\0(�h�4C�N\0��fHh���\0y͐�a;	\0(�!��v\0P�5CB3��$\0��k��f�I\0@��	���\0�\"��!l\'\0E^3$4C�N\0��fHh���\0y͐�a;	\0(�!��v\0P�5C�!��\0y͐fl\'\0E~��Z�J�:�\'o�^���N\0��x�ᇷn۶M#�����y3��v\0P�G�<p�C=��_|q��d�V��Z�r�y|PVb;	\0(�#$���Z�b�c��V�Ҏ�Ѯ�{�?��v\0P�`,\0\0�<r�\0P�y�\0�ȃ�\0c\0y��\0c\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0��+��\r0\0@���\0(��\r`$��a^m\00�En@���ꊱ�5�y,�cbg�q|qyRq�Ӌ����<��㆚�Qܷ��mrG�1ū\0&��\rh���-l��y�\\��I�ǖE��]\\�����q�W\0Lx��JcaIѰ�O3+;K�9�������U�h�^+��.��]��4�\00�En�h�����BѤ]ٷ[[�f(����r47/�׎�����w�{<����\0`܀Viu\'}��ǡ��j��iy|��ow��+�����W�_E�X4R\0�	/rFu,L-���J\r̹���-�i�fW����3��e鱵��=��+B)�_���	/rF��ٳc,L����[�����i7�8��Ě�i|�f�<�T��A.�<M(?�\0\0Lx��Jc����i�jE�sxM3����ۅnj���;�,�\00�En@+5C��h��6h���¸R�֎]�z�؜Ǻ�޳��?\0\0&��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0P�\n�\r0\0@���\0(��\r�X\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r0\0\0E��\0��#7�X\0\0y�\0�\"��\0c\0P�`,\0\0�<r�\0@�Gn��\0\0(��\r�7�G���y�\0������\'��z_�PWW�,�\0��\"7�s��>��G�O�>Ϋ\0&��\r���?�Q3���=�+\0&��\r����w��cV�\0������;�X!\00�En���7?wZ\0^���f蝥c�fzE\0���ciT��*\0&��\r�h���{[WW�%y�ߞǦ<^.V��䱹�u��W\0Lx�����y���վ>p�&��?߫\0&��\rh�<?6oh�k��k�̙3٫	\0&��\rh]]]�͝;����f޼y�g?��������;������_~9����֮]�]w�uه?��چh�U\"\00�En@;4B����rt뭷f۶m�b�Ν�����MQ��yu������Wn�.���*�`�㮸�چ�\n\0��\"7������qW^ye�p���]s�5���M�j�	/rZF��,�\r�*7D5+Dk��\0`܀���.#4�]���e�|���\0������H�J���`��۬�	/rF,Ww���}�g޼yoK\'M�՛;v�f(�2Ws��c��\0���0��܀���E����{j���K��>���gS|Q�w��\0ZT>A�	��<�$��y������Iy�}N/2#���>�jbFq�F����������07C)�׮��ݞn衇j3�Z�]��@{Mx㺅\r�;���\\?��زh����S���<N��k�� 5C�+E�)�/oJ���j�����-�C\0�>�%E�r|?�P��L,E<�R3tH�+{W��	z�����zvq���4Cp���ޕ�<^I����:�v�g���6�D�u�Yٔ)Sb��}��կ�f��oR�7�);��c��=�裫��8���C͊��~����~�x�;��=��#�?��?�0�B�a��P�\0Z\\Z�I_���-.�T�_��L��[�}��^9pe(��?^�ic������NM������ӧ�_�ee\0�gjѴVj`�-.��hqM34;���g����ck��{*{w�K����8H�PoT��c�\0��;�[�\no-]N�ű>\'�4L��4C\'䱥�9i�iB���^~`��]��ݟ-7A��8�\00 ��P�N3T+\Z��k���|\\e�.tSKק��fy��!6C���9C\0@3�д>���\r��x�7��Ǖ��8�v�Rד��<�U��m�/50�͛���1y=\Z��r�cǎ���ܹ3�?��J�б^}\0\0`Tuww�HMʭ��zP���n���*�ƫ\0\0�B34;5*�:4�\'R��;wn�P���{�\0���7)�f��.��l��?����Q^�>}�8�8\0\0�*�бylOM˕W^9�(\Z�k���w5g����\0\0ZJWW�y�d\ni�h�����jV��\0\0���i����1DqR�8�@�\Z\'K(#�7Z���\0\0--V���Ynf�)��!�f�U��]�\n���S�@�/|�ق~[~\\�\Z\r�W\0\0hqQ��ۃ�5�\0\0ڵ)�`���L�A�\Z\0\0��y��-o�.͛���؜Ǟ��[�X��屢��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0F��<*Fj)��\0\0\0\0IEND�B`�',1),('3',1,'processes/Default_Dataset_Process.Default_Dataset_Process_Key.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0F\0\0\0}��\0\0\r>IDATx��kl�[\ZǛ8bđGA���̇#&\"2��8�6�nAS�%�R���� F�V�H]B��G\\FK]b4�chq�Խ��C�)mY��k��g�����������w���߷]뷟�Y�Z+*��(��(��(��(��(����%���ѣGGsss?�?^dee�X�dgg�˗/��%�����\0�+W����r������\nq�ҥ76�YS)[\n��bi�|��}�Tʖ�[Ćl�\"S˚J�R��و-��J�h���c�x��Wd\'��m�#\0�\n0U��E�?׈�Z�V�������o��E�\'	�������x�E�\r����^�c�\0�&O��eҤI��,K�,�eF)��<�o���r��%d�ڵ�;�\r�ׯ��f͚�y���L�2�� ���u˗/���t{�Ν߬^���C��F\'N����q���=��T�pd�1lذ�\"� ���#�����$�\"N�8!�ܹ��W���Vee�x���8{��زe���8��5��x��F�\0�c�\0�$~#K��P�V�ê�ȃ,^���ʕ+oϞ=��ѣG@|QMM��z�����\'i�͙3班0�Wwx���P��qA^DJJ�@-((��������a<|�Pddd��N��h����2l\"���Y�f��߿_�{�N���<!Swb	Z`*���s���#���)��8�+.(̘1C<xP��=���d���Z���$$$|3����7o�`��۷��p��?L���}�Z\0���Ɓz��>��i&\\��0@��J Bx������R%����%>>���T�E���cbb��?\\�V���E�R�Gr�L17����T���bٲe&d��5�UH�\"X.���Vff�{	�b�[2M���n�\Z��1f�0M�\\\\�?777$�1�gLKF~w��ts�}���:T���{��FZ&���ݳ�\n]pΥ5C�4�[TkZ.�����n�3ȱ	�kt�pkѢE%��oI�i�j�5C�4G�]|g�\\��5\'�3g���kP�\\���\"?��:i��\'h��\0`�c�4f�\n���ޢ@���;A��=���G)mܸ�\0�fK��pхP `d�>�9���-$�\Z����� ���&�ي)��ye�X\'�\"`B����х�NO���H+�s�&555�]�5w�����wKk�s�j��ى��D<�6���a0p��ɓ̶mۮZ�M�����0L��sTtXz�\Zӑ#G�bT4.FZ�����Pd!X�;K�qK�0�WfbG�M�L�_�)\"��y���sV�Z�\"���\Z��!`�`�+s>�p�y�ٳgn91~=0�H��_o�� �.����!`�]���zTt$��;�^�~`���1y`�0L����\nm2 �X͂�[!`�_�X�Z�c�LEEE��c0��a����	`�a-�Jܻwϵ���,Xm�����s�TV֟\0����>����˗{{��y��ܸqC}.ʋ/|��Y0�zբb0�V�z�Y�,ҋt���\r,����`y���z�v�z}��z������1d���\r��>s���Ǐ�}��������ku=��?�y��\\��i�F,Y���}{�����>v�k��={Z;`�իՋ�<L:c�<��R�CW�!��[�q�����1�;wN\Z4�e��2��i\r�\r�E_���333�vYY�z߿���DѱcGu=�:T�:⺶K�.bӦMޡ��Դi�Į]�\\��y�5x�k������m����k��Ƕ[!�m��v���pl�/a������_\Z�X�	X[�n+W�T�Qދ`�p�\0�w�V�����h%::Z͇��q�Ʃ���W�*\0��~��u�։Ν;�m�Yڭ���W�\n}�iii�W�^nn��\Z��>|���ڷo��еu@����&�4Y�$xb����1	�����b���Im��`,�O����C�;h�xEc9r$VkP��5p<��1�J�6 �σ��˴xp��޽�ھu�:f�H�=1b�\0��{X2�����.� �F�ր�kơ���/ͱH�B!���f;X�b�/^�`v��q�BE�P�~�Q\0��ׯ�\Z�n�8�P,���:(if߾}���b�?f�ea`׮]�hZ�?u�[LFC��צ��7�~����Sj�.���+��RSSM��\r�a&/]��c$����T��`ºd�M\0��8\nb\Zx��TO�\0؇�WGA��\rϞ\"�:�\0�=z�8	ޣ Ncy=����{�f�}�e��,}�v��F�,�ܤy�慵�\Zs�����������dù�w\0�����K3z�h�k�]Lm�����&�����O5�v�کƏ���\0^��\Z5J�8\Z={�T�z����ws�8�����ad�=��`|�o�qvW�Սˌ�KIII� ��Ay����?`�\"��K��JR�`�u�B�A/,4z4xO��s�	�:�K��k+C��mۊ3gΨ�\n,{=���\0�����g>����\\��\0�\n����&`�[1�(�<y�6�es�Y	�_������m۶�p�J����k���l�P�	�X`� ��%�Pa� ^��@�G�Fww���Ր��۷��&��\r\0�[Z������-�f�OcAh����޵Ń��������{!`��b\\3���eg~t<�H��Y6s����	%\\������$��(�+�A�N�:��C�D����+G��<p[t�o߾}��}ڝ�1X��]���cǎuۇd/o�اO�j�*�ǵ��v�tz��с_�]X�G6�\n���G\n(��ԇ�v1˺L�:�2##�C�,\'\\R�Z�8��C-�u.�\Z?b$��ⶁ�τ4l�,����V옋s��Q-D�x��:7F�4�\"l�-B��h��Da�`Q4�.I��}�]��-B@��1�����K�T�@@���㕐D�<�E�Ea�p��h4/7l�p����\'���#V���T;�0�E,�~�hk],X >�b\\�m�q\Z�(�v�Z�bEC#�k���1��A��Z<Xll���6m����sK��S(�/|�Q����EH�G��]��Ƣ���5���oy.A�F��	̼��\\;sF`��sV�av[D�0v�s��z3\0�̂X�ޠd�R�2��rg|f���Ӆ�\"�YȘǚKv]���a!`(��!`(��a!`(�����(���({ɜ��Œ�Z��5���._�\\�u�ؐ�Y����.s�5���.\\�0��ŋ?�|��l�ֲ\\\0���짲�gM�l+Y�����y0���X��q�p�(��(��(��(��(��(��(��(��(��(���@���.p�\0\0\0\0IEND�B`�',1),('6',5,'source',NULL,'{\"resourceId\":\"5\",\"properties\":{\"process_id\":\"holidays\",\"name\":\"请假审批流程\",\"documentation\":\"\",\"process_author\":\"guanjf\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processholidays\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-489A20FA-7AD2-4130-A72D-F9282450B68D\",\"properties\":{\"overrideid\":\"start\",\"name\":\"开始\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\"}],\"bounds\":{\"lowerRight\":{\"x\":120,\"y\":210},\"upperLeft\":{\"x\":90,\"y\":180}},\"dockers\":[]},{\"resourceId\":\"sid-B620F42A-503B-4AFE-919A-8A55E405F6DB\",\"properties\":{\"overrideid\":\"yuangong\",\"name\":\"员工请假申请\",\"documentation\":\"员工填写请假申请单\",\"asynchronousdefinition\":false,\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\"}],\"bounds\":{\"lowerRight\":{\"x\":265,\"y\":235},\"upperLeft\":{\"x\":165,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-9CD66061-5749-4202-83E3-48D2BE120B85\",\"properties\":{\"overrideid\":\"jingli\",\"name\":\"经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"jingli1\",\"$$hashKey\":\"0EG\"}],\"assignee\":\"jingli\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\"}],\"bounds\":{\"lowerRight\":{\"x\":445,\"y\":235},\"upperLeft\":{\"x\":345,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-7C95C7FB-0E43-4319-AEF0-B4D9D6F1C2E5\",\"properties\":{\"overrideid\":\"zongjian\",\"name\":\"总监审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"zongjian\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\"}],\"bounds\":{\"lowerRight\":{\"x\":910,\"y\":235},\"upperLeft\":{\"x\":810,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\",\"properties\":{\"overrideid\":\"renshi\",\"name\":\"人事存档\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"renshi\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\"}],\"bounds\":{\"lowerRight\":{\"x\":715,\"y\":455},\"upperLeft\":{\"x\":615,\"y\":375}},\"dockers\":[]},{\"resourceId\":\"sid-1A8B86D7-986A-461C-B303-B336250C6A34\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B620F42A-503B-4AFE-919A-8A55E405F6DB\"}],\"bounds\":{\"lowerRight\":{\"x\":164.15625,\"y\":195},\"upperLeft\":{\"x\":120.609375,\"y\":195}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-B620F42A-503B-4AFE-919A-8A55E405F6DB\"}},{\"resourceId\":\"sid-4F25AF40-412A-4AC7-B60B-F0946EBC902C\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9CD66061-5749-4202-83E3-48D2BE120B85\"}],\"bounds\":{\"lowerRight\":{\"x\":344.78125,\"y\":195},\"upperLeft\":{\"x\":265.21875,\"y\":195}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9CD66061-5749-4202-83E3-48D2BE120B85\"}},{\"resourceId\":\"sid-3479D8AB-B63C-4D5D-BD1D-A32C1BFBBC54\",\"properties\":{\"overrideid\":\"hc1\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5665E58F-E3AC-4DF0-8B37-AE98C138BBA6\"},{\"resourceId\":\"sid-A645DCAC-735D-4DD5-AEB2-DD85589BEBAD\"}],\"bounds\":{\"lowerRight\":{\"x\":550,\"y\":215},\"upperLeft\":{\"x\":510,\"y\":175}},\"dockers\":[]},{\"resourceId\":\"sid-B5D1EFE1-AA81-4CB9-855C-B4EEFFC2EF99\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3479D8AB-B63C-4D5D-BD1D-A32C1BFBBC54\"}],\"bounds\":{\"lowerRight\":{\"x\":510.015625,\"y\":195},\"upperLeft\":{\"x\":445.5703125,\"y\":195}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-3479D8AB-B63C-4D5D-BD1D-A32C1BFBBC54\"}},{\"resourceId\":\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2ADA5227-9E73-488A-852D-A32AC984F7F2\"},{\"resourceId\":\"sid-4C13A378-1487-4C84-9034-AD8B4D75184D\"}],\"bounds\":{\"lowerRight\":{\"x\":685,\"y\":215},\"upperLeft\":{\"x\":645,\"y\":175}},\"dockers\":[]},{\"resourceId\":\"sid-188B5A06-B469-463F-934B-920966143B88\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-950CC026-8435-4466-A652-A5DBBA42715E\"},{\"resourceId\":\"sid-981608B5-6E8E-40F0-81F7-8940D14B1B73\"}],\"bounds\":{\"lowerRight\":{\"x\":880,\"y\":435},\"upperLeft\":{\"x\":840,\"y\":395}},\"dockers\":[]},{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\",\"properties\":{\"overrideid\":\"end\",\"name\":\"结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":874,\"y\":553},\"upperLeft\":{\"x\":846,\"y\":525}},\"dockers\":[]},{\"resourceId\":\"sid-8CCF822F-9BD4-4281-931C-A5B54E6A0357\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}],\"bounds\":{\"lowerRight\":{\"x\":845.2890625,\"y\":539},\"upperLeft\":{\"x\":665,\"y\":455.71875}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":665,\"y\":539},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}},{\"resourceId\":\"sid-5665E58F-E3AC-4DF0-8B37-AE98C138BBA6\",\"properties\":{\"overrideid\":\"agree\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\"}],\"bounds\":{\"lowerRight\":{\"x\":645.0859444097279,\"y\":195.42597005356777},\"upperLeft\":{\"x\":550.4140555902721,\"y\":195.07402994643223}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-E9F4E8B8-AC50-4D23-977A-C3BA399A7184\"}},{\"resourceId\":\"sid-A645DCAC-735D-4DD5-AEB2-DD85589BEBAD\",\"properties\":{\"overrideid\":\"disagree\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}],\"bounds\":{\"lowerRight\":{\"x\":845.4853515625,\"y\":539},\"upperLeft\":{\"x\":530.5,\"y\":215.28515625}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":530.5,\"y\":539},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}},{\"resourceId\":\"sid-2ADA5227-9E73-488A-852D-A32AC984F7F2\",\"properties\":{\"overrideid\":\"moredays\",\"name\":\"请假天数大于3天\",\"documentation\":\"\",\"conditionsequenceflow\":\"${holidays>3}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7C95C7FB-0E43-4319-AEF0-B4D9D6F1C2E5\"}],\"bounds\":{\"lowerRight\":{\"x\":809.6152376792177,\"y\":195.44860118940673},\"upperLeft\":{\"x\":685.4941373207823,\"y\":195.12952381059327}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-7C95C7FB-0E43-4319-AEF0-B4D9D6F1C2E5\"}},{\"resourceId\":\"sid-4C13A378-1487-4C84-9034-AD8B4D75184D\",\"properties\":{\"overrideid\":\"lessdays\",\"name\":\"请假天数小于等于3天\",\"documentation\":\"\",\"conditionsequenceflow\":\"${holidays<=3}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}],\"bounds\":{\"lowerRight\":{\"x\":665.4547533515818,\"y\":374.55859634441396},\"upperLeft\":{\"x\":665.0921216484182,\"y\":215.36327865558604}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}},{\"resourceId\":\"sid-8FDC7361-B054-4656-ACA8-349C431D0DEA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-188B5A06-B469-463F-934B-920966143B88\"}],\"bounds\":{\"lowerRight\":{\"x\":860,\"y\":395.09375},\"upperLeft\":{\"x\":860,\"y\":235.53125}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-188B5A06-B469-463F-934B-920966143B88\"}},{\"resourceId\":\"sid-950CC026-8435-4466-A652-A5DBBA42715E\",\"properties\":{\"overrideid\":\"agree2\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status2==1}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}],\"bounds\":{\"lowerRight\":{\"x\":839.6445345205016,\"y\":415.4466612136074},\"upperLeft\":{\"x\":715.6386686044984,\"y\":415.1295106613926}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-978ACF1D-2F46-4F5C-B8F0-676C4B6642D2\"}},{\"resourceId\":\"sid-981608B5-6E8E-40F0-81F7-8940D14B1B73\",\"properties\":{\"overrideid\":\"disagree2\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${status2==0}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}],\"bounds\":{\"lowerRight\":{\"x\":860.4178264501838,\"y\":524.4921956954114},\"upperLeft\":{\"x\":860.0587360498162,\"y\":435.7968668045886}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0865FCC8-EEDB-4C97-9FA1-112C587A65BF\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('7',3,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0[\0\0\0+\0��\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0 \0IDATx���	��u�?�gXGE4�HM��i�ie7�QW�̛�ʢ���u�0C�ni��(��o�Z���v�K�E]3QT*\\ADEd�����<��a�̼߯׏�Ι����<���-O�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�P�*�\Z466�N�6�����!o����-�mhhP1��PS�سg��z����%KF����jE{֞�\r�\r����/��̝;�����M���m����o�u��E嬧�`�\rH�p��l���o/[�쟋/r衇NQ;ڳ��m�m�\0ь3�z����i�����>�N��V���/gӧO_���8������jD{֞�\r�\r�H���>^��]*G��ٶ�n�n#���[m�U�W^y�3C�y��o|Z�h��3\0����0���2}��s⋮w�ޫ<�Vݜl�?��f���l�?do�>-��vY���U�z�ѣG|���={��\'�p�on���WԊ��=`j��_�����1�#��4�E��?���>�5,{;klX��9�lƤ���/��\r`��6�����еk׫Ն��=`j�Q�O0�N��������{�O�ҷ�r|�͝6An ;��Vݺu{������О�g\0lCmC`h��}������ū9�G�p��n����5�=k�\0؆چ\n��\n�n��}s\Z�-i���nC�f�mvH�Մ��=`j��/�|��7qB�Xy���>�w��mՄ��=`j��/z�iw�D�Nh�N� ���eڳ��m�mh�؆jQT���Ǻ�t��\0lCmC�� ���_�n=6[����7ɶڹ�\nB{\0�P�\0L��k�=�Ͷٽ��7�n/��\0��*��cْūܷ��7T�3\0؆�`:����͘t}V��?Wyl�k�d3���s@{\0�P��Z^~4}�]�����f�������8{}�_�F�C{\0�P�P�8�^�������Dò����f����Ym�e�=�m(��`ڽ8z��/�rqT����T�=�m�\nD\0�:�ѻu�ذT�=C+\Z:t�jm�P��!д{{������E]4�g����K/��o~�5���m(�`\0`�]|�ŃgΜyç?��l���??����\r@\0\0:��Ç3cƌ�N?��.\'�xbv�Ygu�3g�ug�}��U�_��S�tmc������Z�w���������w[��6�[3��:�n���Q:\0�\0h���{��o>�3�|��,ܷ�>�D��z�UWݘ�N6r��_��۸0��kx��T>]\"�\'\0��ʤT&総H�T�	W}ۈ��/�{*>�R�;���=L){�T��ù�|&���\nǤ�ռ����������S���wX*S��4%·�22�䏭�7S�4���<�oE��U�c?����\'���������1>�������avY�d�{�,�sh��\0@�w饗�CZ�w�pJ����gÆ\r�:jԨO;���^{흭��2���z�;�/�o�<@Ď��T�/\'��A��\'�!���<�}%}����������K˂h����\0]�.�+����c��\'�/���;;N�����\\�;�U�fV�ޞ]��wr��y�.��ʿ���vf�w�X*��2*|l������`6�����\'�|��{��Y�f����/o�p��n���Y�n�\Z7�|�%[m��K�{��Kz���;Ｇ�\Z\03�Đ���kJ����}��W^9��O<��o����6y��/�/z�vN�K�:��ף�mH*��CP�G���Jf����m<�ܺ<�֖=���ػ[yR�����=��z]����y������Wv��=y���2��ߵ*�ˊ����+n��%zio^Mh^��ˮ���w�\Z(�\0̆���կ~���|g�k���m�=��������R��jkk��k�x�/���.S�L���G=��Ϟ�hѢ���g?�N-Њ�5����;�s��1�֓N:�s7�p�oZ�mŎ�OZ��y���p�?l\\�X�M�_T�m�o^NJ�y��ѫ;!/�K�`�Q����V��5o#����.M��x��*�;%?�Rꁎ�R�\Z1����`L������w���r{�rIY��_�{���^���@��^�{�++�.�*���,h��M���uM��A\0�ez�/~����,�9hР�Ү]����Q��v�,��x�5�?���cǎ�ɩ��zμy����n{V��!\r6�iӦ��:�pʃ�׿��W\\qŝ���1cƷ��;8ߗ�/�����`33ue!fn~;z��V�Ju���y�����[ޢ-ܛ_��n������< ?�0٭,fy@��Y��\Z!��l���p�������ͱ�s�C��s��l�9��{ߓ?>��������ݳ����zv�b�w��9[����k�lż���F�}�,x��V핆�b�6����������ѣ�O���]vY!�6~���s]�>��=6�|�\'���/��f�P�wo������ӵr^gK����ûw���΁�Joq�<0L�V�O,�9ϭ��&���\'��h˲�z?����rd�g�+[y��yP�E�>z���?��z���	���e����y茞��|]D�+��d+�G.�ӿ)����{��y�,�O���T����}���/��R�Z���A��~��!\0�������<���}�k�G�V��ҡ�\Z+/nҥK��O9���0\0�뢋.\Z2}���%���s�9��G���b��ܼ��%����%,s;v�hj~ki8p�R��������y���-Û�VV_.o��*��<5[��ڷ,�6���G�׎\rǶ��;-�gf��i���wb�x���\0�:���}�w�������n���y睳o}�[��?x��!j��	83gμ!�u�k�)��JÇo͠�`hV�-�����Y�[hj���*ÿ[�Рm����7���P[*^��D�p̹�\"�ٸ�\'4���0����V]<��ce���ײ�?��To浏�y�����z�>���[�c�`S�\r��wP�^�˴~`�I����o��3�8�0�wC��;���{u������P�\0���Z\n8-�׹&���ڴ}�5m�ۀo7��(6�K6*[�W/˃Cܿ{|����79G��;L��\"p��n� )����gc���YqX�٪�>�|=[yE�8��+B�ļ�O�l�^举[�|�r�l���Ѷ�;+��]Wuy��T\Z��9���V����[���8.��`��E�6�X�������?��l���J�<p������/c��G�:\0-�ԢF���Ͼ�կ��ܫ��z��o��fv��\'��k���pF�:�{�&�_~�)���?jj���Nzϲ��/�2Fo�����ˡy�9\'+�x]�mcA�be���\0Im�b�ws\"�M����]L��K�S� ��M~�d|��)�\"\\~)��<D�k=������?(���m0n�{���˃����m�ө�O��Wf+/��w�s�a���/���##��n�x����!+�����a�6�x#�뮻��SŜ��t��o��[�b(4\0-�ܢF[n�e!�l��+v�t�~��@����,�޽����x�;�!C�NI����o_�!���;�1\\t\\~;B�-����0+.\0s3����w���[�m#�?��J��ʂp��Ҫ����WY����ߞ�Y��<<�S�9 stV�<=�ny����X+��7N�����w�j��\0:��)ي!�ױ�ȃ��f���d��/0���S�L�:*���SO=�i#�&b���)|տ#�z�3��]��s��5:蠃�w��]�o744dӦM�y���z*{��\'�%K�nw��-�ݻwv�a��h���s�=7V\0�Ag�\Z�9[1zz���y8*/1�z���a�FSa�$��O�33o�v2?��+�_�tZ�����f+ٚ���b�#y��8h35�kj���k4�����tB��p��>���#l\Z�F���Oz�W�m�93k�|�GϞ=wI_<}ǎ;}#�w����w��.���jjjnY�t���n����~������k����nk��mϋS{�mj�����3U�.�H����������4����O�.����pְx�����v�}��k�Y~��/��͞� �Q)�d�_~�شs|l+�\'�Ӷ�>}�,Lm����仪n���w�}��mCik]U��q��^�������o��9mڴ�^z饥S�L�������ޗ�e����mY*C���L������?��fN�<�٣�\'�x�%1�y]�����w���l���#ϥ��l�\'>�۷�Z��ޗ߮������l���Z�y_��W\nG��g̘�m����������_���l�̙��`����_�����矏�|����/�z�W��w�}wv�M7e�������[����^x�x�vֿݲ�C7����6�g���_*o�v{^[����\nk��ի���{˞}��B����c\'�����<�͝;�p���&��}�ӟn�wE[~��ߝm��f;����CѾ���/d���gg�=���s���F?P�Q�sY��Y��Mu���&[�=[r��N�y�5�6߯)eiv�wd��h?q=l���ٿ��f���\'V�z�-v}�{޳������J߁O������FV�]j_I����[�m�O�J�=����c�p]���6�d��۶������ώ:ꨕ�̞=;{뭷\nuN;��C�P�g�y�߶�m�mh����̚5k����o�����|d��>���h�����2���,���I��;��=&L���H�%�$�ŗT����/?2]\Z�U\Z�;��:��\"����0�/��/�a^���!�\r7ܐ����~��,�vءp<�@�~���e��Ǘ?�K���0�9s�,�B�2eJa��������_�py�1Ǭ��a���s�\'�Ԟ�\Z<x�����j�ks�&�K�>�5^��Ȟ{�����;/0`@����>Z8 s�7f��g/��R�g��Ɯ���ǅ�����]���>���������_V>,�\'�(�����ѣG����s��O~�0�1�9��l0�(��}3}�޺����Ç��+n*_�hMb���,��3��&..߱H�k���I����s�9\r#F������7n�=>�V�m���ihj�R۸M۠\rmQ�O��A���w��6�$���~_�����OZ؞�{�ᇳ�^{�Lc_l����d���+@���_��ׅN��_�\r�;��_~yӍ}k�]w�U)�m�ձIiC�v��\r���!ݳg�	�G���� �:ǗN�}��Z���^��-��RXI;��Be��PG��S�N-%,�8qbv�q�-�_��y�{Z�����.���o\\/����oy^��C���r��9(�纴!��?ސ�ҎC����p`\'6�i�q�c�^J#\r8��B���Ph#�V\"ǁ�����J�g�}�J��.�;�	���Ja�;v~�G�K.)b�ڴ�=��w�s~j�1��R��{�njn^gs� b���+��-ZT��<�ĢH_��WZiM��o���=�ܺ�/�\\��86+��Km�>m���\',���\'�����b\Z�C!��¾`�G�6��W_-\\���_�r�>���K��{��A�6T\0�tR�_�Ӓ%K�M_*KS���WM��������O���f}İᦆl�ۿ�[�-z�cx�:�(|Y��O�!9�/�R��^��Q��Bx�!aXcG ��Ɛ�CY���zw�K6��EX)���t�1z�㋳t;���3���Y[1t-���yjO�g8��|6�s��i�۞[*6���\0I|fqĹ$>�����Ys+��φg�y��\Z1\n!.�ņ���/\\�z��{�Bێ#ӥ4Gyd�z�8G���{�xNA���Q�m8��}��(om��=�#p\ni�]��s��m��M�)��8�m�4�5�A�wܱp`em��>��>/�1i���~��u�Ql�mО�	�FW�>ͳkZ���� l״# bu�qӎ�\'�#mC`�Z�!o���0ҎO|�߬���Ć�4�w]wrK_ M�ɺ�߰����uD�Y	+��\r{�8:_zZ�͛W�?�}��G>R�B=�#\n���#Ԗ����o~��7Bs\\/����,픬��Y�\0����˪�\r�3��o{n��~��>Pذ�<��p;z���0�7�x��C�茶C�����?�v�m�����8P�!���vک���袋��ߋ�8�k\\�xG�nn�96�1_j���+��s���w��rkҞ��^�u	8%��W:�W�}G}�:�����;�p�̙\'���6�\r�>�nk��/+�.��ß�_,�\r��P��ֳg���j6f���?<���o�2}�|w#�w[�s�v~٣����8`����\\�c\Z��1a�4������U|I�3�г\\�}�a��E�4zܢG�fC�9��S�zc�r|᥍{!І�|�3+�ո^\n#��*}Q���Y�ZQ)4\\ډ�|[Ҟc�_l��n���Rq`\'���F��y�?�p\0�4d+�.�����8h%�DoqU���!�\\��TnXc�ziH~��\rx`������zy�����\Z�q��6��K?���Kk�-i�oE3����ҥ˫�-����ﲮg&��/Y��-�\Z����r�IK��eN��,V-����m�!�qC~�\\۠��c�oC�TnC��Ѯ������ӈ��f������>��â��[IӦ^����0�s�d���=J�6��ݻ�K_�cǎ�dc�_\r\Z�ܗ���꒯ZZ�!K����F�gϞ�c������\r�^b罴�Tk����E�77zxK��|e��4�&V�����[]\n��~�&�J�f�3�[�ou�g]ė}�?�;�K:���j�s��e��v�CF��n�kj맜rJ�`I���A�X�-�X��Hb���~����.[���86�ѾJC�Ce����b>}�0�J�bǡ$ъ^��9�����٘:R{^M�\\��Ƈҳ�����?�ȑ#ǜy�k=�5�6��Z*�,[���&����u��s�Wl�^s�y���6�[�4R{�m�N����$m�\r-�!ɱ�,탕n�����\'6ʊ�^b�t.�c��X�#lC`�ږ[n9#5��6f\0~��\'��7vm�.1�w���+q_|K�K��/����u�������S�9)6;���W~9����i�믿�0g7��q�+-�����Ci����_��/��\Z�T7��a���[�A�,�p�j{n���!�\rriG4��E���U�+wV\'M�T9�m���S|��/ٱ�kiC�:J�v<^:u��!�c�(�&�s�Y\'R���c�]���l�����w�a�޾�knO�][��A�G?��J��{�b���=}-]�(��9W]uU��\rnI���Y]�mЖ�Х���iZچ�t�I�y�q�7�1r!FN��AS=�����NA۳�\'�pBa�Z~mC�N�w��N�2e���X���V��6���*��=�ߤ0wOk��s*\n�0m�c~c���u	��_,�1��x���*_m:�n��+W*-0��4T&�ky��>�����E\0\0 \0IDAT�W�^���^��ú�w$7Z{^����Ǝ[Xm�|����c�yl�KC��T���� N�q*\r����1z��h�v���E��yL�\"�W�}��e[�.G�\ZuW\n8Ǧ��[���~���NkD��XJ����[o�5:t�\Z_/�<�\Z9rd���j�k��mh���\r�}���p��19�R�P\Zk�Ĵ����FK�U)?+�m�\0�)-X��԰��lٲ.��m%�)p�.Ok��seIR�+�^a�Ջ^�8�v��7g���w\n��1\"��r���kq����s���a��CHKbQ��b)-��`�<����\nhc�8�ݔ����B����\'J?묳�����ʚ\ZP�iX�uy?TO{n�V�<������Jm�\\�������M=���q\Z������l�L|��6��~��#JC!�=����?���/֔�i�q�m�e��Cw��W_=.}�t_]Љ��h�!\'v�.����*��������Xu�]���C[G���\n8چ��=����9�17�[149:Pb�~܎s�[�*�Z�ґ1��8�m�\0�� ��׾��i�?��{�guŖ����H4;�;vz�w/����������^O�#j�P@�i`J�az���B�-_�~u*{��_w���*�!�/��2��_��\r<x�/�8�_�1�+��ƹZc�e�W9�iFo*\0ǜ�5e\\��Cu��u�ȑ+̉��J��c[����P�;��f�Z~0(��F�A���s��k����>1���~c�m�[:/u,;���W�d��k��������7g�uV��Q1į|Z|��y]� �駟^UPZ�>����1߼����y���	cƌ��ǩmh�c��ы.*\\Ɓ���V��=��]��:1�/D��c��������;�Ζ��#���.M.Fj�vjT��s��\'��[��?�A�V���	\'Lkll�*m<n��z����[\ZNi}q���C�]�=k������ٳ�g�qFmeЉ��q:�X��$v�J��C��i��8 ��*��n^���m`jږ��(7�믿���������4bĈ��]4k֬�j��3f����z��Q�F�����[SK�N�ax�G�|���z�7�4�$z�\"फmC�\0ڂ!�ق>{�w�c��wߤ5N���O�zҤI�����Ą	��q\0�&�0�?�����6lX��/U����$����y�޽8�{Զ��m\0mA�Fsr�~��/�\rț�S�l(/��ҟ�����������X[��z�o���DoߤI�6ȩ�\"��9�Gmp�\rm�;��o������3.��º�$�!D�����e˖��\Z���.��[�tJC[���DC[�\rm�;�[n���,�ҷ����w�}��8��:��6�����}����i�}���:i�tL�ɓ\'��F*z��}���6�\r@\0����إK��6$=���<��c������������������[��;v�h�\n��CR#�1\"����6?[�����چ���jc�yz�}РAǦ��W{����=����~����e�]zl��V}jkk�ys�ϟ�����3\'N���3��6<qb�kgϞ}��\0h��3`���F�y��g�����=Zp�w/?����mh�\0�*A��tq�	\'����?~��ɓ?�n�J�4�6�-RY�Jc*�K�yx�VC^#�\\u�Uw����ج��>��ӳF��,�r�6�\r@\0f�n�喙�bT^\0�����7r��;�9眅��{W>\'_ѷ���1V��K�i��ޘ\0�Hy]�t�W^ye������叕��+�h� \0\0U/z�R��ܨQ�j~���K�l^���چ��[�@W�w��b��8��G*�P5\0l̠3`��:w��_z��R�,�m\0����<��ʿ���}f*GT<��Tv+�e}��@[�tq�̙3c���� \0�&��25�O���}u*��X �Tv�oN��Tީ*��\Z�-�m��b����Ĺ~�K�<$_�J�|~V*_QM\0\0\0�V�_���R*\'��O*K%ί��T�N�T�O%�X�ʰ��\0\0\0�v��yx\r��rT�c���S�#+��~!��R��T�K��<Q���V\0\0\0��y1[��󎩔����v�}��]���G�A�dh*��V\0\0\0�={W�Ý���C��M��9�\0\0�i�j{\\ok����J�T�O��j\0\0X;z��ֶ���-x���T6ϊbE)�7�S�z��V\0�A�m��&�GV\\l�ΫoV<`]�o��#��Y�X�9��^��c����T�e�y�p�ϊ�ˇ@ߥJXK��W*3R�R���R�(+�w���T�g�)W}�[�TnPU@51�������c��\'�����@\0�_~���4�rr*��e�T�/�vZ��%�������MTU�\0��(�tilhhP�@�^Ȋ���=k�S�W���۟̊����!8���ժ��Y�Ȳ!Y�W�RՄm�m�\0멶���7�xCE����z���&�g�C�&�_��~6/���IeO�DV<(rI*u���P�6�6T\0��׽{��,P���ٳ��	jB{֞;�=����/4����:�HF�rR*��̺#؆چ\n������_>k֬%���*�mM�7o^�6~��О��)���j��!�u�fv>1�yx*g�rv*���,��T����0l t���_~Ye��)S�ܟ>��9䐇Ԇ��=wHq4����/��\'�n�S���=7���PC�����\r�\r�a���2}��7.\\�2������7o�444��6�g��;-�/e�U�öيE��/�?g��$V~~ �cU����0l\0�z���v�������6�ݓO>�����/��a�\Zў����l�bF1�3&��H%V���T>�O�G粦a�PZ�\no���\r�\r�a8���X�t鱏?���3f�3���M�2e�?��I��J��*ў��o�T����e%vv6M�G�쪪:���^v����L�V�K\ZlCmC�BW�/�ٍ7���	\'�pׂ�y��{���?ݥK���={����QA�)��6o޼?O�6m�SO=���ŋ���N�ԧ>5Q�h��s��f^~}N�������zS?���{�OQL;KTg��\\�O�.�A��6�is������l�m��6�tS��v�U����7}��oP�V]������\'vN�@���=w:S�	���ʚ8��A�.I�L�ұc�^�:;��ݍ��c�����Yqu���z [�y��\rlC�}�������o����m�\0\0�����5<�y����өˊ�<���B�.�����ي�`X\r�9�\0@)�J����m*��ᝓ�q��{|OH�C�|>�OgŃ\"F�\00\0PuJ�;ߑʞy9:����)������Y�\'��V�ǹ���&��tS\0@nR��!�tq����;5�gW�?n�5�24@��\0�J��{Z~}~��\"hGe�s\0�UM@��\0�l�ʻT��y,�p�_��\0\0�6=��WS�,���B�m�=�Ϫ�Z\r\0�/���&���Sۻ�z,��MUtz���:+�Y�s�`��T>��:�kR�D~}f*�Q%�\0\0T�SU͸�����h\0\0\0`\0�C��|�m�����V=�^߲ҧ�v�Ԫ&��\r\0��!M�wrV\\�h������]߽��8N�u��`\0�ڼ#���\n��axB��{�R���jb4\0Pr��K3z5s�LU�\0@��?�]��y_��W�w��No�&Z�jc4\0tn1x�T�K��8�R�T横Ne�*\0`\0�#\Z��}��8sn`�=[�\0�!�\0@h�������I�e���e��P=�\0\0tW���j��N)k痱�a�R=�\0\0t�����8\'�έ�����I�����V�\0@����Vק�s*/��N-V~�0��e�9��|`~��9�X�sUC0\0���p{D*;�����㜿1�w�T�g��з�.���\0�\\��Fo�����TF��wB~_��`\0\0�Ui���n�Ɋs��7�<^u0\0\0�,N�4%�q9!��e�G8�����*���\0@�GR�;+��Rt����C�	�\0�f���Yqѫ�7ļ��fŹ�\0U�h\0\0�E�om*\'e���%���X˩�\0\0���4+���C�o.�?X��Z�@\0М����[�}��0\0\0ƾe�c���T	 \0\0������T&�@\0\0�#�i�m�~\0�i�*\0:\"�@\0P)V|�[v{���%3��C�\0\0T�8p��ۻW�{�� ��.@\0\0�ZեrO�}�+nG ~VU��`\0\0�E���\Z\0\0�jVۂ�LUM�\0\0@�3M�\0�*��NQ%�\0\0@g�H~C�T@�2�\0��8*��R��C��\0舆��M*���\\��\0\0tD��rs朿�\0\0@��T��@\0\0�����lՕ��2S8`\0\0�Y]*���RY�{�`\0\0�2��n���e�U�y�\0hN�����x��J�\Z�lU�\0\0t�b/��TNϊ�K����\r\0@sb�����\'�a��.��J0\0\0-Ýc�����\0`\0\0:�~M�79+����}U \0\0P���THe�&�9���&���\0@S����T�Ȋ=�;g���>��Co�_�\0�Z}S��ݛ�����e�^��PM�\0\0@5���W��笸\nt80�q��旱\"��˞ \0\0PUf�r\\V<��Q���S!՗=�\'������E�\0\0�tD~�W|�͊ß({N�L�/Pe�\0\0P�٬8�yR*�f�y����M���UT=�\0\0�;8�q\Z������P�ߥ2*�R�GU�F0\0\0�&g���\'�_�9��d�^�ѩܝO�4Uu�D0\0\0�b���{XV\\�*���Jex*S�JVAyG�T=�\0\0T\Z���~y��#�����;<%����`\0\0�Y�tG�������l��*\rP�\0�Ry��YqHt�����`\0\0�ٝe����}��k,@\0\0���Pv}n�cqZ�+R�B*KUPM�\0���f�� ���y�\0\0@U�����{V��^]���`\0\0:����;���~����\n��\0\0@�rI����<��Q��ƪWE@��\0\0-Q���y�FV\\@\0\0�ÊůF�2DU\00\0\0���5<��S���`\0\0��5��z�<�V��\r�\0\0T�>e�c��X��9{g�U���U�\0(=��Ȋ�=\n1z�<�4[1<��T�+����\0�F1��Yq�s��㩌͊_��ʢT�	�@�1\Z\0�JMu�l������GT���\0\0�ܖ��+>��6Yq�绲��8�WR�����`\0\0*���%�\\�ʁY������{M�����\0��`\0\0*]��<xr*���/gg��\r \0\0PUb�s���{R�-+���C���SU�\0\0@���~�s��ˊ�~��]��\n�x��\0\0T�=R�9��Yq1��_�ϯϬ؏�W]@5�\0\0妦��Tn��ǲ���\"�U]@5�\0@S\"�ޜ�~y\0��Z\0\0��*�OT\r@G`4\0\0��ʊ]��y��Ieo�T;=�\0\0T���#S�#+����Yqa�,��ʟS��\0\0�j�exc���}SR�;[18.w��`\0\0�X���+/u�L�+�eN��\0\0T�GR9.+����6e�NU0\0\0��|$��OV����ȿ�2Z�\00\0\0�*�:?��>�{��Z���T��i�\0\0�=���gg+���ʱ��Fz�\0�44+.r=�#��A��0�X-�:U�\0\0T���g+����l�*�\00\0\0F��γU	�Q�\0��LU�\0\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0�\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0�\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0��T\0\0�j���ߨ�������9hРo��1v��\Z��=�\0\0���d�.�� \0\0��3f|cc��>}�\Z`\0\0���-yR\n��U \0\0P�R���Ǘ�eMM�-j�\0�Z�n���t1���S���W�Ξ={��`\0\0���ѣ���=�{Ncc�]&LX��\0\0�jwC3�wYa��K�;T \0\0P�bxs\n�u�����tM3g͚��Z`\0\0�^oNawtS���φ?0\0\0F\n��V�Ր_�N�\00\0\0Ɯ9s�<�s*�5�644ܣv\0\0�#��ۊ���v�muj�\0�hVZ\r�����π\0\0@�S[[�P��={NP+�\0\0@�3z���t15����<�n�W+@{�M\0\0�o����ӦM;���nțo����E�j\Z\Z����3gN6iҤl������_�bc{}�)�7����=z<�dɒ������0\0\0m$߯<��#W���oڧO�,��o�u�Ҿ�w�q�n\Z\Zj���Y�p��g�>����?/^<��C���A�d4\0@;5cƌ�^x�o��֛~�C�v�i�l�-�h��jv�S=���;�q��8�ǻ���}�7������j`\0\06b�M�Ƚ��+�a�b��Jie�o�}��>�l���M<��j`\0\0ZY{~����}��=��ު��͜|S����=��K���\"�_����\06�l�����5557�{�{��X�\0hGb����Ý��/>��l�ۋ��������v��䬶�*q��}�6L�6��t�j��8p�7jjj.k��o\Z4��w�;ְ�6�\0��՞c���۔y/�i��[Ұ��l�	*p�q���֭�{����-\nV]�LV0\0\0k!Nu+=77�w�j�:G�0�v�m7;]�&h�1cƌolll�y�g�1\0�Ӌ���J��i\\���nlP��6�l����	���kx�����8^U	�\0\0�ޢE�j�<����9�+]�&h�lǭ�)��555��-\0��khhp�����\\�,\ZK�m������<e�x|���Ֆ\0\0�\Zt���>֭��chK�G��O�4��������	&,U[0\0\0k��N��u��*�w�I����T����3�B��ҥ��H\0\0�zm�g��6�7y���������vߨ�����g��9k֬Ԓ\0\0@-[�x��������v �7��[��v��?�,\0\0�o/z5�1�������آמ�f<�߅�\0m+�{�y�wjG\0\0`\r��h\n��eo�>���9��l��?�^�����V�̙��}����mhh�G��\0\04#zt_|�l�?~�-}{�\Z�߰��l�������/��7f�@h�0����{�m��V�v`\0\0�=�1�ymEO���\n����<���\Z�?�\0\0�N�讫�k�@[���}��vϞ=\'����M\0\0�_{��\0Uh����������wu����t{�Zi{z�\0\06��/�xp���߹��[g�r���?�Z�\0\06��Rٲ-����Ï�1c�Mg�yf���G��g��eΜ9ץ��}<m�h\0\0�=���T���9{��\\*?���6��Oz�)�3�n��u�Է�����_|��3�8��?���}��Ov�Ygu�ꪫnL!89r�/}�mC0\0\0��D��D�+��{*���F��1��S9+�~e��;��S��Jmk��K/������~���[����?6lX��_���N;�h�\0\0\0Pr@V�	./פrl��WwB*��R��ݸ=;+������[;�N�>��g�u�*�$z�����u���w�\'�#�\0\0�#٪=��O��������8,�����Yq��W��z�b�=�~#�N��s�9���[O:����`\0\0�paf΃�o�U�z Ǉ������=����ܰaÎ�6m�\r1�yM�<��_����p�����1�\0\0\0���\Z!wBV�n��t�d�9�}��*���������~�gtmn���B���ûw���΁��\0\0�-[�c�ي^߇��<����E]4d���7�K�-��sNm�=n�`\0\0�s���/+�sGVßw,����~gΜy���j�6=|�p!X\0\0\0:�/e+zr�\\���b��Ĭ8xjV:sk��29�od��^\'1�~[:�wM��еݻw�՜���M\0\0\0�H��z+�/G�n�Tv�q�7+��}�������Q�ܜ�y�^g���8���w����W���U�{��Wg�n����o��fv��\'��k��6�j��\n!��s������U�\0\0\ZOIDAT�/�#��cƌ3^S���\0\0\0���f��;\'�vˊ�<O��s_���s�瞽>o�����r�B\0�t�MW��.]����\'+���~���{���o���ȆR�%��Л����ph\0\0�B\n/��uC�W�����RY�ߎ������3�\0exV���ʞ�.����-xu�Ae�z׻��nhhȦM��=��#��O=�T��OfK�,)��֭[ֻw���V�=��{n�=V�\0h%�Ӿ6���Z�3��߳�K���yo��v5�޽S��3555��Euy�����:���W�^�xqv�u�eo��Fv�5��@�����/g]�vm�>���(�`s�`\0\0Z�\r7ܐ�v�m-~�����[���J��7��+E�={�Q�����J�O;�l�ĉ+��k/��r�ꫯf���J���A���C�z�LeX*�iM��_<�~״�U�>}\n=��l����\"�~����.\\����7�<��G?��뮫}��Ç���X\0������O���f̘�=�装�����_�z��x���^Z���E��y���_���ܗ\\rI������sڭ[֯_�B0~�ǲO~��^{�m����CH�Zphc\Z<xp���Ɓ���������yLj�7�/x�&����|�������Nj/+Xj�h��߻�9��0bĈ_�|��q�����\0\0l\0��m��=��s��v�i�B���˳=�أɟ��曳[o�u��c�g��㎫<���~�p=�1_2~,�h\"������+{�7��C�����ǜޓR9\"��m���-z~���um��C���dW\\qE��O(��`���ŕ�J��~��ٹ�[����`\0�\re����3�<�d\0.�`Z\n�=z�(\\����o���\'7��O<�J��7�X�~x��v�^��O��C������X@(�E�9.�nMO?�tv�wd)�.^��4h�%ZU��~�����WF��ڄߒ�w߽����?���h�q�X���g�}z\r>|^\n��<x�S$	�\0\0��v�ay�Us�-�!ϥ@[Z���C]����{��f���+���������\"���������BC��Ŋ�QF�\Z��w�}�a����;�,􊯇ojU�\'���T�u	�%qz�����+�=�G}�:����U�~�f��O��СC�1z���>-\0�uL�iY��*��ի�*ϙ9sf��f�5�\Z�[\Zs%w�e��혳�v�c8�J�;��S��.�h�!�&L(��s��Ɏ:�������#���;��,XP�Pt뵤�R-����No��xyj�-��[闿�es�ˇ?�����{�a�k���3q����u?-�\n�\0\0��X:N�Ú�_���T���=���W��|xg,T���B/n�X���#��&M�T�/zo˕Ċy��|!�F\0�����������6ܹ)�J����r�-�,^���<��;R��-	�cǎ�D˪N���#G�s�g��0�8�o��<Eزe˲^x�0�}m�AG���+6I�y¸q��\0XW�=�\\!xF\0\rݻw/��(Vc.�U�cNl��S�.K?7k֬��Dh-��!��D(��.#s�1�y�%q�����	=zt}����������>}����xh\nć���t�[龞ZT�����w�a�޾�knO�][�!�G?��J�+�	��q�)z�[�V�ۘs�UW�¯�`\0\0��k��V8w��矿��SN9�p>�ؙ/�X+v�ca�R�l�І���{����\n�qʢ��T�ا>��U�!�mi	K���y)�8]��a��۱�\Z5�~�M���t5�_��W�s������{�y�qJ���Z�СC��zO?����#G�\n�0\0\0�4T�<������B>�\"s��=�x`�腍��17�pi��MY�ti�g�rMz������*C����ۦƎ;!rq\\8p`T�ɕ=�Tw>�ӎ���ǝy��W�������W\n��j�\\�}��(L1�\"��ATfߜ�<bĈ-\Z�_\0������0�8zjJ�襊���\"Źzc^�e�]VX�ju�W�s��\n�M���4�:�v)p����U\n)Ev׺:�k�������o�:�ͅ�8u������|�ͳ�O?�p�Ҩ�85X<?�����M�ߘ󛮞0f̘�|\nNWU\0\0����޻�����)S&��\r��O�d�wn�߳��ν�&���*���Jsu�җ��<�6��;\"r�!�G>�f����~��Q?���|�M7Y͹�����������G&M�t�N;���]�z�J�ǜ�����[o���s�	\',�{���b�|���1\Z\"�oL(s~����߱c��Z�oX]T\0\0��3f|\n�G�\Z5�>�Q]犾��kW9�v��^.N�U��[��������^��\r{n�@\0\0�00�?�����6lXm��Ӄ�����1$zu�+���7~��nz�\0\0Z��[o}୷����	�4iҲ\r�~G��#�=�0\0\0@{�o�o.\r{^�lى�=�\0\0\0�2��zL��ɓ\'�S���|�gs~`\0\0��+�+G1bD�~{m~�|�+Þ`\0\0���K�,9j�ȑKZ\Z�K��5�W\0\0\0�*1:B�UW]��#�<�hu�}��g�1b�t�$Þ`\0\0������Ǎ9���G]��sb�綾^Z��=�w�5\0\0�*�p�K�y�W���o[)���,�\n�\0\0\0U/z�S�ܨQ�j~���K�4�װ��M\0\0\0l�<`���w��_z��R�,��==�\0\0\0�����3g���¯\0\0\0�a566>[~�\0\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0�\0\0\0@jU�\0\0\0�QuKe�T�MeP��J���s�\0\0��)��ʄ��[nH*W�2_UU�n�\0\0\0�I�S9\"���{*3����!��ѪK\0\0`-t�ҥ����&]��6�>���j���L*K�b/�O������r�j���XU\0\0�~��־��o��v���_��.&��N��<��c�R9 ӱ(\0\0���w�>q��*��={��l��O:��<2��l4������o*SSyDU	�\0\0������g͚����Qe�������\']ޡ*:u\0�(��\'�<�� �~��׷P]0\0\0k頃z8��\'^~�e�ц�L�r�^>�CR���T��௔�_��;�kR�v*sTWu0V\0�����2}��I�o����{�V!��o�~c�*�;�?g��H��lm�.K��*ö��T���6���̝ξ覱�ݐ��F}[7�MkV��l!w6�XQ�q��X�����h\"��hp�3��y�ދ�tF��{��\'�y�9�ܓ���¯�s�����Dww��\n������X[b-��>\Z	~\"�^��֦�`\0���r�-����������ɓ\'5�\"��W^y��,�n��a��J���zĺ-�Wʵ!֬PzM��E\0��hѢg�����ݻ��o����Q׹o߾5/�������c��h	��PZ�)|4�[��B?[�Z%\0\0p�!���~gg��^xᅷ_{������B�Pۉ������lkYz��\'�ڿ���?�����4�Y���{�J�w���_\rC�&�\Zc�\0�����i��3�������X͡�:mS��ͻv�\n�w�s�έ��~&�۱�+�w-x� �{~�|tz޷o��\08�/�3��פ\\.�2nV��ͻ�{��G�t(��ڙ���J/���v	�\0\0\0���X�Ci��45~�g��cY0M\0\0\0�{鑃����Pz-R��P��|\\�`\0\0�z�Sz���O��ZT?�\r\0\00�^-�\0\0>	�j��b\n4\0\0�����~�/��s����\0\0ƌ�*�+�B\0\0\0�f����;�c�KS��i�\0\0\0P�6#35�U0\0\0@�;�c�U�\0\0���\'j�\0\0\00��؂XOj�\0\0\00��8cr��b}Ek`\0\0���k�n�գ0\0\0�X�Vx^J�ϊ��Xǵ�~Y\Z\0\0`pS���Ci��Xwr�Oc��.\0\0������Xc�ђ�e\n4\0\0�������Ci*40\0\0���`97i�\0\0\00�m���\0\0`,l��4z_0\n,\0\0\0�![�8�^�ԧ=0\0\0�\'�\0,\0\0\0�\0\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0�\0\0\0 \0\0\0�\0\0\0�\0�\0\0\0�\0\0\0 \0\0\0�\0\0\0\00\0\0\0\\l�\0\0\0�´��ܓe٪!�^���VThoo�t��3\0\0p����a�.�\0\0\0c^>��V,{�y�a�\0\0�V�e?�y1(o�-\0\0�n\n��Y��堼Q�`\0\0��5aq�=��1�����G�ݡ[0\0\0@�Z�~}o���_�?���掎�>��\0\0��c���w \0744�H�`\0\0����7ǰ�ޙǳ,7������%\0\0����\r\r\r�r�����m�?�\0\0\0cF�P�Z�_���Dw`\0\0�1�رc�=��+�����c0ޢ;0\0\0����9����g޶iӦ�tG\0\0\0S���������,\0\0\0�=MMM�Q�?~��]���i\0\0��kkk���׷4˲����7����iб�w����������}�ƍ�uL\0\0\0�+���K���B�p/�,֌�݌�]������\\�#����tP\0\0\0�i1ĦP�h�X��<~���qG�_ߴi��\0\0jNKKK���au�P�T�Xccc�={v�?~�5kV�<yr�4iR8u�T���	���a�Νa׮]��?��lA�����ֿ4\Z,\0\0\0�Z�]��~+����n�/W^y��;	u�UW�o�q ?��Sa�֭���?�2�X,�k�M1����ch\0\0���4�9ց�B�U��X�������t~�����O��\\C��tY\0\0\0���3�����+���k�	+W��?!�\\�ߥ�_���!���]�`\0\0�K�\Z\Z�V��M#�w�u��3�\"M����;�Ct��F�`\0\0�K\"��(�ߛ����o\n�\Z~�C�����[��Th\0\0��r�gc�\\����t���F�CZ��|�=%]oɒ%�������ȳ\n4\0\0�Ips�7O�:������Y��������ö��i�B�w��ʊϣ��[o\rO?�t�I�3����n�\0\0\0p�>���.��0���������{;���oi���̙�L�2*TZz�ܹ��_�Z��.\0\0�Be�>��poo�}1����ovtt��>)�V>ϛ7oT��t��\0�P\0�\0\0Fï��{�N�zwkk���{id8��*\'̜9sT��3fT�����\0@mY���t�j�U�n4ku(��wZ(�W��)��3���n�\0\0�`���PKF��GCI�D�Ҥ�0\0P�k�ɲlr�X4u�Z3\"�3��w��|�ԩ��^�M\0\0j@��+u��\\�8�s�Q�eGbm?~��{{{�3�������\0��_�;\'\0\0\0�����W?�8q�?�[��`Ux�S	�o��F�>}������ջ{�\0\0`�B��1�>q��k��\0��gY���v��.�G����lw�`\0\0��K����Gc=6aG�Gz�M��m����N��w������L�2�[����K/�P�����\0\0��O\Z\Z\Z^����j�w(7n<��������֭[C[[ۈ��۶m}}}�𻣼�0\0\0���0��/�O����M7�4��:t(<�䓧G�,���6�\Z�\0\0\0������qӑ>�Q�|p��H#!��衇�/\n�G����u]\0\0\0�T�ʯ&z뭷�<p�!8����G�i,z/˲�;::��{�5j\0\0���۷���;�Ҹ�p�ĉ�hU���k�W\\q��KӞ����������|>��n�\0\0\0������͞=�P��$��4��sυ��?\\}�ա����H�=o޼9�^��x�����X,���޾Z�GO�\0\0\0禥�%7�dY6�r���1̙3\'̛7/̜93L�<9L�4i`�s\n����#Ʊ\n|�A����Z��z��\0\0jN.����z��̎��o>�UG`\0\0�Z��b��#��0�W���ѣ,x%\0\0\0ԕ���i�BaY�_���kj��Ppo(��\'��X?loo��1\0\0\0\0\0\0\0\0\0\0��j��o\r�wi�����6n\0\0\0g�n�c+���~/�/������8-\0\0\08g�ke��ƺ*֯������Xͱ��X�P��i��T�O�u8�1m]F�\0\0�]Z��`��ތ��\\o��w�?��\\�^�S��>�F�-���a\0\0�ܤ��?�� �?�z;��P\Z�M���JӜ�]�ɧ�GS�g�z������R\0\0\0jՄX��)��3�z��o�>�U��?�ʋ�0\0\0��Iә���P�\n��d^u��XW��J(=�ǡ4J�J��/�>m\0\0�}���,�F>����M�:��4��LF/.�`\0\0��4j�F}ӳ�\'�q~\Z�M#����Өqzg�R���7\r\0\0��K��_���PZ�9���`a6�鋱������@dZ-:��c�����\0\0P����/��Wr��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�F�/�;�~\'��\0\0\0\0IEND�B`�',NULL);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='主键生成策略表（对于部署对象表的主键ID）';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史节点表';

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values ('2503','holidays:1:2514','2501','2502','start',NULL,NULL,'开始','startEvent',NULL,'2019-12-09 09:57:42','2019-12-09 09:57:42',3,NULL,''),('2504','holidays:1:2514','2501','2502','yuangong','2505',NULL,'员工请假申请','userTask','guan','2019-12-09 09:57:42','2019-12-09 09:57:42',391,NULL,''),('2509','holidays:1:2514','2501','2502','jingli','2510',NULL,'经理审批','userTask','jingli','2019-12-09 09:57:42',NULL,NULL,NULL,'');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史附件表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史意见表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史详情表，提供历史变量的查询';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史流程人员表 ';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史流程实例表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史任务实例表';

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('2505','holidays:1:2514','yuangong','2501','2502','员工请假申请',NULL,'员工填写请假申请单',NULL,'guan','2019-12-09 09:57:42',NULL,'2019-12-09 09:57:42',383,NULL,50,NULL,NULL,NULL,''),('2510','holidays:1:2514','jingli','2501','2502','经理审批',NULL,NULL,NULL,'jingli','2019-12-09 09:57:42',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='历史变量表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户组信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户扩展信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户与用户组对应信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='部署信息表';

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`KEY_`,`TENANT_ID_`,`DEPLOY_TIME_`,`ENGINE_VERSION_`) values ('1','Default Dataset Process',NULL,NULL,'','2019-12-06 01:56:12',NULL),('2511','请假审批流程',NULL,NULL,'','2019-12-09 09:57:08',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='流程设计模型部署表';

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('5',11,'请假审批流程','123456',NULL,'2019-12-06 02:10:31','2019-12-09 09:57:09',1,'{\"name\":\"请假审批流程\",\"description\":\"\",\"revision\":1}','2511','6','7','');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='流程定义数据表 ';

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`ENGINE_VERSION_`) values ('Default_Dataset_Process_Key:1:4',1,'http://www.activiti.org/test','默认数据集审批流程','Default_Dataset_Process_Key',1,'1','processes/Default_Dataset_Process.bpmn','processes/Default_Dataset_Process.Default_Dataset_Process_Key.png',NULL,0,1,1,'',NULL),('holidays:1:2514',1,'http://www.activiti.org/processholidays','请假审批流程','holidays',1,'2511','123456.bpmn20.xml','123456.holidays.png',NULL,0,1,1,'',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='运行时流程执行实例表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='运行时流程人员表，主要存储任务节点与参与者的相关信息';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='运行时任务节点表';

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values ('2510',1,'2502','2501','holidays:1:2514','经理审批',NULL,NULL,'jingli',NULL,'jingli',NULL,50,'2019-12-09 09:57:42',NULL,NULL,1,'',NULL,NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='运行时流程变量数据表';

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('2508',1,'integer','holidays','2501','2501',NULL,NULL,NULL,9,'9',NULL);

/*Table structure for table `process_dataset` */

DROP TABLE IF EXISTS `process_dataset`;

CREATE TABLE `process_dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `creator` varchar(255) DEFAULT NULL COMMENT '数据集申请人',
  `process_status` int(11) unsigned NOT NULL COMMENT '流程状态',
  `dataset_id` int(11) NOT NULL COMMENT '数据集ID',
  `proc_inst_id` varchar(255) DEFAULT NULL COMMENT '流程实例ID',
  `dataset_name` varchar(255) DEFAULT NULL COMMENT '数据集名称',
  `priority` int(11) DEFAULT NULL COMMENT '申请任务的优先级',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='数据集';

/*Data for the table `process_dataset` */

/*Table structure for table `process_task` */

DROP TABLE IF EXISTS `process_task`;

CREATE TABLE `process_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `task_id` varchar(255) NOT NULL COMMENT 'taskid',
  `task_name` varchar(255) NOT NULL COMMENT 'task名称',
  `proc_inst_id` varchar(255) DEFAULT NULL COMMENT '流程实例ID',
  `approval_user` varchar(255) NOT NULL COMMENT '审批人',
  `approval_result` int(11) unsigned NOT NULL COMMENT '审批结果：1 同意,2 驳回,3 结束流程',
  `approval_comment` text COMMENT '审批意见',
  `approval_time` datetime DEFAULT NULL COMMENT '处理时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='任务处理记录';

/*Data for the table `process_task` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
