<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Hello World!</h2>
<p>Benvingut al sistema de control d'alarmes de l'edifici</p>
<c:if test="${desactivada}">
<p>Ara mateix l'alarma està DESACTIVADA!</p>
</c:if>
<ul>
<li><a href="admin/alarma?accio=desactivar">Desactivar l'alarma</a>
<li><a href="admin/alarma?accio=activar">Activar l'alarma</a>
</ul>
</body>
</html>
