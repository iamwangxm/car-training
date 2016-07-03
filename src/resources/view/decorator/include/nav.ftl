<ul class="nav">
  <li><a href="<@url value="/"/>" class="ajax view">${action.getText("index")}</a></li>
  <@authorize ifAnyGranted="ROLE_ADMINISTRATOR">
  <li><a href="<@url value="/user"/>" class="ajax view">${action.getText("user")}</a></li>
	</@authorize>
	
	<li class="dropdown">
 	<a href="#" class="dropdown-toggle" data-toggle="dropdown">用户中心</a>
	<ul class="dropdown-menu">
	  <@authorize ifAnyGranted="ROLE_ADMINISTRATOR">
	    <li><a href="<@url value="/usercenter"/>" class="ajax view">${action.getText("usercenter")}</a></li>
        <li><a href="<@url value="/trainer"/>" class="ajax view">${action.getText("trainer")}</a></li>
	  	<li><a href="<@url value="/trainerEssay"/>" class="ajax view">${action.getText("trainerEssay")}</a></li>
	  	<li><a href="<@url value="/courses"/>" class="ajax view">${action.getText("courses")}</a></li>
	  	 <li><a href="<@url value="/autobots"/>" class="ajax view">${action.getText("autobots")}</a></li>
        <li><a href="<@url value="/autobotsComment"/>" class="ajax view">${action.getText("autobotsComment")}</a></li>
	  </@authorize>
  	</ul>
  </li>

  
  <li class="dropdown">
 	<a href="#" class="dropdown-toggle" data-toggle="dropdown">公司管理</a>
	<ul class="dropdown-menu">
	  <@authorize ifAnyGranted="ROLE_ADMINISTRATOR">
        <li><a href="<@url value="/company"/>" class="ajax view">${action.getText("company")}</a></li>
        <li><a href="<@url value="/jobs"/>" class="ajax view">${action.getText("jobs")}</a></li>
	  	<li><a href="<@url value="/deliveryResume"/>" class="ajax view">${action.getText("deliveryResume")}</a></li>
	  </@authorize>
  	</ul>
  </li>
  
  
  <li class="dropdown">
 	<a href="#" class="dropdown-toggle" data-toggle="dropdown">专题管理</a>
	<ul class="dropdown-menu">
	  <@authorize ifAnyGranted="ROLE_ADMINISTRATOR">
        <li><a href="<@url value="/topic"/>" class="ajax view">${action.getText("topic")}</a></li>
        <li><a href="<@url value="/topicComment"/>" class="ajax view">${action.getText("topicComment")}</a></li>
	  </@authorize>
  	</ul>
  </li>
  
   <li class="dropdown">
 	<a href="#" class="dropdown-toggle" data-toggle="dropdown">系统工具</a>
	<ul class="dropdown-menu">
    <@authorize ifAnyGranted="ROLE_ADMINISTRATOR">
      <li><a href="<@url value="/user"/>" class="ajax view">${action.getText("user")}</a></li>
      <li><a href="<@url value="/loginrecord"/>" class="ajax view">${action.getText("loginrecord")}</a></li>
      <li><a href="<@url value="/common/setting"/>" class="ajax view">${action.getText("setting")}</a></li>
      <li><a href="<@url value="/common/upload"/>" class="ajax view">${action.getText("upload")}</a></li>
      <li><a href="<@url value="/common/region"/>" class="ajax view">${action.getText("region")}</a></li>
  	</@authorize>
  	</ul>
  </li>
</ul>