<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Canviant l'estat de l'alarma!!!</h2>

<c:if test="${param.accio=='desactivar'}">
<c:set var="estat" value="desactivada" scope="session"/>
</c:if>
<c:if test="${param.accio=='activar'}">
<c:set var="estat" value="activada" scope="session"/>
</c:if>
<c:if test="${param.accio=='retardar'}">
<c:set var="estat" value="retardada" scope="session"/>
<c:set var="minuts" value="${param.minuts}" scope="session"/>
</c:if>

<p>Acabes de deixar l'alarma <b><c:out value="${estat}"/></b></p>
<a href="../home">Tornar a home</a>
</body>
</html>
