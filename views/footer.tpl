    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            {{ each services as serv sort by sort_order limit 3 }}
                            <li><a href="{{services_page.first().getUrl()}}">{{serv.title}}</a></li>
                            {{end-each}}
                            <li><a href="{{services_page.first().getUrl()}}">See All</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="{{projects_page.first().getUrl()}}">{{projects_page.first().title}}</a></li>
                            <li><a href="{{about.first().getUrl()}}">{{about.first().title}}</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>{{clippings.site_name}}</h3>
                        <p>{{clippings.footer_content}}</p>
                    </div>
                    <div class="col item social">
                        {{ each social_icons as social sort by sort_order }}
                        <a href="{{social.external_url}}" target="_blank"><i class="fa fa-{{social.fontawesome_icon}}"></i></a>
                        {{end-each}}
                        </div>
                </div>
                <p class="copyright">{{clippings.site_name}} © {{instance.date(Y)}}</p>
            </div>
        </footer>
    </div>