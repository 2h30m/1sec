<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta
			name="viewport"
			content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes"
		/>
		<meta name="HandheldFriendly" content="true" />
		<meta name="format-detection" content="telephone=no" />
		<script src="/js/jquery-3.4.1.js"></script>
		<script src="/js/ui.js"></script>
		<link rel="stylesheet" href="/css/default.css" />
		<link
			rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.9.0/css/all.css"
		/>
		<link
			rel="stylesheet"
			href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Round"
		/>

		<title>무엇을 만들까나</title>
	</head>
	<body>
		<div id="hd">
			<div id="hd_wrapper">
				<div id="logo"><a href="/index.html">MINCHAE PORTFOLIO</a></div>

				<div id="tnb">
					<ul>
						<!-- <li><a href="sub/login_page.html"><i class="fas fa-sign-in-alt" aria-hidden="true"></i> LOGIN</a></li> -->
						<c:choose>
							<c:when test="${member.id == null}">
								<li>
									<a href="/sub/login_page.html"
										><i
											class="fas fa-sign-in-alt"
											aria-hidden="true"
										></i>
										LOGIN</a
									>
								</li>
							</c:when>
							<c:otherwise>
								<li>
									<span class="white"
										><i
											class="fas fa-user-circle white"
										></i>
										${member.id } 님
									</span>
									<a href="/Controller?cmd=infoConfirm"
										>정보수정</a
									>
									<a href="/Controller?cmd=logout"
										><i class="fas fa-sign-in-alt"></i>
										LOGOUT</a
									>
								</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

				<div class="menu_icon">
					<div class="icon_wrap">
						<span></span>
						<span></span>
						<span></span>
					</div>
				</div>

				<div class="full_menu">
					<ul id="gnb_1dul" class="gnb">
						<li class="gnb_1dli" style="z-index: 9999">
							<a href="" target="_self" class="gnb_1da mo_btn"
								>About Me<span class="material-icons-round"
									>keyboard_arrow_down</span
								></a
							>
							<ul class="dep2">
								<c:choose>
									<c:when test="${url eq 'index.html'}">
										<li>
											<a
												href="/sub/myself.html"
												target="_self"
												class="gnb_2da"
												>introduce myself</a
											>
										</li>
										<li>
											<a
												href="/sub/location.html"
												target="_self"
												class="gnb_2da"
												>location</a
											>
										</li>
									</c:when>
									<c:otherwise>
										<li>
											<a
												href="../sub/myself.html"
												target="_self"
												class="gnb_2da"
												>introduce myself</a
											>
										</li>
										<li>
											<a
												href="../sub/location.html"
												target="_self"
												class="gnb_2da"
												>location</a
											>
										</li>
									</c:otherwise>
								</c:choose>
							</ul>
						</li>
						<li class="gnb_1dli" style="z-index: 9999">
							<a href="" target="_self" class="gnb_1da mo_btn"
								>Available Skill<span
									class="material-icons-round"
									>keyboard_arrow_down</span
								></a
							>
							<ul class="dep2">
								<c:choose>
									<c:when test="${url eq 'index.html'}">
										<li>
											<a
												href="/sub/skillList.html"
												target="_self"
												class="gnb_2da"
												>Skill List</a
											>
										</li>
									</c:when>
									<c:otherwise>
										<li>
											<a
												href="../sub/skillList.html"
												target="_self"
												class="gnb_2da"
												>Skill List</a
											>
										</li>
									</c:otherwise>
								</c:choose>
							</ul>
						</li>
						<li class="gnb_1dli" style="z-index: 9999">
							<a href="" target="_self" class="gnb_1da mo_btn"
								>Contact Me<span class="material-icons-round"
									>keyboard_arrow_down</span
								></a
							>
							<ul class="dep2">
								<li>
									<a
										href="/Controller?cmd=list"
										target="_self"
										class="gnb_2da"
										>Please leave a message</a
									>
								</li>
							</ul>
						</li>
					</ul>

					<div class="full_bottom">
						<p class="right_copy">&copy; 2021 COPYRIGHT.</p>
					</div>
				</div>
			</div>
		</div>

		<link rel="stylesheet" href="css/swiper-bundle.css" />
		<script src="js/swiper-bundle.min.js"></script>

		<!-- Swiper -->
		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div
					class="swiper-slide"
					style="
						background: url('images/mainVisual01.jpg') no-repeat 50%
							center;
						background-size: cover;
					"
				>
					<div class="vstxtWrap">
						<div class="vsTxt">
							<h2>Hello World!</h2>
							<p>- Side Project -</p>
						</div>
					</div>
				</div>
				<div
					class="swiper-slide"
					style="
						background: url('images/mainVisual02.jpg') no-repeat 50%
							center;
						background-size: cover;
					"
				>
					<div class="vstxtWrap">
						<div class="vsTxt">
							<h2>Hello World!</h2>
							<p>- Side Project -</p>
						</div>
					</div>
				</div>
				<div
					class="swiper-slide"
					style="
						background: url('images/mainVisual01.jpg') no-repeat 50%
							center;
						background-size: cover;
					"
				>
					<div class="vstxtWrap">
						<div class="vsTxt">
							<h2>Hello World!</h2>
							<p>- Side Project -</p>
						</div>
					</div>
				</div>
				<div
					class="swiper-slide"
					style="
						background: url('images/mainVisual02.jpg') no-repeat 50%
							center;
						background-size: cover;
					"
				>
					<div class="vstxtWrap">
						<div class="vsTxt">
							<h2>Hello World!</h2>
							<p>- Side Project -</p>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</div>

		<div id="ftM">
			<div class="ft_wr">
				<div id="ft_copy">&copy; 2022 MINCHAE, KANG.</div>
			</div>
		</div>

		<!-- Initialize Swiper -->
		<script>
			var swiper = new Swiper(".mySwiper", {
				direction: "vertical",
				slidesPerView: 1,
				mousewheel: true,
				pagination: {
					el: ".swiper-pagination",
					clickable: true,
				},
			});

			$(document).ready(function () {
				$(".menu_icon").click(function () {
					$(this).toggleClass("menu_close");
					$(".full_menu").toggleClass("open");
					$("#header").toggleClass("open");
					$("#mainMenu").fadeToggle(10);
				});
			});

			$(window).scroll(function () {
				var height = $(document).scrollTop();
				if (parseInt(height) > 0) {
					$("#hd").css({
						background: "rgba(0,0,0,1)",
					});
				} else {
					$("#hd").css({
						background: "rgba(0,0,0,0)",
					});
				}
			});

			$(function () {
				// 폰트 리사이즈 쿠키있으면 실행
				font_resize(
					"container",
					get_cookie("ck_font_resize_rmv_class"),
					get_cookie("ck_font_resize_add_class")
				);
			});
		</script>
	</body>
</html>
