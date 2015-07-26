<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Canviant l'estat de l'alarma!!!</h2>

<c:if test="${param.accio=='desactivar'}">
<c:set var="desactivada" value="true" scope="session"/>
</c:if>
<c:if test="${param.accio=='activar'}">
<c:set var="desactivada" value="false" scope="session"/>
</c:if>

<p>Acabes de <b><c:out value="${param.accio}"/></b> l'alarma</p>
<a href="../home">Tornar a home</a>
</body>
</html>
