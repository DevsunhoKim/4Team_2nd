<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="../member/css/setting.css">
  <link rel="stylesheet" href="../member/css/plugin.css">
  <link rel="stylesheet" href="../member/css/template.css">  
  <link rel="stylesheet" href="../member/css/style.css">
  <link rel="stylesheet" href="../css/template.css">
  <style type="text/css">
  body {
    margin: 0;
    padding: 0;
  }
  .glamping-N47 {
    padding: 60px 20px 20px; /* 위쪽 패딩을 40px로 조정 */
  }
  .contents-inner {
    margin: 0 auto;
    max-width: 800px; /* Adjust max-width as needed */
  }
  .contents-top {
    margin-bottom: 20px;
  }
  .form-wrap {
    margin-bottom: 20px;
  }
  .form-tit {
    margin-bottom: 10px;
  }
  .contents-btn-group {
    margin-top: 20px;
    text-align: center;
  }
.contents-form-group {
    display: flex;
    align-items: center; 
    width: 100%;
}

.inputset {
    flex: 1;
    margin-right: 10px;
}

.btnset {
    flex: 0; 
}
.contents-mail {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    gap: 1rem;
}
</style>
</head>
<body>
<div class="glamping-N47" data-bid="iTlmG5UP9e" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="contents-top">
            <h1 class="contents-tit">정보입력</h1>
            <span><span style="color: var(--danger)">*</span> 표시는 반드시 입력하셔야 하는 항목입니다</span>
          </div>
          <div class="contents-group">
	          <div class="form-wrap">
		        <h6 class="form-tit">프로필이미지 <span>*</span>
		        </h6>
		        <div class="radioset-wrap">
		          <div>
    <div class="radioset">
        <input id="radioset-a-1" name="radioset-a" class="radioset-input input-line" type="radio" value="m1" checked="">
        <label class="radioset-label" for="radioset-a-1"></label>
    </div>
</div>
<div>
    <img alt="" src="../images/img_basic_mobile_N33_1.png" style="width: 80px;height: 80px">
</div>


		          <div class="radioset">
		            <input id="radioset-a-2" name="radioset-a" class="radioset-input input-line" type="radio" value="w1">
		            <label class="radioset-label" for="radioset-a-2"></label>
		            <span class="radioset-text">여자</span>
		          </div>
		        </div>
		      </div>    
	          <div class="form-wrap">
	              <h6 class="form-tit">직군 <span>*</span></h6>
	              <div class="contents-form-group">
	                <div class="inputset inputset-round">
	                  <div class="contents-mail">
	                    <input type="text" class="inputset-input form-control" aria-label="내용" required="">
	                  </div>
	                </div>
	              </div>
	              <div class="selectset selectset-round selectset-md">
	                <button class="selectset-toggle btn" type="button">
	                  <span>선택해주세요</span>
	                </button>
	                <ul class="selectset-list">
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="직접입력" selected="">
	                      <span>직접입력</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="Backend">
	                      <span>Backend</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="Frontend">
	                      <span>Frontend</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="Android">
	                      <span>Android</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="iOS">
	                      <span>iOS</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="Data Engineering">
	                      <span>Data Engineering</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="Data Engineering">
	                      <span>Devops</span>
	                    </button>
                 	 </li>
	                </ul>
	              </div>
	            </div>
            
            <div class="form-wrap">
              <h6 class="form-tit">주요경력 <span>*</span>
              </h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
            </div>
            <div class="form-wrap">
              <h6 class="form-tit">부서명 <span>*</span>
              </h6>
              <div class="inputset inputset-round">
                <input type="text" class="inputset-input form-control" aria-label="내용" required="">
              </div>
            </div>
            <div class="form-wrap">
              <h6 class="form-tit">키워드
              </h6>
              <div class="inputset inputset-round">
                <input type="text" class="inputset-input form-control" aria-label="내용" required="">
              </div>
            </div>
            <div class="form-wrap">
              <h6 class="form-tit">연락처 <span>*</span>
              </h6>
              <div class="inputset inputset-round">
                <input type="text" class="inputset-input form-control" aria-label="내용" placeholder="-없이 번호를 입력해주세요" required="">
              </div>
            </div>
            <div class="form-wrap">
              <h6 class="form-tit">주소</h6>
              <div class="contents-address">
                <div class="contents-form-group">
                  <div class="inputset inputset-round">
                    <input type="text" class="inputset-input form-control" aria-label="내용">
                  </div>
                  <button class="btnset btnset-round btnset-line" type="buton">우편번호 검색</button>
                </div>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
              </div>
            </div>
                        
          </div>
          <div class="contents-btn-group">
            <a href="javascript:history.back();" class="btnset btnset-line btnset-round">이전단계</a>
            <a href="../member/join_ok.do" class="btnset btnset-round">다음단계</a>
          </div>
        </div>
      </div>
    </div>
</body>
</html>