<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Order confirmation</title>
<meta name="robots" content="noindex,nofollow" />
<meta name="viewport" content="width=device-width; initial-scale=1.0;" />
<link
	href="${pageContext.request.contextPath}/resources/css/pay/receipt.css"
	rel="stylesheet">

</head>
<body>
	<!-- Header -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 10px 10px 0 0;">
					<tr class="hiddenMobile">
						<td height="40"></td>
					</tr>
					<tr class="visibleMobile">
						<td height="30"></td>
					</tr>

					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="left" class="col">
												<tbody>
													<tr>
														<td align="left"><img
															src="http://www.supah.it/dribbble/017/logo.png"
															width="32" height="32" alt="logo" border="0" /></td>
													</tr>
													<tr class="hiddenMobile">
														<td height="40"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
															CGV에서 결제하신 내역으로, 예매번호는 마이페이지에서 다시 확인이 가능합니다.</td>
													</tr>
												</tbody>
											</table>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="right" class="col">
												<tbody>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td
															style="font-size: 21px; color: #ff0000; letter-spacing: -1px; font-family: 'Open Sans', sans-serif; line-height: 1; vertical-align: top; text-align: right;">
															Invoice</td>
													</tr>
													<tr>
													<tr class="hiddenMobile">
														<td height="50"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: right;">
															<small>ORDER</small>${pay.partner_order_id}<br /> <small>${pay.approved_at}</small>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!-- /Header -->
	<!-- Order Details -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
										<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
										<fmt:parseNumber value="${kidCount}" type="number" var="kid"/>
										<fmt:parseNumber value="${adultCount}" type="number" var="adult"/>
										<fmt:parseNumber value="${adultCount + kidCount}" type="number" var="people"/>
										<c:set var="bc" value="${fn:split(bookCode,',')}" />
										<c:set var="total" value="${people}"/>
										<c:forEach begin="0" end="${adult-1}" var = "i">
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 10px 0;"
														class="article">${bc[i]}</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"><small>CGV성인</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="center">1</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="right">₩10000</td>
												</tr>
											</c:forEach>
											<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
											<c:forEach begin="${adult}" end="${people-1}" var="i">
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 10px 0;"
														class="article">${bc[i]}</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"><small>CGV청소년</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="center">1</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 10px 0;"
														align="right">₩8000</td>
												</tr>
											</c:forEach>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
										
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Order Details -->
	<!-- Total -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
								<td>
									<!-- Table Total -->
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>결제 금액</strong>
												</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>₩${pay.amount.total}</strong>
												</td>
											</tr>
										</tbody>
									</table> <!-- /Table Total -->

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Total -->
	<!-- Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">

														<tbody>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>BILLING INFORMATION</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	Philip Brooks<br> Public Wales, Somewhere<br>
																	New York NY<br> 4468, United States<br> T:
																	202-555-0133
																</td>
															</tr>
														</tbody>
													</table>


													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>PAYMENT METHOD</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	${pay.payment_method_type}<br> Credit Card Type:${pay.card_info.issuer_corp} <br>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">
														<tbody>
															<tr class="hiddenMobile">
																<td height="35"></td>
															</tr>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>SHIPPING INFORMATION</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	Sup Inc<br> Another Place, Somewhere<br> New
																	York NY<br> 4468, United States<br> T:
																	202-555-0171
																</td>
															</tr>
														</tbody>
													</table>


													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="hiddenMobile">
																<td height="35"></td>
															</tr>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>SHIPPING METHOD</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	UPS: U.S. Shipping Services</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="30"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable" bgcolor="#e1e1e1">

		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 0 0 10px 10px;">
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td
											style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
											Have a nice day.</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr class="spacer">
						<td height="50"></td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
	
	<script type="text/javascript">
		var bookCode = "${bookCode}".split(',');
		for ( var i in bookCode ) {
	       console.log(bookCode[i]);
	      }
	</script>
</body>
</html>