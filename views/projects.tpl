<div id="basic-page">
        <div class="basic-hero" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true">
            <div class="d-flex justify-content-lg-start align-items-lg-center basic-hero-text"></div><img src="{{this.image.getImage()}}">
        </div>
    </div>
    <div class="basic-page-wrap">
        <div class="container" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true">
            <h2 class="text-secondary">{{this.title}}</h2>
            {{this.content}}
        </div>
    </div>
    <section id="clients">
        <div class="clients-wrapper">
            <div class="container">
                <h2 class="text-secondary">Check out our other projects</h2>
                <div id="swiper-projects" class="swiper-container">
                    <div class="d-flex align-items-lg-center swiper-wrapper projects-swiper pb-5">
                        {{ each projects as project where z.zuid != '{this.zuid}' sort by sort_order ASC limit 3 }}
                        <div class="swiper-slide"><a href="{{project.getUrl()}}"><img src="{{project.image.getImage()}}?width=1110&height=200&fit=crop">
                                <div class="swipe-overlay">
                                    <h5 class="text-secondary">{{project.title}}</h5>
                                </div>
                            </a>
                        </div>
                        {{end-each}}
                    <div class="d-flex justify-content-center align-items-lg-center slider-controls">
                        <div class="button-prev"><i class="fa fa-chevron-left"></i></div>
                        <div class="swiper-pagination"></div>
                        <div class="button-next"><i class="fa fa-chevron-right"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{ include contact-section }}