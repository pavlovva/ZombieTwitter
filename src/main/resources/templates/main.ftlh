<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<@l.logout />
    <span><a href="/user">User List</a> </span>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Введите сообщение">
        <input type="text" name="tag" placeholder="Введите тэг">
        <input type="file" name="file" placeholder="Загрузите файл">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Добавить</button>
    </form>
</div>
<div style="padding-top: 10px; padding-bottom: 10px">Список сообщений:</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter!}">
    <div><input type="hidden" /></div>
    <button type="submit">Найти</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}" width="150" height="150">
            </#if>
        </div>
    </div>
<#else>
    <div>No messges :(</div>
</#list>
</@c.page>