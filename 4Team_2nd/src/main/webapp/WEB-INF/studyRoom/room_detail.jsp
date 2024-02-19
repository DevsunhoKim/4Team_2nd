<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="title" content="웹사이트">
<meta name="description" content="웹사이트입니다.">
<meta name="keywords" content="키워드,키워드,키워드">
<meta property="og:title" content="웹사이트">
<meta property="og:description" content="웹사이트입니다">
<meta property="og:image" content="https://웹사이트/images/opengraph.png">
<meta property="og:url" content="https://웹사이트">
<title>Insert title here</title>
<link rel="stylesheet" href="../studyRoom/css/setting.css">
  <link rel="stylesheet" href="../studyRoom/css/plugin.css">
<!--   <link rel="stylesheet" href="../studyRoom/css/template.css"> -->
  <link rel="stylesheet" href="../studyRoom/css/style.css">
  <link rel="stylesheet" href="../css/template.css">
  <script src="https://unpkg.com/vue@3"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  <script src="../studyRoom/js/setting.js"></script>
  <script src="../studyRoom/js/template.js"></script>
  <script src="../studyRoom/js/common.js"></script>
  <script src="../studyRoom/js/script.js"></script>
</head>
<body id="studyRoom_detail">
  <!-- [E]hooms-N55 -->
  <main class="th-layout-main ">
    <!-- [S]hooms-N40 -->
    <div class="hooms-N40" data-bid="utLsKCE9C5">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="contents-left">
            <div class="contents-thumbnail">
              <img :src="detail_list.poster" alt="썸네일이미지">
            </div>
            <ul class="contents-thumblist">
              <li class="contents-thumbitem">
                <img :src="detail_list.poster" alt="썸네일이미지">
              </li>
              <li class="contents-thumbitem" v-for="images in detail_list.dimage">
                <img :src="images" alt="썸네일이미지">
              </li>
              
            </ul>
          </div>
          <div class="contents-right">
            <div class="textset textset-h2">
              <span class="textset-name">{{detail_list.ename}}</span>
              <h2 class="textset-tit">{{detail_list.name}}</h2>
            </div>
            <!-- <p class="contents-desc"> 개성 있는 텍스처감의 패브릭과 헤드보드 양 사이드에 배치된 원목의 조화가 돋보이는 침구 세트 </p> -->
            
            <div class="contents-sum">공간 면적<span>{{detail_list.area}}</span>
            </div>
            <div class="contents-sum">이용 요금<span class="price">￦{{price}}<span>/시간</span></span>
            </div>
            
            <div class="contents-btn buy_jjim">
              <button class="btnset" href="javascript:void(0)">담아두기</button>
              <a class="btnset" :href="'../studyRoom/reserve.do?no='+detail_list.no">예약하기</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]hooms-N40 -->
    <!-- [S]hooms-N58 -->
    <div class="hooms-N58" data-bid="LnlskCE9IL">
      <div class="contents-container container-md">
        <div class="tabset tabset-solid">
          <ul class="tabset-list tabset-sm">
            <li class="tabset-item">
              <a class="tabset-link active" href="javascript:void(0)" @click="info()">
                <span>INFO</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="javascript:void(0)" @click="ask()">
                <span>1:1 문의</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="javascript:void(0)">
                <span>REVIEW</span>
              </a>
            </li>
            <!-- <li class="tabset-item">
              <a class="tabset-link" href="javascript:void(0)">
                <span>HERITAGE</span>
              </a>
            </li> -->
          </ul>
        </div>
      </div>
    </div>
    <!-- [E]hooms-N58 -->
    <!-- [S]hooms-N42 -->
      <div class="hooms-N42" data-bid="MRLSkcE9m6" v-show="infoShow">
         <div class="contents-inner">
            <div class="contents-container container-md">
            <div class="detail-info">
                     <!-- 상세 이미지 -->
                     
               <!-- 테이블 -->
               <h2 class="info-title">이용 가능 장비/시설</h2>
               <div class="detail-table">
                  <div class="detail-infodata">
                    <h1 class="info-th">로비(공용)</h1>
                    <p class="info-td"><span v-for="lo in lobby" class="lobby">{{lo}}</span></p>
                  </div>
                  <div class="detail-infodata"> 
                    <h1 class="info-th">세미나룸</h1>
                    <p class="info-td"><span v-for="co in conve" class="lobby">{{co}}</span></p>
                  </div>
               </div>
               <h2 class="info-title">PREVIEW</h2>
               <div class="deimage-wrapper">
                        <figure v-for="dimg in detail_list.dimage" class="dimage-fig">
                              <img class="deimage" :src="dimg" alt="상세 이미지">
                        </figure>
               </div>
            </div>
         </div>
       </div>
      </div>
    


    <!-- [S]hooms-N35 -->
    <div class="hooms-N35" data-bid="MPlskCn4J5" v-show="infoShow">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit" style="text-align: left;font-size: 2.6rem">DIRECTION GUIDANCE</h2>
          </div>
          <!-- <h3 class="contents-subtit">스터디룸으로 오시는 길을 안내해드립니다.</h3> -->
          <!-- 카카오맵 -->
          <div id="map" style="width:100%;height:350px;"></div>
          <ul class="contents-info-list">
            <li class="contents-info-item">
              <div class="contents-ico">
                <figure class="contents-figure">
                  <img src="../studyRoom/icons/ico_location_black.svg" alt="아이콘이미지">
                </figure> Address
              </div>
              <p class="contents-desc">{{address}}<br> 21, World Cup buk-ro, Mapo-gu, Seoul, Republic of Korea </p>
            </li>
            <li class="contents-info-item">
              <div class="contents-ico">
                <figure class="contents-figure">
                  <img src="../studyRoom/icons/ico_mail_black.svg" alt="아이콘이미지">
                </figure> Email
              </div>
              <p class="contents-desc"> studyRoom@codev.co.kr </p>
            </li>
            <li class="contents-info-item">
              <div class="contents-ico">
                <figure class="contents-figure">
                  <img src="../studyRoom/icons/ico_tel_black.svg" alt="아이콘이미지">
                </figure> Tel
              </div>
              <p class="contents-desc"> 070. 1234. 1234 </p>
            </li>
          </ul>
          <ul class="contents-traffic-list">
            <li class="contents-traffic-item">
              <div class="contents-ico">
                <figure class="contents-figure">
                  <img src="../studyRoom/icons/ico_subway_black.svg" alt="아이콘이미지">
                </figure> 지하철 2호선
              </div>
              <p class="contents-desc"> 홍대입구역 1번출구 </p>
            </li>
            <li class="contents-traffic-item">
              <div class="contents-ico">
                <figure class="contents-figure">
                  <img src="../studyRoom/icons/ico_subway_black.svg" alt="아이콘이미지">
                </figure> 공항철도, 경의중앙선
              </div>
              <p class="contents-desc"> 홍대입구역 3번출구 </p>
            </li>
            <li class="contents-traffic-item">
              <div class="contents-ico">
                <figure class="contents-figure">
                  <img src="../studyRoom/icons/ico_bus_black.svg" alt="아이콘이미지">
                </figure> 버스
              </div>
              <p class="contents-desc"> 7016번, 7711번 서서울농협홍대역점 정류장 하차 / 마포06 동교로사거리 하차 </p>
            </li>
          </ul>
        </div>
      </div>
    </div>
    
    
    <!-- [S]hooms-N36 -->
        <div class="hooms-N36" data-bid="rxlskcGXa1" v-show="askShow">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <!-- <div class="textset textset-h2">
            <h2 class="textset-tit">1:1 문의</h2>
          </div> -->
         
          <div class="contents-search">
            <p class="contents-result"> 전체<span> 24</span>개 </p>
            <div class="askANDsearch">
             <div class="contents-btn askBtn">
               <a class="btnset modalset-btn" :href="'../studyRoom/ask.do?no='+detail_list.no">문의하기</a>
             </div>
             <div class="contents-form">
              <div class="inputset inputset-lg">
                <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
                <input type="text" class="inputset-input form-control" placeholder="검색어를 입력해주세요." aria-label="내용">
              </div>
             </div>
            </div>
          </div>
          <div class="tableset">
            <table class="tableset-table table">
              <colgroup>
                <col>
                <col>
                <col>
                <col>
                <col>
                <col>
                <col>
              </colgroup>
              <thead class="thead-light thead-border-top">
                <tr>
                  <th scope="col">No.</th>
                  <th scope="col">구분</th>
                  <th scope="col">제목</th>
                  <th scope="col">등록일</th>
                  <th scope="col">등록자</th>
                  <th scope="col">답변</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="tableset-mobile">24</td>
                  <td class="tableset-category tableset-order03">가구 상담</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset">대기</div>
                  </td>
                  
                </tr>
                <tr>
                  <td class="tableset-mobile">23</td>
                  <td class="tableset-category tableset-order03">인테리어 상담</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  
                </tr>
                <tr>
                  <td class="tableset-mobile">22</td>
                  <td class="tableset-category tableset-order03">A/S 신청</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset">대기</div>
                  </td>
                  
                </tr>
                <tr>
                  <td class="tableset-mobile">21</td>
                  <td class="tableset-category tableset-order03">기타</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  
                </tr>
                <tr>
                  <td class="tableset-mobile">20</td>
                  <td class="tableset-category tableset-order03">가구 상담</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  
                </tr>
                <tr>
                  <td class="tableset-mobile">19</td>
                  <td class="tableset-category tableset-order03">기타</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  
                </tr>
                <tr>
                  <td class="tableset-mobile">18</td>
                  <td class="tableset-category tableset-order03">기타</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  
                </tr>
              </tbody>
            </table>
          </div>
          
          <nav class="pagiset pagiset-line">
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-first" href="javascript:void(0)">
                <span class="visually-hidden">처음</span>
              </a>
            </div>
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-prev" href="javascript:void(0)">
                <span class="visually-hidden">이전</span>
              </a>
            </div>
            <div class="pagiset-list">
              <a class="pagiset-link active-fill" href="javascript:void(0)">1</a>
              <a class="pagiset-link" href="javascript:void(0)">2</a>
              <a class="pagiset-link" href="javascript:void(0)">3</a>
            </div>
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-next" href="javascript:void(0)">
                <span class="visually-hidden">다음</span>
              </a>
            </div>
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-last" href="javascript:void(0)">
                <span class="visually-hidden">마지막</span>
              </a>
            </div>
          </nav>
        </div>
      </div>
      <div id="modalSet1" class="modalset">
        <div class="modal-header">
          <h6 class="modal-title">1:1 문의</h6>
        </div>
        <div class="modal-body">
          <p> 로그인이 필요한 서비스입니다. <br> 로그인하시겠습니까? </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btnset btnset-ghost modal-close">취소</button>
          <a href="javascript:void(0)" class="btnset btnset-confirm">확인</a>
        </div>
      </div>
      <div class="modalset-dim"></div>
    </div>
    
    
  </main>
  <script>
  let rapp=Vue.createApp({
     data(){
        return {
           detail_list:{},
           no:${no},
           price:0,
           lobby:[],
           conve:[],
           address:'서울 마포구 월드컵북로 21 풍성빌딩 2~4층',
           askShow:false,
           infoShow:true
           
        }
     },
     mounted(){
        this.dataRecv();
     },
     methods:{
        dataRecv(){
           axios.get('../studyRoom/detail_vue.do',{
              params:{
                 no:this.no
              }
           }).then(response=>{
              console.log(response.data)
              this.detail_list=response.data
              this.price=response.data.price.toLocaleString()
              let ss=response.data.lobby.split(',')
                  ss = ss.map(s => s.trim()); // 각 요소의 앞뒤 공백 제거
                  this.lobby=ss
                  this.conve=response.data.conve.split(',')
                  /* ss2 = ss2.map(s => s.trim()); // 각 요소의 앞뒤 공백 제거
                  this.conve=ss2 */
                  console.log(this.lobby)
                  if(window.kakao && window.kakao.maps)
                  {
                    this.initMap()
                  }
                  else
                  {
                    this.addScript()
                  }
           })
        },
        initMap(){
               var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                mapOption = {
                    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                    level: 3 // 지도의 확대 레벨
                };  

            // 지도를 생성합니다    
            var map = new kakao.maps.Map(mapContainer, mapOption); 

            // 주소-좌표 변환 객체를 생성합니다
            var geocoder = new kakao.maps.services.Geocoder();

            // 주소로 좌표를 검색합니다
            geocoder.addressSearch(this.address, function(result, status) {

                // 정상적으로 검색이 완료됐으면 
                 if (status === kakao.maps.services.Status.OK) {

                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords
                    });

                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                    var infowindow = new kakao.maps.InfoWindow({
                        content: '<div style="width:150px;text-align:center;padding:6px 0;">'+'CODEV STUDYROOM'+'</div>'
                    });
                    infowindow.open(map, marker);

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    map.setCenter(coords);
                } 
             });    
           },
           addScript(){
               const script=document.createElement("script") //<script>
               /* globel kakao */
               script.onload=()=>kakao.maps.load(this.initMap)
               script.src="http://dapi.kakao.com/v2/maps/sdk.js?autoload=false&appkey=666e34535b94b665d2f33b3ee94a689a&libraries=services"
               document.head.appendChild(script)
           },
           ask(){
        	   this.askShow=true
        	   this.infoShow=false
           },
           info(){
        	   this.infoShow=true
        	   this.askShow=false
           }
     }
  }).mount('#studyRoom_detail')
  </script>
</body>
</html>