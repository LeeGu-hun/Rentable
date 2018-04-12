<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<title>MVC 게시판</title>

<script language="javascript">
   function addboard() {
      boardform.submit();
   }
   function display1(box) {
      indivisual1.style.display = 'block';
      company1.style.display = 'none';
   }

   function display2(box) {
      indivisual1.style.display = 'none';
      company1.style.display = 'block';
   }

   window.onload = display1
</script>
<script>
   function itemChange() {

      var clothing = [ "남성패션", "여성패션", "베이비패션", "가방", "신발", "악세서리", "잡화",
            "기타" ];
      var furniture = [ "침실가구", "주방가구", "거실가구", "옷장&수납장", "의자&책상&책장", "인테리어",
            "사무용가구", "기타" ];
      var living = [ "주방용품", "생활용품", "반려동물용품", "청소용품", "문구", "기타" ];
      var digital = [ "계절가전", "pc", "pc주변기기", "게임", "휴대폰", "음향기기", "TV",
            "카메라", "차량용디지털기기", "주방용가전", "사무기기", "기타" ];
      var sports = [ "스포츠의류", "캠핑", "골프", "자전거", "헬스", "요가", "낚시", "구기",
            "검도", "수용", "스키", "기타스포츠" ];
      var book = [ "도서", "음반", "dvd", "기타" ];

      var selectItem = $("#RP_catemain").val();

      var changeItem;

      if (selectItem == "clothing") {
         changeItem = clothing;
      } else if (selectItem == "furniture") {
         changeItem = furniture;
      } else if (selectItem == "living") {
         changeItem = living;
      } else if (selectItem == "digital") {
         changeItem = digital;
      } else if (selectItem == "sports") {
         changeItem = sports;
      } else if (selectItem == "book") {
         changeItem = book;
      }

      $('#RP_catesub').empty();

      for (var count = 0; count < changeItem.length; count++) {
         var option = $("<option>" + changeItem[count] + "</option>");
         $('#RP_catesub').append(option);
      }

   }
   function save() {
      var RP_itemname = document.getElementById("RP_itemname");
      var RP_catemain = document.getElementById("RP_catemain");
      var RP_catesub = document.getElementById("RP_catesub");
      var RP_startdate = document.getElementById("RP_startdate");
      var RP_enddate = document.getElementById("RP_enddate");
      var RP_price = document.getElementById("RP_price");
      var RP_detail = document.getElementById("RP_detail");
      var imgInp = document.getElementById("imgInp");
      var RP_guarantee = document.getElementById("RP_guarantee");

          
      if (RP_itemname.value == '' || RP_itemname.value == null||
    		  RP_catesub.value == '' || RP_catesub.value == null||
    		  RP_catemain.value == '' || RP_catemain.value == null||
    		  RP_startdate.value == '' || RP_startdate.value == null||
    		  RP_enddate.value == '' || RP_enddate.value == null||
    		  RP_price.value == '' || RP_price.value == null||
    		  RP_detail.value == '' || RP_detail.value == null||
    		  imgInp.value == '' || imgInp.value == null) {
           document.getElementById('result').textContent = '빈칸을 모두 입력해주세요';
           return false;
        }
      
      updateForm.submit();
      alert("수정이 완료되었습니다.");
      
   }
</script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#imgInp,#imgInp2,#imgInp3").on('change', function(){
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }

              reader.readAsDataURL(input.files[0]);
            }
        }
        


    </script>

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/category.css?version=1.22" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/main.css?version=1.12" />
   
</head>
<body>
   <!-- header -->
   <div id="rent_head">
      <%@include file="/category/category.jsp"%>
   </div>
   <!-- body -->
   <div id="rent_body">
      <div id="rent_body_contentss">
         <!-- 게시판 등록 -->
         <form action="../itemModifyAction" name="updateForm"
            enctype="multipart/form-data" method="POST">
            <table>
               <tr align="center" valign="middle">
                  <th colspan="5"><h3>상품 수정 페이지</h3>
                  <input type="hidden" id="RP_itemnum" name="RP_itemnum" value="${prodBean.RP_itemnum}" >
                  </th>
                  
               </tr>
               <tr>
                  <td><img id="blah" src="#" alt="이미지를 등록하세요" width="700" height="400" /></td>
                  <td>
                     <table style="height: 400px; width: 700px;">
                        <tr>
                           <td style="font-family: 돋음; font-size: 12" height="16">
                              <div align="center"><h4>상품명</h4></div>
                              
                           </td>
                           <td><input id="RP_itemname"name="RP_itemname" type="text" size="51" value="${prodBean.RP_itemname}"
                              maxlength="100" required/>

                        </tr>
                        <tr>
                           <td style="font-family: 돋음; font-size: 12" height="16">
                              <div align="center"><h4>카테고리</h4></div>
                           </td>
                           <td><select id="RP_catemain" name="RP_catemain"
                              onchange="itemChange()" style="width: 190px; height: 25px;" required>
                                 <option>대분류</option>
                                 <option value="clothing">의류&잡화</option>
                                 <option value="furniture">가구</option>
                                 <option value="living">생활</option>
                                 <option value="digital">디지털&가전</option>
                                 <option value="sports">스포츠&레저</option>
                                 <option value="book">도서&음반</option>
                                 
                                 
                                 <fmt:formatDate value="${myDate}" pattern="yyyy-MM-dd" />




                           </select>&nbsp; <select id="RP_catesub" name="RP_catesub"
                              style="width: 190px; height: 25px;">
                                 <option>소분류</option>

                           </select></td>
                        </tr>
                        <tr>
                           <td style="font-family: 돋음; font-size: 12" height="16">
                              <div align="center"><h4>대여기간</h4></div>
                           </td>
                           <td><input type="date" id ="RP_startdate"name="RP_startdate" required
                              style="width: 175px; height: 20px;" /> &nbsp;~&nbsp; <input
                              id="RP_enddate" name="RP_enddate" type="date" 
                              style="width: 175px; height: 20px;" required /></td>
                        </tr>
                        <tr>
                           <td style="font-family: 돋음; font-size: 12" height="16">
                              <div align="center"><h4>일일 대여료</h4></div>
                           </td>
                           <td><input id="RP_price" name="RP_price" type="text" value="${prodBean.RP_price}"
                              maxlength="10" required/> <input id="calculator" type="button"
                              size="10" maxlength="10" value="합리적인 대여료 계산기" /></td>

                        </tr>
                     </table>
                  </td>

               </tr>

               <tr>


                  <td style="font-family: 돋음; font-size: 12">
                     <div align="left">
                        <input id="imgInp" name="RP_img1" type="file"/> <input
                           id="imgInp2"name="RP_img2" type="file" /> <input id="imgInp3" name="RP_img3"
                          type="file" />
                     </div>
                  </td>

               </tr>

               <tr align="center" valign="middle">
                  <td colspan="5" style="padding-right: 15px"><h4>상품 상세 정보</h4></td>
               </tr>

            </table>


            <table>
               <tr>
                  <td>&nbsp;<textarea id="RP_detail"name="RP_detail"  cols="200" rows="15" >${prodBean.RP_detail}</textarea><br>
                     <br></td>
               </tr>
            </table>
            <table style=" margin: 5px auto;border-style: groove;  " >
            
               <tr align="center" valign="middle" >
                  <td colspan="5" style="font-family: 돋음; font-size: 12">
                  <h4>※안심보장
                     서비스</h4><br>
                  
                  <div class="RP_guarantee" ><label style="font-weight: bold;">사   용</label> <input type="radio"
                     onClick="display1()"  name="RP_guarantee" checked="checked" /> <label style="font-weight: bold;">사용 안함</label> <input
                     name="RP_guarantee" value="0"
                     type="radio" onclick="display2()" />
                     </div></td>

               </tr>

               <tr id="indivisual1">
                  <td style="color:red;">안심보장 서비스란?<br> 자신의 물건을 빌려주는 것에 부담이있는 공급자를 위해<br>
                     수익의 일부를 수수료로 내고 미반납시 제품금액의 일정한 부분을 보장 <br>


                  </td>
                  <td>
                  <div class="RP_guarantee" >
         
                  <label style="color:#FFD700;font-weight: bold;">-5.4%:물품가격의 최대 60% 보장</label> <input
                     name="RP_guarantee" value="60" type="radio" /><br> <label style="color:#c0c0c0;font-weight: bold;">-3.9%:물품가격의
                        최대 45% 보장</label> <input name="RP_guarantee" type="radio" value="45" /><br> <label style="color:#a0522d; font-weight: bold;">-2.5%:물품가격의
                        최대 30% 보장</label> <input name="RP_guarantee" type="radio" value="30" /></div></td>
               </tr>
               <tr id="company1" style="display: none">
                  <td>'사용안함' 을 선택하셨습니다.</td>
               </tr>
            </table>



            <table>
               <tr>
                  <td colspan="2">&nbsp;<span id="result" style="font-size:10pt;color:#e22424;">${requestScope.result }</span></td>
               </tr>


               <tr align="center" valign="middle">

                  <a href="javascript:save()" class="button">수정 완료</a>&nbsp;&nbsp;
                  <a href="javascript:history.go(-1)">[뒤로]</a>
                  </td>
               </tr>
            </table>
            


         </form>
         <!-- 게시판 등록 -->
      </div>
   </div>
   <!-- footer -->
   <div id="rent_footer">
      <div id="category_name"></div>
   </div>




</body>

</html>
