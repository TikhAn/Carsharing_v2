<#-- @ftlvariable name="" type="" -->
<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>Feed back page</div>
    <div>
        <@l.logout/>
        <span> <a href="/user"> User List </a></span>
    </div>
    <div>Feed back messages</div>
    <div>Your messages</div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="+message" />
            <input type="text" name="tag" placeholder="Tag"/>
            <input type='hidden' value='${_csrf.token}' name="${_csrf.parameterName}"/>
            <button type="submit"> +add message</button>
        </form>
    </div>
    <div>Filter</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?if_exists}">
        <button type="submit">Find</button>
    </form>
    <div>list messages</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No message
    </#list>

</@c.page>
