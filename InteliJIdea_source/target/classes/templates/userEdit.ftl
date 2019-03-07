<#import "parts/common.ftl" as c>
<@c.page>
    User editor
    <form action="/user" method="post">
        <input type="text" value="${user.username}" name="username" >
        <#list role as r>
            <div>
                <label><input type="checkbox" name="${r}" ${user.roles?seq_contains(r)?string("checked","")}>${r}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId" >
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Save</button>
    </form>
</@c.page>