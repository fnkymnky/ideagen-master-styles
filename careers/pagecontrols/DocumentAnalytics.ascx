<%@ Control Language="C#" Inherits="EasySite.API.StyleComponent" %>

<script src="/easysiteweb/easysite/styledata/master-v2/js/plugins/parallax.min.js"></script>

<!-- PARALLAX BACKGROUND IMAGE LINKS -->
<script>
	// Careers Main Page
	$('.careers').parallax({imageSrc: '/_assets/backgrounds/careers/careers-background.jpg'});

	// Current Vacancies Page
	$('.current-vacancies').parallax({imageSrc: '/_assets/backgrounds/careers/current-vacancies.jpg'});

	// HR Job Vacancy Template
	$('.hr-background').parallax({imageSrc: '/_assets/backgrounds/careers/hr-background.jpg'});

	// Development Job Vacancy Template
	$('.development-background').parallax({imageSrc: '/_assets/backgrounds/careers/development-background.jpg'});

	// Support Job Vacancy Template
	$('.support-background').parallax({imageSrc: '/_assets/backgrounds/careers/support-background.jpg'});

	// Marketing Job Vacancy Template
	$('.marketing-background').parallax({imageSrc: '/_assets/backgrounds/careers/marketing-background.jpg'});

	// Design Job Vacancy Template
	$('.design-background').parallax({imageSrc: '/_assets/backgrounds/careers/design-background.jpg'});

	// Services Job Vacancy Template
	$('.services-background').parallax({imageSrc: '/_assets/backgrounds/careers/services-background.jpg'});

	// Sales Job Vacancy Template
	$('.sales-background').parallax({imageSrc: '/_assets/backgrounds/careers/sales-background.jpg'});

	// Benefits and Rewards Page
	$('.benefits-and-rewards').parallax({imageSrc: '/_assets/backgrounds/careers/benefits-and-rewards.jpg'});

	// Meet Our People Page
	$('.meet-our-people').parallax({imageSrc: '/_assets/backgrounds/careers/meet-our-people.jpg'});

	// MODAL VIDEO CLOSE FIX
	$("#alan-blair").on('hidden.bs.modal', function (e) {
		    $("#alan-blair iframe").attr("src", $("#alan-blair iframe").attr("src"));
	});	
	$("#alex-mccormick").on('hidden.bs.modal', function (e) {
		    $("#alex-mccormick iframe").attr("src", $("#alex-mccormick iframe").attr("src"));
	});	
	$("#david-pike").on('hidden.bs.modal', function (e) {
		    $("#david-pike iframe").attr("src", $("#david-pike iframe").attr("src"));
	});	
	$("#gordon-mckeown").on('hidden.bs.modal', function (e) {
		    $("#gordon-mckeown iframe").attr("src", $("#gordon-mckeown iframe").attr("src"));
	});	
	$("#laura-gibbons").on('hidden.bs.modal', function (e) {
		    $("#laura-gibbons iframe").attr("src", $("#laura-gibbons iframe").attr("src"));
	});	
	$("#patrick-hamilton").on('hidden.bs.modal', function (e) {
		    $("#patrick-hamilton iframe").attr("src", $("#patrick-hamilton iframe").attr("src"));
	});	
</script>