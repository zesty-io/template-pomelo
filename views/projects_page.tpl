<section class="color-hero">
        <div class="color-banner bg-primary">
            <div class="container" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true">
                <h1 class="text-white">{{this.title}}</h1>
            </div>
        </div>
    </section>
    <section>
        <div class="container">

                {{this.content}}
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
        </div>
    </section>