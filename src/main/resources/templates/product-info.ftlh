<!DOCTYPE html>
<html>
<head>
    <title>GEOGRAPHIYAPUTESHESTVIY</title>
</head>
<body>
<h1>GEOGRAPHIYAPUTESHESTVIY</h1><hr>
<h4>Подробная информация о туре:</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название тура: </b>${product.title}<br>
<b>Описание тура: </b>${product.description}<br>
<b>Стоимость: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Имя компании: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>