package com.neimeng.workflow;

import org.activiti.bpmn.model.FlowNode;
import org.activiti.bpmn.model.Process;
import org.activiti.bpmn.model.SequenceFlow;
import org.activiti.engine.*;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.impl.cmd.NeedsActiveTaskCmd;
import org.activiti.engine.impl.interceptor.Command;
import org.activiti.engine.impl.interceptor.CommandContext;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.activiti.engine.impl.persistence.entity.TaskEntity;
import org.activiti.engine.impl.persistence.entity.TaskEntityManagerImpl;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 @author guanjf
 @since 2019/12/6 */
public class MyTest extends WorkflowApplicationTests {
    @Autowired
    private ManagementService managementService;

    @Autowired
    private RepositoryService repositoryService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

    @Autowired
    private IdentityService identityService;

    /**流程设计及部署
     1、新增流程--创建了一个空的模型：/create?name=模型名称&key=模型key
     2、绘制流程--在上面空模型的基础上打开流程设计器进行绘制:/editor?modelId=模型ID
     3、部署流程--流程配好后进行部署：/publish?modelId=模型ID
     4、删除流程定义--/revokePublish?modelId=模型ID
     5、删除流程模型--/delete?modelId=模型ID
     6、流程图流程跟踪--/process/history/getProcessImg/流程实例ID
     */


    /**
     表设计原则：流程数据和业务数据相分离。Activiti相关表只负责流程的跳转、走向等。流程中产生的业务表单数据、审批意见、附件等存储在开发人员定义的业务表中。流程数据和业务数据之间通过processInstanceId(流程实例ID)和业务数据主键相互关联。
     详情见DatasetProcessController数据集流程接口
     */


    /**用户填写请假条并提交---该用户启动了一个业务流程---该用户的完成请假申请任务
     */
    @Test
    public void startProcessInstance() {
        //1、启动流程实例
        //根据流程定义的key（表act_re_procdef的KEY_）启动流程,默认启动的是最新版本的流程
        String process_key = "holidays";
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(process_key);
        //通过流程定义id（表act_re_procdef的ID_）启动流程
        //String process_id = "holidays:1:2504";
        //ProcessInstance processInstance = runtimeService.startProcessInstanceById(process_id);
        System.out.println("流程实例ID:" + processInstance.getId());//5001

        //2、将该请假申请任务指派给该用户
        String assignee = "guan";
        List<Task> taskList = taskService.createTaskQuery().processInstanceId(processInstance.getId()).list();
        String taskId = taskList.get(0).getId();
        taskService.setAssignee(taskId, assignee);
       // taskService.setAssignee(processInstance.getId(),assignee);
        System.out.println("任务ID:" + taskId);

        //3、用户完成请假申请任务
        Map<String, Object> variables = new HashMap<>();
        variables.put("holidays",9);//请假天数
        //完成任务
        taskService.complete(taskId, variables);
    }

    /**
     * 查询个人任务
     */
    @Test
    public void findMyPersonalTask() {
        String assignee = "zongjian";
        // 查询新处理人的任务
        List<Task> list = taskService
                .createTaskQuery()//创建任务查询对象
                .taskAssignee(assignee)
                .list();
        if (list != null && list.size() > 0) {
            for (Task task : list) {
                System.out.println("任务ID:" + task.getId());//5010 、5005
                System.out.println("任务名称:" + task.getName());//员工请假申请
                System.out.println("任务的创建时间:" + task.getCreateTime());
                System.out.println("任务的办理人:" + task.getAssignee());//yuangong1、yuangong1
                System.out.println("流程实例ID：" + task.getProcessInstanceId());//5006、5001
                System.out.println("执行对象ID:" + task.getExecutionId());//5007、5002
                System.out.println("流程定义ID:" + task.getProcessDefinitionId());//holidays:1:2504
                System.out.println("------------------------------------------------");
            }
        }else{
            System.out.println(assignee+"无任务");
        }
    }


    /**
     * 完成任务
     */
    @Test
    public void doTask() {
        String taskId="52504";
        Map<String, Object> variables = new HashMap<>();
        variables.put("status2",0);//不同意
        taskService.complete(taskId, variables);
        System.out.println("完成任务，任务ID = ：" + taskId);
    }

    /**
     * 完成任务
     */
    public void completeMyPersonalTask(String taskId, Map<String, Object> variables ) {
        taskService.complete(taskId, variables);
        System.out.println("完成任务，任务ID = ：" + taskId);
    }

    /**
       根据候选人candidate-users查询组任务，候选人办理任务之前需要拾取任务，或者不能办理
     */
    @Test
    public void findGroupTaskList(){
        //任务候选人
        String candidateUser="jingli";
        //查询组任务
        List<Task> taskList = taskService.createTaskQuery()
                .taskCandidateUser(candidateUser)
                .list();
        for(Task task :taskList){
            System.out.println("任务ID:"+task.getId());
            System.out.println("流程定义ID:"+task.getProcessInstanceId());
            System.out.println("任务负责人:"+task.getAssignee());
            System.out.println("任务名称:"+task.getName());
        }
    }

    /**
       候选人拾取claim组任务并进行办理：需要先校验候选人有没有拾取任务的资格
     */
    @Test
    public void claimTask(){
        String taskId="7510";
        String userId="jingli";
        //校验该用户有没有拾取任务的资格
        Task task=taskService.createTaskQuery().taskId(taskId).taskCandidateUser(userId).singleResult();
        if(task!=null){
            //拾取任务：任务拾取后将变成个人任务，通过候选人将查询不到该任务
            taskService.claim(taskId,userId);
            System.out.println(userId+"拾取了任务"+taskId);

            //办理任务
            Map<String, Object> variables = new HashMap<>();
            variables.put("status",1);//同意请假
            completeMyPersonalTask(taskId,variables);
        }else{
            System.out.println(userId+"没有拾取任务"+taskId+"的资格");
        }
    }

    /**
     流程回退：
     这里是不是需要注意一下并行流程退回的问题？是否可以考虑用实例id来查询，如果该实例有两个及以上任务，则不可退回？
     */
    @Test
    public void rollbackTask(){
        //当前任务id
        String taskId = "47504";
        //根据任务id获取当前任务
        Task task =taskService.createTaskQuery().taskId(taskId).singleResult();

        //获取流程定义id
        String processDefinitionId = task.getProcessDefinitionId();
        //获取流程定义
        Process process=repositoryService.getBpmnModel(processDefinitionId).getMainProcess();

        //目标节点的模型定义id
        String target_id="jingli";
        //获取目标节点定义
        FlowNode targetNode =(FlowNode)process.getFlowElement(target_id);

        //删除当前运行任务
        String executionEntityId =managementService.executeCommand(new DeleteTaskCmd(task.getId()));

        //流程执行到来源节点
        managementService.executeCommand(new SetFLowNodeAndGoCmd(targetNode, executionEntityId));

    }

    /**
     删除当前运行时任务命令，并返回当前任务的执行对象id
     这里继承了NeedsActiveTaskCmd，主要时很多跳转业务场景下，要求不能时挂起任务。可以直接继承Command即可
     */
    public class DeleteTaskCmd extends NeedsActiveTaskCmd<String> {
        public DeleteTaskCmd(String taskId){
            super(taskId);
        }
        public String execute(CommandContext commandContext, TaskEntity currentTask){
            //获取所需服务
            TaskEntityManagerImpl taskEntityManager = (TaskEntityManagerImpl)commandContext.getTaskEntityManager();
            //获取当前任务的来源任务及来源节点信息
            ExecutionEntity executionEntity = currentTask.getExecution();
            //删除当前任务,来源任务
            taskEntityManager.deleteTask(currentTask, "jumpReason", false, false);
            return executionEntity.getId();
        }
        public String getSuspendedTaskException() {
            return "挂起的任务不能跳转";
        }
    }

    /**
     根据提供节点和执行对象id，进行跳转命令
     */
    public class SetFLowNodeAndGoCmd implements Command<Void> {
        private FlowNode flowElement;
        private String executionId;

        public SetFLowNodeAndGoCmd(FlowNode flowElement, String executionId) {
            this.flowElement = flowElement;
            this.executionId = executionId;
        }

        public Void execute(CommandContext commandContext) {
            //获取目标节点的来源连线
            List<SequenceFlow> flows = flowElement.getIncomingFlows();
            if (flows == null || flows.size() < 1) {
                throw new ActivitiException("回退错误，目标节点没有来源连线");
            }
            //随便选一条连线来执行，时当前执行计划为，从连线流转到目标节点，实现跳转
            ExecutionEntity executionEntity = commandContext.getExecutionEntityManager().findById(executionId);
            executionEntity.setCurrentFlowElement(flows.get(0));
            commandContext.getAgenda().planTakeOutgoingSequenceFlowsOperation(executionEntity, true);
            return null;
        }
    }


    /**
     每个项目都有自己的用户、角色表，Activiti也有自己的用户、用户组表。
     因此项目中的用户、角色与Activiti中的用户、用户组要做整合。
     */
    public void aboutUsers(){
        //项目中每创建一个新用户，对应的要创建一个Activiti用户
        //两者的userId和userName一致
        User admin=identityService.newUser("1");
        admin.setLastName("admin");
        identityService.saveUser(admin);

        //项目中每创建一个角色，对应的要创建一个Activiti用户组
        Group adminGroup=identityService.newGroup("1");
        adminGroup.setName("admin");
        identityService.saveGroup(adminGroup);

        //activiti的用户与用户组关系绑定
        identityService.createMembership("1","1");
    }

    /**
     根据用户组查询待办任务
     */
    public void doMyTask(){
        String userId="1";
        //查出当前登录用户所在的用户组
        List<Group> groups = identityService.createGroupQuery()
                .groupMember(userId).list();
        List<String> groupNames = groups.stream()
                .map(group -> group.getName()).collect(Collectors.toList());

        //查询用户组的待办理任务
        int pageNum=1;
        int pageSize=20;
        List<Task> tasks = taskService.createTaskQuery()
                .processDefinitionKey("holidays")
                .taskCandidateGroupIn(groupNames)
                .listPage(pageNum - 1, pageSize);

        //根据待办任务查询流程实例ID
        List<String> processInstanceIds = tasks.stream()
                .map(task -> task.getProcessInstanceId())
                .collect(Collectors.toList());

        //根据流程实例ID查询关联的业务数据
    }

    /**
     归还组任务：个人如何不想办理组任务了，可以归还组任务
     */
    public void setAssigneeToGroupTask(){
        //任务id
        String taskId="62504";
        //任务负责人id
        String userId="lisi";
        //校验是否为任务负责人，只有任务负责人才能归还组任务
        Task task=taskService.createTaskQuery().taskId(taskId).taskAssignee(userId).singleResult();
        if(task!=null){
            //归还组任务，设置任务负责人为null
            taskService.setAssignee(taskId,null);
        }
    }

    /**
     任务交接：任务负责人将任务委托给其他候选人办理
     */
    public void setAssigneeToCandidateUser(){
        //任务id
        String taskId="62504";
        //任务负责人id
        String userId="lisi";
        //校验是否为任务负责人，只有任务负责人才能委托任务
        Task task=taskService.createTaskQuery().taskId(taskId).taskAssignee(userId).singleResult();
        if(task!=null){
            //选择的委托人/候选人
            String candidateUser="huangwu";
            //校验该候选人用户有没有拾取任务的资格
            Task task1=taskService.createTaskQuery().taskId(taskId).taskCandidateUser(candidateUser).singleResult();
            if(task1!=null){
                //交接任务给候选人
                taskService.setAssignee(taskId,candidateUser);
            }
        }
    }

    /**
     当审批节点的不通过状态没有设置另外的连线时
     */
    public void doAudit(){
        String taskId = "47504";
        //审批表id
        String auditId = "29703";
        //查询当前审批节点
        Task vacationAudit = taskService.createTaskQuery()
                .taskId(taskId).singleResult();
        int statusResult=1;
        if (statusResult == 1) {//审批通过
            //设置流程参数：审批结果ID
            Map<String, Object> args = new HashMap<>();
            args.put("status", auditId);

            //设置审批任务的执行人
            String userId="1";
            taskService.claim(vacationAudit.getId(), userId);
            //执行人完成审批任务
            taskService.complete(vacationAudit.getId(), args);
        } else {
            //审批不通过，结束流程
            runtimeService.deleteProcessInstance(vacationAudit.getProcessInstanceId(), auditId);
        }
    }

    /**
     当前用户在处理自己的任务时，可以指定下一个任务的办理人，可以通过用户、用户组、指定类等来设置
     具体见https://blog.csdn.net/qq_30739519/article/details/51225067
     */

    /**
     设置多个审批人的话，可以用候选人的方式，
     也可以在审批人的任务监听接口实现类中，添加多个审批人，详见https://blog.csdn.net/hichinamobile/article/details/53930078
     */

    /**
        A部门的员工请假单要先提交给A部门经理审批，B部门的员工请假单要先提交给B部门经理审批，通过后再给总监审批。
     这种情况如何保证经理审批环节指定到对应的部门经理那里？
     用户、用户组------- 用户、角色
     1、找到经理用户组---查找经理用户组里面的经理---找到员工部门id----根据经理id与部门id可以确定有哪些经理可以审批该员工的请假单---经理审批
     2、
     */



    /**
     流程定义的挂起、激活
     某些情况需要将流程暂停而不是直接删除，操作流程定义为挂起状态
     流程暂停后将不会再继续执行，流程实例的当前任务将报异常
     */
    @Test
    public void ProcessDedinitionSuspendOrActive(){
        //流程定义ID
        String processDefinitionId="holiday:1:52504";
        //获得流程定义
        ProcessDefinition processDefinition=repositoryService.createProcessDefinitionQuery().processDefinitionId(processDefinitionId).singleResult();
        //是否暂停
        boolean suspend=processDefinition.isSuspended();
        if(suspend){
            //如果暂停则激活，这个流程定义下的所有流程实例都将激活
            repositoryService.activateProcessDefinitionById(processDefinitionId,true,null);
            System.out.println("流程定义："+processDefinitionId+"已激活");
        }else{
            //如果激活则挂起，这个流程定义下的所有流程实例都将挂起
            repositoryService.suspendProcessDefinitionById(processDefinitionId,true,null);
            System.out.println("流程定义："+processDefinitionId+"已挂起");
        }
    }

    /**
     流程实例的挂起、激活
     某些情况需要将流程暂停而不是直接删除，操作流程实例为挂起状态
     流程实例暂停后将不会再继续执行，流程实例的当前任务将报异常
     */
    @Test
    public void ProcessInstanceSuspendOrActive(){
        //流程实例ID
        String processInstanceId="67501";
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        RuntimeService runtimeService = processEngine.getRuntimeService();
        //获得流程实例
        ProcessInstance processInstance=runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
        System.out.println(processInstance);
        //是否暂停
        boolean suspend=processInstance.isSuspended();

        System.out.println(suspend);
        if(suspend){
            //如果暂停则激活
            runtimeService.activateProcessInstanceById(processInstanceId);
            System.out.println("流程实例："+processInstanceId+"已激活");
        }else{
            //如果激活则挂起，这个流程实例将挂起
            runtimeService.suspendProcessInstanceById(processInstanceId);
            System.out.println("流程实例："+processInstanceId+"已挂起");
        }
    }


    /**
     查询流程定义信息
     */
    @Test
    public void getProcessDefinition(){
        //得到ProcessDefinitionQuery对象,可以认为它就是一个查询器
        ProcessDefinitionQuery processDefinitionQuery = repositoryService.createProcessDefinitionQuery();
        //设置条件，并查询出当前的所有流程定义   查询条件：流程定义的key=holidays
        List<ProcessDefinition> list = processDefinitionQuery.processDefinitionKey("holidays")
                .orderByProcessDefinitionVersion() //设置排序方式,根据流程定义的版本号进行排序
                .desc().list();
        //输出流程定义信息
        for(ProcessDefinition processDefinition :list){
            System.out.println("流程定义ID："+processDefinition.getId());
            System.out.println("流程定义名称："+processDefinition.getName());
            System.out.println("流程定义的Key："+processDefinition.getKey());
            System.out.println("流程定义的版本号："+processDefinition.getVersion());
            System.out.println("流程部署的ID:"+processDefinition.getDeploymentId());

        }
    }

}
