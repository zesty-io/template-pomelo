<section class="color-hero">
        <div class="color-banner bg-primary">
            <div class="container" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" data-aos-once="true">
                <h1 class="text-white">{{this.title}}</h1>
            </div>
        </div>
    </section>
    <div class="photo-gallery">
        <div class="container">
            <div class="intro">
                {{this.content}}
            </div>
            <div class="row">
                {{ each team_members as mem sort by sort_order ASC }}
                <div class="col-sm-6 col-md-4 col-lg-4 item"><img class="img-fluid" src="{{mem.image.getImage()}}">
                    <div class="employee-text">
                        <h5 class="text-secondary employee-name">{{mem.name}}</h5>
                        <h6 class="text-secondary">{{mem.job_title}}</h6>
                    </div>
                </div>
                {{end-each}}
            </div>
        </div>
    </div>