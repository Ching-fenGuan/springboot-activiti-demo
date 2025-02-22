<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Activiti6流程设计器Demo</title>

</head>
<body>
<h2>
	<a href='/create?name=activiti&key=123456'>绘制流程</a>
</h2>
<div>
	<table width="100%">
	    <tr>
	        <td width="10%">模型编号</td>
	        <td width="10%">版本</td>
	        <td width="20%">模型名称</td>
	        <td width="20%">模型key</td>
            <td width="20%">部署ID(发布后有值</td>
	        <td width="40%">操作</td>
	    </tr>
	        <#list modelList as model>
	        <tr>
	            <td width="10%">${model.id}</td>
	            <td width="10%">${model.version}</td>
	            <td width="20%"><#if (model.name)??>${model.name}<#else> </#if></td>
	            <td width="20%"><#if (model.key)??>${model.key}<#else> </#if></td>
                <td width="20%"><#if (model.deploymentId)??>${model.deploymentId}<#else> </#if></td>
	            <td width="40%">
	             <a href="/editor?modelId=${model.id}">编辑</a>
	             <a href="/publish?modelId=${model.id}">发布</a>
				 <a href="/copy?modelId=${model.id}">复制</a>
					<a href="/delete?modelId=${model.id}">删除(强制删除流程定义)</a>
                 <a href="/revokePublish?modelId=${model.id}">删除流程定义(非强制)</a>
	            </td>
	        </tr>
	       </#list>
	</table>
</div>

<br>
<br>
<br>

<h5>--------------------------------------- 流程图跟踪 -----------------------------------------</h5>
<img src="/process/history/getProcessImg/2501" width="900px" height="500px">

</body>
</html>