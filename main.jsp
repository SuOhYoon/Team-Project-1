<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>정직한 중고차:소사모터스</title>
            <script src="jquery-3.6.0.js"></script>
            <script src="//code.jquery.com/jquery.min.js"></script>
            <script src='//cdnjs.cloudflare.com/ajax/libs/jquery-chained/1.0.1/jquery.chained.min.js'></script>
            <style>
                @charset "UTF-8";
        @font-face {
                        font-family:'InterparkGothic'; /*font 이름*/
                        font-style: 'normal';
                        src: url('InterparkGothicLight.ttf'); /* IE9 Compat Modes */
                    }   
                    @font-face {
                        font-family:'InterparkGothicBold'; /*font 이름*/
                        font-style: 'normal';
                        src: url('InterparkGothicBold.ttf'); /* IE9 Compat Modes */
                    } 
                    #all_content{
                        font-family:'InterparkGothicBold';
                        margin:0;
                        width:1920px;
                        height:1080px;
                    }
                    .section1{
                        margin:0;
                        width:1920px;
                        height:216px;
                    }
                        .main_nav{
                            width:1120px;
                            height:216px;
                            margin: 0px 400px 0px 400px;
                            display:block;
                        }
                        .sign{
                            margin-top:40px;
                            list-style-type:none;
                            float:right;
                        }
                        .sign li{
                            float:left;
                            padding-left:5px;
                        }
                        .sign a{
                            text-decoration:none;
                            font-size:15px;
                            color:Black;
                        }
        
                        .sign a:hover{
                            color:#87CEEB;
                        }
                        .logo{
                            position:absolute;
                            margin:72px 0px 0px 0px;
                        }
                        .logo_size{
                            width:40%;
                            height:40%;
                        }
                        .menu{
                            position:absolute;
                            list-style-type:none;
                            margin-left:190px;
                            margin-top:160px;
                        }
                        .menu li{
                            float:left;
                            padding-left:8px;
                            font-size:15pt;
                        }
                        .menu a{
                            float:left;
                            text-decoration:none;
                            font-size:22px;
                            color:Black;
                        }
        
                        .menu a.active,.menu a:hover{
                            color:#87CEEB;
                        }
                    .section2{
                        margin:0;
                        width:1920px;
                        height:540px;
                    }
                        .ad{
                            width:1120px;
                            height:540px;
                            margin: 0px 400px 0px 400px;
                            display:block;
                            background-color:rgb(120, 177, 177);
                        }
                        .ad_size{
                            width:100%;
                            height:100%;
                        }
                    .section3{
                        margin:0;
                        width:1920px;
                        height:540px;
                        background-color:#F6F8FA;
                    }
                        .search_text{
                            margin-top:80px;
                            font-family:'InterparkGothicBold';
                            text-align:center;
                            font-size:26pt;
                            font-weight:700;
                        }
                        .car_search{
                            outline:none;
                            position:absolute;
                            text-align:center;
                            margin: 0px 400px 0px 400px;
                            width:1120px;
                            height:250px;
                            display:block;
                        }
                        input:focus{
                            outline:none;
                        }
                        .car_searchbar{
                            width:460px;
                            border:0;
                            background-color:#F6F8FA;
                            font-family:'InterparkGothic';
                            font-size:14pt;
                            border-bottom:3px solid #000000;
                        }
                        .car_search_choice{
                            position:absolute;
                            margin: 250px 400px 0px 400px;
                            width:1120px;
                            height:240px;
                            display:block;
                            background-color:#ffffff;
                            }
                        .choice_nav{
                            position:absolute;
                            width:920px;
                            height:120px;
                            margin: 0px 100px 0px 100px;
                            background-color:blue;
                        }
                        .choice_menu{
                            position:absolute;
                            width:920px;
                            height:120px;
                            margin:0px 0px 0px 220px;
                        }
                        .choice_menu_ul{
                            position:absolute;
                            list-style-type:none;
                            margin:50px 100px 0px -40px;
                        }
                        ul.choice_menu_ul{
                            position:absolute;
                            list-style-type:none;
                            margin:50px 100px 0px -50px;
                        }
                        ul.choice_menu_ul li{ 
                            float:left;
                            padding-left:15px;
                            font-size:15pt;
                            text-decoration: none;
                            text-align: center;
                            padding: 10px;
                            display: block;
                            border-right: 1px solid #222;
                            cursor: pointer;
                        }
                        ul.choice_menu_ul li:last-child {
                            border-right: none;
                        }
                        ul.choice_menu_ul li.current{ 
                            background: #ffffff;
                            color: #87CEEB;
                        }
                        .choice_list{
                            position:absolute;
                            width:1090px;
                            height:120px;
                            margin: 340px 400px 0px 400px;
                            display:none;
                            background: #ffffff;
                            padding: 15px;
                        }
                        .choice_list.current{
                            display: inherit;
                        }
                        .choice_list_design{
                            position:absolute;
                            margin:0px 0px 0px 200px;
                            padding-left:20px;
                        }
                        select option[value=""][disabled] {
                            display: none;
                        }
                        .select_design_country{
                            margin-left:10px;
                            margin-top:1px;
                            width:80px;
                            height:50px;
                            font-family:'InterparkGothicBold';
                            border-radius:5px;
                            background-color:#F6F8FA;
                            
                
                        }
                        .select_design{
                            margin-left:10px;
                            margin-top:1px;
                            width:120px;
                            height:50px;
                            background-color:#F6F8FA;
                            font-family:'InterparkGothicBold';
                            border-radius:5px;
                        }
                        .search_button_design{
                            position:absolute;
                            margin-left:10px;
                            margin-top:1px;
                            width:120px;
                            height:50px;
                            border-radius:5px;
                            border:0;
                            font-size:15px;
                            font-family:'InterparkGothicBold';
                            color:#ffffff;
                            background-color:#87CEEB;
                        }
                    .section4{
                        margin:0;
                        width:1920px;
                        height:540px; /* +180px */
                    }
                    .section5{
                        margin:0;
                        width:1920px;
                        height:216px; /* -180px */
                        background-color:#F6F8FA;
                    }
                    .footer{
                        margin:0;
                        width:1920px;
                        height:216px; /* -180px */
                        text-align:center;
                    }
                    .recommand_text{
                        margin-left:400px;
                        margin-top:80px;
                        font-family:'InterparkGothicBold';
                        font-size:26pt;
                        font-weight:700;
                    }
                    .month_recommand_list{
                        width:1120px;
                        height:540px;
                        margin: 0px 400px 0px 400px;
                        display:block;
                    }
                    .car_list1{
                        width:360px;
                        height:540px;
                        display:block;    
                    }
                        .car_img1{
                            position:absolute;
                            margin:0px 0px 0 0px;
                            width:360px;
                            height:300px;
                            display:block;
                        }
                        .car_img_size_1{
                            width:360px;
                            height:300px;
                            border-radius:8px;
                        }
                        .car_summary_1{
                            position:absolute;
                            width:453px;
                            margin-top:300px;
                            padding:0;
                        }
                    .car_list2{
                        width:360px;
                        height:540px;
                        margin-top:-540px;
                        margin-left:374px;
                        display:block;
                    }
                        .car_img2{
                            position:absolute;
                            margin:0px 0px 0 0px;
                            width:360px;
                            height:300px;
                            display:block;
                        }
                        .car_img_size_2{
                            width:360px;
                            height:300px;
                            border-radius:8px;
                        }
                        .car_summary_2{
                            position:absolute;
                            margin-top:300px;
                            margin-left:0px;
                            padding:0;
                        }
                    .car_list3{
                        width:360px;
                        height:540px;
                        margin-top:-540px;
                        margin-left:748px;
                        display:block;
                    }
                        .car_img3{
                            position:absolute;
                            margin:0px 0px 0 0px;
                            width:360px;
                            height:300px;
                            display:block;
                     
                        }
                        .car_img_size_3{
                            width:360px;
                            height:300px;
                            border-radius:8px;
                        }
                        .car_summary_3{
                            position:absolute;
                            margin-top:300px;
                            padding:0;
                        }
            </style>
        </head>
        <body id="all_content">	
            <div class="section1">
                <div class="main_nav">
                    <div>
                        <ul class="sign">
                        <% 
                            String id = (String)session.getAttribute("id");
                        %>
                        <%if(id==null){%>
                            <li><a href="login.jsp">로그인</a></li>
                            <li> | </li>
                            <li><a href="signup.html">회원가입</a></li>
                        <%}else{ %>
                            <li><strong><%=id %></strong>님</li>
                            <li> | </li>
                            <li><a href="logout.jsp">로그아웃</a></li>
                        <%} %>
                        </ul>
                    </div>
                    <div class="logo">
                        <a href=main.html><img class="logo_size" src="logo.png"></a>
                    </div>
                    <div>
                        <ul class="menu">
                            <li><a href="detail_search.jsp">상세검색</a></li>
                            <li>|</li>
                            <li><a href="board_report.jsp">신고</a></li>
                            <li>|</li>
                            <li><a href="board_report.jsp">고객센터(구현 예정)</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="section2">
                <div class="ad">
                    <img class="ad_size" src="AD.png">
                </div>
            </div>
            <div class="section3">
                <div class="car_search">
                    <p class="search_text">원하시는 차가 있으신가요?</p>
                    <form action="car_search.jsp">
                        <input class="car_searchbar" type="search" placeholder="모델명을 입력해주세요. 예)올 뉴 K3">
                    </form>
                </div>
                <div class="car_search_choice">
                    <div class="choice_menu">
                        <ul class="choice_menu_ul">
                            <li class="tab-link current" data-tab="tab-1">차 이름을 알고 있어요</li>
                            <li class="tab-link" data-tab="tab-2">가격이 싼 차를 사고 싶어요</li>
                            <li class="tab-link" data-tab="tab-3">차종별로 찾고 있어요</li>
                        </ul>
                    </div>
                </div>
                    <div id="tab-1" class="choice_list current">
                        <form class="choice_list_design" action="choise_search.jsp" method="post" name="car_choice">
                            <select class="select_design" id="nation" name="nation">
                                <option value="">-- 국산/수입 --</option>
                                <option value="A">국산</option>
                                <option value="B">수입</option>
                              </select>
                              <select class="select_design" id="manufac" name="manufac">
                                <option value="">-- 제조사 --</option>
                                <option class="A" value="hyundai">현대</option>
                                <option class="A" value="genesis">제네시스</option>
                                <option class="A" value="kia">기아</option>
                                <option class="A" value="chavolet">쉐보레</option>
                                <option class="B" value="samsung">르느삼성</option>
                                <option class="A" value="ssangyong">쌍용</option>
                                <option class="B" value="benz">벤츠</option>
                                <option class="B" value="bmw">BMW</option>
                              </select>
                              <select class="select_design" id="model" name="model">
                                <option value="">-- 모델 --</option>
                                <option value="avante" class="hyundai">아반떼</option>
                                <option value="sonata" class="hyundai">쏘나타</option>
                                <option value="grandeur" class="hyundai">그랜저</option>
                                <option value="i30" class="hyundai">i30</option>
                                <option value="i40" class="hyundai">i40</option>
                                <option value="venue" class="hyundai">베뉴</option>
                                <option value="kona" class="hyundai">코나</option>
                                <option value="tucsan" class="hyundai">투싼</option>
                                <option value="santafe" class="hyundai">싼타페</option>
                                <option value="pelisade" class="hyundai">펠리세이드</option>
                                <option value="starex" class="hyundai">스타렉스</option>
                                <option value="g70" class="genesis">G70</option>
                                <option value="g80" class="genesis">G80</option>
                                <option value="g90" class="genesis">G90</option>
                                <option value="gv60" class="genesis">GV60</option>
                                <option value="gv70" class="genesis">GV70</option>
                                <option value="gv80" class="genesis">GV80</option>
                                <option value="morning" class="kia">모닝</option>
                                <option value="ray" class="kia">레이</option>
                                <option value="k3" class="kia">K3</option>
                                <option value="k5" class="kia">K5</option>
                                <option value="k7" class="kia">K7</option>
                                <option value="k9" class="kia">K9</option>
                                <option value="k9" class="kia">셀토스</option>
                                <option value="k9" class="kia">스포티지</option>
                                <option value="k9" class="kia">쏘렌토</option>
                                <option value="k9" class="kia">카니발</option>
                              </select>
                              <select class="select_design" id="detail" name="detail">
                                <option value="">-- 상세모델 --</option>
                                <option value="avante_n" class="avante">아반떼 N</option>
                                <option value="avante_cn7" class="avante">아반떼 CN7</option>
                                <option value="the_new_avante_ad" class="avante">더 뉴 아반떼 AD</option>
                                <option value="avante_ad" class="avante">아반떼 AD</option>
                                <option value="the_new_avante" class="avante">더 뉴 아반떼</option>
                                <option value="avante_md" class="avante">아반떼 MD</option>
                                <option value="avante_hybrid" class="avante">아반떼 햐이브리드</option>
                                <option value="the_new_k3" class="k3">더 뉴 K3</option>
                                <option value="sonata_dn8_hybrid" class="sonata">쏘나타 DN8 하이브리드</option>
                                <option value="sonata_dn8" class="sonata">쏘나타 DN8</option>
                                <option value="sonata_new_rise_hybrid" class="sonata">쏘나타 뉴 라이즈 하이브리드</option>
                                <option value="sonata_new_rise" class="sonata">쏘나타 뉴 라이즈</option>
                                <option value="lf_sonata_hybrid" class="sonata">LF 쏘나타 하이브리드</option>
                                <option value="lf_sonata" class="sonata">LF 쏘나타</option>
                                <option value="sonata_the_briliant" class="sonata">쏘나타 더 브릴리언트</option>
                                <option value="sonata_hybrid" class="sonata">쏘나타 하이브리드</option>
                                <option value="yf_sonata" class="sonata">YF 쏘나타</option>
                                <option value="nf_sonata" class="sonata">NF 쏘나타</option>
                                <option value="the_new_grandeur" class="grandeur">더 뉴 그랜저</option>
                                <option value="the_new_grandeur_hybrid" class="grandeur">더 뉴 그랜저 하이브리드</option>
                                <option value="grandeur_ig_hybrid" class="grandeur">그랜저 IG 하이브리드</option>
                                <option value="grandeur_ig" class="grandeur">그랜저 IG</option>
                                <option value="grandeur_hg_hybrid" class="grandeur">그랜저 HG 하이브리드</option>
                                <option value="grandeur_hg" class="grandeur">그랜저 HG</option>
                                <option value="grandeur_tg" class="grandeur">그랜저 TG</option>
                                <option value="i30_pd" class="i30">i30(PD)</option>
                                <option value="the_new_i30" class="i30">i30(PD)</option>
                                <option value="new_i30" class="i30">i30(신형)</option>
                                <option value="_i30" class="i30">i30</option>
                                <option value="_venue" class="venue">베뉴</option>
                                <option value="kona_n" class="kona">코나 N</option>
                                <option value="the_new_kona" class="kona">더 뉴 코나</option>
                                <option value="the_new_kona_hybrid" class="kona">더 뉴 코나 하이브리드</option>
                                <option value="kona_hybrid" class="kona">코나 하이브리드</option>
                                <option value="kona_e" class="kona">코나 일렉트릭</option>
                                <option value="_kona" class="kona">코나</option>
                                <option value="tucsan_nx4" class="tucsan">투싼 NX4</option>
                                <option value="tucsan_nx4_hybrid" class="tucsan">투싼 NX4 하이브리드</option>
                                <option value="all_new_tucsan_tl" class="tucsan">올 뉴 투싼 TL</option>
                                <option value="new_tucsan_ix" class="tucsan">뉴 투싼 ix</option>
                                <option value="tucsan_ix" class="tucsan">투싼 ix</option>
                                <option value="_tucsan" class="tucsan">투싼</option>
                                <option value="the_new_santafe_hybrid" class="santafe">더 뉴 싼타페 하이브리드</option>
                                <option value="the_new_santafe" class="santafe">더 뉴 싼타페</option>
                                <option value="santafe_tm" class="santafe">싼타페 TM</option>
                                <option value="santafe_the_prime" class="santafe">싼타페 더 프라임</option>
                                <option value="santafe_dm" class="santafe">싼타페 DM</option>
                                <option value="_pelisade" class="pelisade">펠리세이드</option>
                                <option value="the_new_grand_starex" class="starex">더 뉴 그랜드 스타렉스</option>
                                <option value="grand_starex" class="starex">그랜드 스타렉스</option>
                                <option value="the_new_g70" class="g70">더 뉴 G70</option>
                                <option value="_g70" class="g80">G70</option>
                                <option value="g80_e" class="g80">G80E(RG3)</option>
                                <option value="g80_rg3" class="g80">G80(RG3)</option>
                                <option value="_g80" class="g90">G80</option>
                                <option value="g90_rs4" class="g90">G90(RS4)</option>
                                <option value="_g90" class="g90">G90</option>
                                <option value="_gv60" class="gv60">GV60</option>
                                <option value="e_gv70" class="gv70">eGV70</option>
                                <option value="_gv70" class="gv70">GV70</option>
                                <option value="_gv80" class="gv80">GV80</option>
                                <option value="_gv90" class="gv90">GV90</option>
                                <option value="the_new_k3_2" class="k3">더 뉴 K3(2세대)</option>
                                <option value="the_new_k3_gt_2" class="k3">더 뉴 K3 GT(2세대)</option>
                                <option value="all_new_k3" class="k3">올 뉴 K3</option>
                                <option value="k3_gt" class="k3">K3 GT</option>
                                <option value="the_new_k3" class="k3">더 뉴 K3</option>
                                <option value="_k3" class="k3">K3</option>
                              </select>
                            <input class="search_button_design" type="submit" value="검색">
                        </form>
                    </div>
                <div id="tab-2" class="choice_list">
                    <form class="choice_list_design" action="choise_search.jsp" method="post" name="car_choice">
                        <select class="select_design_country" name="choice_search">
                            <option value="국산" selected>국산</option>
                            <option value="수입">수입</option>
                        </select>
                        <select class="select_design" name="choice_search">
                            <option value="현대" selected>현대</option>
                            <option value="제네시스">제네시스</option>
                            <option value="기아">기아</option>
                            <option value="쉐보레">쉐보레(GM대우)</option>
                            <option value="르노">르노코리아(삼성)</option>
                            <option value="쌍용">쌍용</option>
                        </select>
                        <select class="select_design"name="choice_search">
                            <option value="" disabled selected>최저가격</option>
                            <option value="아반떼">아반떼</option>>
                            <option value="소나타">소나타</option>
                            <option value="그랜져">그랜져</option>
                            <option value="i30">i30</option>
                            <option value="i40">i40</option>
                            <option value="베뉴">베뉴</option>
                            <option value="코나">코나</option>
                            <option value="투싼">투싼</option>
                            <option value="펠리세이드">펠리세이드</option>
                        </select>
                        <select class="select_design" name="choice_search">
                            <option value="" disabled selected>최고가격</option>
                            <option value="아반떼 N">아반떼 N</option>>
                            <option value="소나타">아반떼(CN7)</option>
                            <option value="그랜져">더 뉴 아반떼 AD</option>
                            <option value="i30">아반떼 AD</option>
                            <option value="i40">더 뉴 아반떼</option>
                            <option value="베뉴">아반떼 MD</option>
                            <option value="코나">아반떼 하이브리드</option>
                        </select>
                        <input class="search_button_design" type="submit" value="검색">
                    </form>
                </div>
                <div id="tab-3" class="choice_list">
                    <form class="choice_list_design" action="choise_search.jsp" method="post" name="car_choice">
                        구현예정
                        <input class="search_button_design" type="submit" value="검색">
                    </form>
                </div>
            </div>
        </div>
        <div class="section4">
            <p class="recommand_text">이번 달에 강추하는 추천차량</p>
            <div class="month_recommand_list">
                <div class="car_list1">
                    <div class="car_img1">
                        <a href="https://www.kcar.com/bc/detail/carInfoDtl?i_sCarCd=EC60715003"><img class="car_img_size_1" src="k3_3659.png"></a>
                    </div>
                    <div class="car_summary_1">
                        <p style="font-size:16px;">기아 K3 트렌디</p>
                        <p style="font-weight:700;font-size:22px;">860만원</p>
                        <p>14년 9월식(15년형) | 89,219Km | 가솔린</p>
                    </div>
                </div>
                <div class="car_list2">
                    <div class="car_img2">
                        <a href="https://www.kcar.com/bc/detail/carInfoDtl?i_sCarCd=EC60680364"><img class="car_img_size_2" src="sportage_3345.png"></a>
                    </div>
                    <div class="car_summary_2">
                        <p style="font-size:16px;">기아 스포티지 4세대
                            디젤 2.0 2WD 노블레스 플러스</p>
                        <p style="font-weight:700;font-size:22px;">1,900만원</p>
                        <p>18년 1월식 | 33,542Km | 디젤</p>
                    </div>
                </div>
                <div class="car_list3">
                    <div class="car_img3">
                        <a href="https://www.kcar.com/bc/detail/carInfoDtl?i_sCarCd=EC60703838"><img class="car_img_size_3" src="avante_1992.png"></a>
                    </div>
                    <div class="car_summary_3">
                        <p style="font-size:16px;">현대 아반떼 AD
                            1.6 GDI 모던</p>
                        <p style="font-weight:700;font-size:22px;">1,130만원</p>
                        <p>16년 2월식 | 105,500Km | 디젤</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section5">
        	<p>게시판 추후 개발 예정(2022.11)</p>
        </div>
        <div class="footer">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <p>v.Beta.0.0.1 | Sosa_Motors_Company | TEL. 1577-7484</p>
            <p>대표자 : 윤수오 | 사업장 : 경기도 부천시 소사로 56</p>
            <p>Copyright(c)(주)소사모터스 ALL Rights Reserved</p>
        </div>
            <script src="car_choice_menu.js"></script>
            <script src="car_choice_list.js"></script>
        </body>
    </html>