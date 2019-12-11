<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:forEach items="${result}" var="time"> 
<li class="timeSelect">${time.timeInfo_start}</li>
</c:forEach> --%>

<c:forEach items="${result}" var="time"> 
<tr class="timeSelect mtd">
<td style="width: 50px;">${time.timeInfo_start}</td>

<!-- 여기에 좌석 수를 넣어야 한다. -->

<c:forEach items="${seatList}" var="seat" varStatus="status">

<c:if test="${time.timeInfo_start eq seat.timeInfo_start}">
<td>${seat.seatCount} / 195</td>
</c:if>


</c:forEach>



</tr>
</c:forEach> 
