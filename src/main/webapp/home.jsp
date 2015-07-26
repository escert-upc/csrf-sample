<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Hello World!</h2>
<p>Benvingut al sistema de control d'alarmes de l'edifici</p>
<c:if test="${not empty estat}">
<p>Ara mateix l'alarma està <b>${estat}</b>
<c:if test="${not empty minuts}">${minuts} minuts</c:if>
</p>
</c:if>
<ul>
<c:url value="/admin/alarma?accio=desactivar" var="desactivar"/>
<c:url value="/admin/alarma?accio=activar" var="activar"/>
<c:url value="/admin/alarma" var="retardar"/>
<li><a href="${desactivar}">Desactivar l'alarma</a>
<li><a href="${activar}">Activar l'alarma</a>
<li>
<form action="${retardar}" method="POST">
	<label>Minuts:<input name="minuts" type="text" value="10"/></label>
	<input type="hidden" name="accio" value="retardar"/>
	<input type="submit" value="Activar amb retard">
</form>
</ul>
</body>
</html>
