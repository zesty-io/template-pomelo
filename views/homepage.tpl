

    <div class="simple-slider">
        <div id="swiper-hero" class="swiper-container">
            <div class="swiper-wrapper">
            {{ each hero_sliders as slide sort by sort_by }}
                <div class="swiper-slide">
                    <div class="swiper-slide-overlay" style="background-image:url('{{slide.image.getImage()}}')">
                        <div class="card-img-overlay d-flex align-items-center hero-content">
                            <div class="container">
                                <div class="row slide-text-block">
                                    <div class="col-md-12 col-lg-8" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true">
                                        <h4 class="text-success">{{slide.slide_eyebrow}}</h4>
                                        <h1 class="text-white text-shadow">{{slide.slide_header}}</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{end-each}}
            </div>
        </div>

    <div class="swiper-pagination"></div>
    <div class="swiper-button-prev ml-3"><i class="fas fa-chevron-left text-primary"></i></div>
    <div class="swiper-button-next mr-3"><i class="fas fa-chevron-right text-primary"></i></div>
    </div>
    <section id="intro">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="200" data-aos-once="true"><div class="intro-media">
    {{ include homepage-svg }}

</div></div>
                    <div class="col-sm-12 col-md-6 d-flex">
                        <div class="d-flex flex-column justify-content-xl-center align-items-xl-start" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200" data-aos-once="true">
                            <h1 class="text-primary">{{this.heading}}</h1>
                            {{this.content}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="services">
        <div class="container">
            <div data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true" class="section-heading">
                <h2 class="text-primary">{{this.heading2}}</h2>
                {{this.content2}}
                <hr class="short">
            </div>
            <div>
                <div class="row">
                    {{ each home_cards as card sort by sort_order }}
                    <div class="col-lg-6 col-12" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200" data-aos-once="true">
                        <div class="justify-content-xl-start align-items-xl-center box">
                            <div class="row d-flex justify-content-lg-start align-items-lg-center box-row">
                                <div class="col-3 col">
                                    <div></div><i class="fa fa-{{card.fontawesome_icon}} icon-large"></i>
                                </div>
                                <div class="col-8">
                                    <h4 class="text-secondary">{{card.title}}</h4>
                                    <p>{{card.body}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{end-each}}
                </div>
            </div>
        </div>
    </section>
    <section id="projects">
        <div class="container">
            <div data-aos="fade-up" data-aos-duration="1000" data-aos-once="true" class="section-heading">
                <h2 class="text-primary">{{this.heading2}}</h2>
                {{this.content3}}
                <hr class="short">
            </div>
            <div class="row flex-row projects-row">
                {{ each projects as project sort by sort_order ASC }}
                <div class="col-sm-6 col-lg-4 item"><a class="project-link" href="{{project.getUrl()}}">
                        <div class="project-box"><img src="{{project.image.getImage()}}?width=350">
                            <div class="d-flex flex-column justify-content-lg-center align-items-lg-start cover">
                                <h3>{{project.title}}</h3>
                                <h4>{{project.subtitle}}</h4>
                                <p>{{project.content.subWords(10)}}...</p>
                            </div>
                        </div>
                    </a>
                </div>
                {{end-each}}
            </div>
            <div class="text-center cta-wrapper">
                <a href="{{projects_page.first().getUrl()}}" class="btn btn-primary"> See All Projects</a>
            </div>
        </div>
    </section>