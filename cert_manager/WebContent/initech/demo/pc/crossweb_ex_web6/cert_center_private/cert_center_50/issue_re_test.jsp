<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link href="/common/style/body_style.css" rel="stylesheet" type="text/css"></link>
<link href="/common/style/table_style.css" rel="stylesheet" type="text/css"></link>
<link href="/common/style/text_style.css" rel="stylesheet" type="text/css"></link>
<link href="/common/style/form_style.css" rel="stylesheet" type="text/css"></link>
<script src="/initech/common/common.js"></script>
<script src="/common/script/jquery-1.11.1.js"></script>
<script src="/common/script/jquery.mobile-1.1.0-rc.1.min.js"></script>
<script language="javascript" src="/demo/pc/moasign/script/moasign.js"></script>
</head>
<body bgcolor="#f3f4f5">
<div id=test_bed>

	<table border="0" width="800px">
		<tr><td align="right">
			<span id="menu_situation">PC Demo > INISAFE MoaSign S > 공인인증센터 예제 > 공인인증서 재발급 예제</span>
		</td></tr>
	</table>
	
	<jsp:include page="./test_menu.html" />
	
	<h1>설명</h1>
	<div class="desc" style="width:800px;">
		<h3>INISAFE MoaSign 공인인증 테스트를 할 수 있습니다.</h3>
		<h3>현재주소 : <%= request.getRequestURL() %></h3>
	</div>
	<br>
	
	<h1>MoaSign 공인인증 재발급 예제</h1>
	
	<div class="content" style="width:800px;">
		<form action="issue_corfirm.jsp" method="post" id="issueForm" name="issueForm" OnSubmit="return true;">
		<input type="hidden" id="isReissue" name="isReissue" value="on"/>
		<table class="basic_table" style="width:100%;">
		    <colgroup>
		        <col width="20%" />
		        <col width="40%" />
		        <col width="40%" />
		    </colgroup>
		    <tr>
	            <th>항목</th>
	            <th>내용</th>
	            <th>비고</th>
	        </tr>
	        <tr>
	            <td align="center"><b>발급기관(CA)</b></td>
	            <td>
	        		<select name="select_ca" id="select_ca" style="width:95%; height: 27px;"> 
						<option value="01">(01) 금융결제원(KFTC)</option>
						<option value="03">(03) 전자인증(CrossCert)</option>
						<option value="04">(04) 코스콤(SignKorea)</option>					
						<option value="05">(05) 정보인증(SignGate)</option>					
					</select>
				</td>
	            <td></td>
	        </tr>
	        <tr>
            	<td align="center"><b>인증서 종류(정책)</b></td>
            	<td>
            		<select name='certpolicy' style="width:95%; height: 27px;">
						<option value = '01'>(01) 범용 개인인증서</option>
						<option value = '02'>(02) 용도제한용 기업인증서</option>
						<option value = '04' selected>(04) 용도제한용 개인인증서</option>
						<option value = '05'>(05) 범용 기업인증서</option>
						<option value = '68'>(68) 전자세금계산용인증서</option>
						<option value = '61'>(61) 용도제한용 기업뱅킹 인증서</option>
					</select>
            		
            	</td>
            	<td></td>
            </tr>
	        <tr>
	            <td align="center"><b>주민/사업자번호</b></td>
	            <td>
	        		<input type="text" name="regno" id="regno" style="width:95%" value="">
				</td>
	            <td>"-" 없이 숫자만 기입하십시오.</td>
	        </tr>
	        <tr>
	            <td align="center"><b>사용자아이디</b></td>
	            <td>
	        		<input type="text" name="userid" id="userid" value="" style="width:95%">
				</td>
	            <td></td>
	        </tr>
	        <tr>
	            <td align="center"><b>이름/법인명</b></td>
	            <td>
	        		<input type="text" id="detailName" name="detailName" style="width:95%" value="홍길동(INI)">
				</td>
	            <td>예> 홍길동(INI)</td>
	        </tr>
	        <tr>
            	<td align="center"><b>전자우편(e-mail)</b></td>
            	<td>
            		<input type="text" name="usermail" value="hkd@initech.com" style="width:95%"/>
            	</td>
            	<td></td>
            </tr>
		</table>
		<br/>
		<table border=0 width="100%">
			<tr>
				<td align="right">
					<input type="submit" class="button blue medium" value="인증서 등록 요청" />
				</td>
			</tr>
		</table>
	</form>
	</div>
	<div style="width:800px;" align="right">
		<a href="javaScript:view_source('<%=request.getRequestURL()%>');"> &lt; .jsp 소스보기 &gt; </a>
	</div>
</div>
</body>
</html>