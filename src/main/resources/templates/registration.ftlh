<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
     <div class="mb-1"> Add new user / registration new user</div>
    ${message?if_exists}
    <@l.login "/registration" true />
</@c.page>
