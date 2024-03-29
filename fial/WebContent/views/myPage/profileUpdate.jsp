<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#color input{width:30px; height:30px; border:1px solid lightgray; margin-right:5px;}
	#updateForm>form>div{margin-bottom:35px;}
	li{margin-bottom:20px; color:orangered;}
	#searchForm div{display:inline-block;}
	.form-center {
		text-align: center !important;
		content: center !important;
	}
</style>
</head>
<body>
	
	<%@include file="../includes/header.jsp" %>

	<div class="container" style="margin-bottom:70px;">
		
		<div class="navigation d-flex justify-content-center" style="margin-top:100px; margin-bottom:30px;">
			<!-- 메뉴바 -->
			<ul class="nav nav-primary nav-tabs mt-3 d-flex flex-column flex-md-row">
				<li class="nav-item">
					<a class="nav-link active" data-toggle="tab" href="#photos"> 
					<i class="fa fa-edit"></i>
						프로필 수정
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#power"> 
					<i class="fa fa-ad"></i>
						광고 관리
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="modal" href="#updatePwd"> 
					<i class="fa fa-key"></i>
						비밀번호 변경
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="modal" href="#deleteMem"> 
					<i class="fa fa-ban"></i>
						회원 탈퇴
					</a>
				</li>
			</ul>
		</div>
		

		<div class="profile-tabs tab-content">
			<!-- 프로필 수정 탭 -->
			<div class="tab-pane fade show active" id="photos">
				<div class="col-12 col-md-5" style="margin-left:auto; margin-right:auto;">
					<div class="register-form" id="updateForm">
					
						<form>
							<div class="form-group">
								<label for="email">Email address</label>
								<input type="email" class="form-control" id="email" name="email"
									aria-describedby="emailHelp" placeholder="aaa@aaa.com" disabled>
							</div>
							<div class="form-group">
								<label for="nickname">Nickname</label>
								<input type="text" class="form-control" id="nickname" name="nickname"
									aria-describedby="nicknameHelp" placeholder="Enter nickname">
								<small id="nicknameHelp" class="form-text text-danger">이미 사용중인 닉네임입니다</small>
							</div>
							<div class="form-group">
								<label for="introduce">Introduce</label>
								<textarea cols="52" rows="5" style="resize:none;"></textarea>
							</div>
							<div class="form-group" style="margin-bottom:50px;">
								<label for="userPwd2">Location</label>
								<input type="text" class="form-control"
									id="userPwd2" name="userPwd2" placeholder="Enter location">
							</div>
							
							<button type="submit" class="btn btn-block btn-dark" style="height:50px;">수정</button>
						</form>
		
					</div>
				</div>

			</div>
			
			<div class="tab-pane fade show" id="power">
				<div class="form-group">
	              <div class="input-group">
		              <form id="searchForm">
			              <div>
			                <select class="form form-control" id="category" name="category" style="width:100px;">
			                	<option>---</option>
			                	<option value="cafeName">업체명</option>
			                	<option value="content">등록여부</option>
			                </select>
			              </div>
			              <div>
			                <input class="form-control" id="exampleInputAmount" type="text" id="search" name="search">
			              </div>
			              <div>
			                <button class="btn btn-info" type="submit">검색</button>
			              </div>
		              </form>
		              <div style="margin-left:auto;">
		              	<button class="btn btn-info" type="button">광고 등록 신청</button>
		              </div>
	              </div>
	            </div>
	            <br>
				<table class="table table-hover" id="listArea" style="text-align:center; table-layout:fixed">
				  <thead>
				    <tr>
				      <th scope="col">NO.</th>
				      <th scope="col">업체명</th>
				      <th scope="col">신청일자</th>
				      <th scope="col">등록일자</th>
				      <th scope="col">등록종료일자</th>
				      <th scope="col">등록여부</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<tr>
				  		<td>1</td>
				  		<td>나이키</td>
				  		<td>2019-09-01</td>
				  		<td>2019-09-03</td>
				  		<td>2019-10-03</td>
				  		<td>등록종료</td>
				  	</tr>
				   </tbody>
				</table>
			</div>
			
			<!-- 비밀번호 변경 탭 -->
			<!-- 비밀번호 변경 모달창 -->
			<div class="modal fade" id="updatePwd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">비밀번호 변경</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <!-- 비밀번호 입력 폼 -->
			      <form>
					<div class="form-group">
						<label for="userPwd">현재 비밀번호</label>
						<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="현재 비밀번호">
					</div>
					<div class="form-group">
						<label for="newPwd1">새 비밀번호</label>
						<input type="password" class="form-control" id="newPwd1" name="newPwd1" placeholder="새 비밀번호">
						<p><small id="newPwd1Help" class="form-text text-danger">형식에 맞지 않습니다.</small></p>
					</div>
					<div class="form-group">
						<label for="newPwd2">새 비밀번호 확인</label>
						<input type="password" class="form-control" id="newPwd2" name="newPwd2" placeholder="새 비밀번호 확인">
					</div>
				
				      <div class="modal-footer">
				        <button type="button" class="btn btn-success">변경하기</button>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				      </div>
			     </form>
			     
			    </div>
			  </div>
			</div>
			
			<!-- 회원 탈퇴 탭 -->
			<!-- 회원 탈퇴 모달창 -->
			<div class="modal fade" id="deleteMem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">회원 탈퇴</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <ul>
			        	<li><b>탈퇴 시 회원정보는 복구할 수 없습니다.</b></li>
			        	<li><b>모든 업로드 사진들이 같이 삭제됩니다.</b></li>
			        	<li><b>탈퇴하시려면 아래에 현재 비밀번호를 입력해주세요.</b></li>
			        </ul>
			      </div>
			      <!-- 회원 탈퇴 입력 폼 -->
			      <div align="center">
				      <div class="form-group">
				      	<label>이메일</label>
				      	<p style="color:royalblue;">aaaaa123@bbbbb.com</p>
				      </div>
				      <div class="form-group">
				      	<label>닉네임</label>
				      	<p style="color:royalblue;">AppleOrange</p>
				      </div>
			      </div>
			      <form>
						<div class="form-group" align="center">
							<label for="userPwd">현재 비밀번호</label>
							<input type="password" class="form form-control form-center" id="userPwd" name="userPwd" placeholder="현재 비밀번호">
						</div>
					
					    <div class="modal-footer">
					      <button type="button" class="btn btn-success">탈퇴하기</button>
					      <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					    </div>
			      </form>
			     
			    </div>
			  </div>
			</div>
			
		</div>
		
	</div>



	<%@include file="../includes/footer.jsp" %>
	
</body>
</html>