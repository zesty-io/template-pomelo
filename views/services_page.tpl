<section class="color-hero">
        <div class="color-banner bg-primary">
            <div class="container" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true">
                <h1 class="text-white">{{this.title}}</h1>
            </div>
        </div>
    </section>
    <section id="service-section">
        <div class="container text-center">
            <div class="basic-intro">
                {{this.content}}
                <hr class="short">
            </div>
            <div id="accordion" class="main-collapse">
                {{each services as service sort by sort_order ASC }}
                <div class="collapse-item"><a class="d-flex justify-content-lg-start card-header" data-toggle="collapse" aria-expanded="false" aria-controls="collapse-{{index}}" href="#collapse-{{index}}" role="button"><i class="fa fa-chevron-down d-flex align-items-lg-center collapse-icon text-secondary"></i>
                        <h4 class="text-secondary">{{service.title}}</h4>
                    </a>
                    <div id="collapse-{{index}}" class="collapse" data-parent="#accordion">
                        <div class="text-left card-body">
                            {{service.content}}
                        </div>
                    </div>
                </div>
                {{ end-each}}
            </div>
        </div>
    </section>
    <section id="projects">
        <div class="container">
            <div class="section-heading">
                <h2 class="text-primary">{{this.title2}}</h2>
                {{this.content2}}
                <hr class="short">
            </div>
            <div class="row flex-row projects-row">
                {{ each projects as project sort by sort_order ASC limit 3 }}
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
    {{ include contact-section }}