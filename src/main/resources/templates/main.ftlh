
<#import "parts/common.ftlh" as c>

<@c.page>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        add your feedback
    </a>
    <div class="collapse" id="collapseExample">
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="+message" />
            <input type="text" name="tag" placeholder="Tag"/>
            <input type='hidden' value='${_csrf.token}' name="${_csrf.parameterName}"/>
            <button type="submit"  class="btn btn-primary"> +add message</button>
        </form>
    </div>
    <div>Filter</div>
<div class="form-row">
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?if_exists}">
        <button type="submit" class="btn btn-primary">Filter</button>
    </form></div>
    <div>list messages</div>
    <#list messages as message>
       <div class="card m-2" style="width: 45rem;">

            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No message
    </#list>
</div>
</@c.page>
