<#macro login path isRegisterForm>
    <form action="${path}" method="post">

        <div class="form-group">
            <label for="exampleInputEmail1" class="col-sm-4"> User Name : </label>
            <div class="col-sm-4"> </div>
            <input type="text" name="username"  class="form-control"/> </div>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        <div class="form-group">
            <label for="exampleInputPassword1" class="col-sm-4"> Password:  </label>
            <div class="col-sm-4"> </div>
                <input type="password" name="password" class="form-control"/></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration"> >Add new user< </a></#if>
        <button type="submit" class="btn btn-primary" ><#if isRegisterForm>Registr<#else>Sign in</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" class="btn btn-primary" value="Sign Out"/>
    </form>
</#macro>
