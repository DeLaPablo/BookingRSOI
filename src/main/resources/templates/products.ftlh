<!DOCTYPE html>
<html>
<head>
    <title>GEOGRAPHIYAPUTESHESTVIY</title>
</head>
<body>
<h1>GEOGRAPHIYAPUTESHESTVIY</h1><hr>
<h4>Все возможные туры:</h4>
<form action="/" method="get">
    Поиск по названию тура: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} бел.руб.  | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Туров нет</h3>
</#list>
<hr>
<h3>Добавить новый тур</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название тура: <input type="text" name="title"/><br><br>
    Описание тура: <input type="text" name="description"/><br><br>
    Стоимость: <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    Имя компании: <input type="text" name="author"/><br><br>
    Первая фотография: <input type="file" name="file1"/><br><br>
    Вторая фотография: <input type="file" name="file2"/><br><br>
    Третья фотография: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Добавить тур"/>
</form>
</body>
</html>