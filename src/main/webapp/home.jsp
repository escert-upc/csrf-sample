<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Hello World!</h2>
<p>Benvingut al sistema de control d'alarmes de l'edifici</p>
<c:if test="${desactivada}">
<p>Ara mateix l'alarma està DESACTIVADA!</p>
</c:if>
<ul>
<c:url value="/admin/alarma?accio=desactivar" var="desactivar"/>
<c:url value="/admin/alarma?accio=activar" var="activar"/>
<li><a href="${desactivar}">Desactivar l'alarma</a>
<li><a href="${activar}">Activar l'alarma</a>
</ul>
</body>
</html>
