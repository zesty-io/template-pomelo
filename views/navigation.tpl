    <div class="container nav-container">
        <nav class="navbar navbar-light navbar-expand-md d-flex flex-grow-0">
            <div class="container-fluid">
                <a class="navbar-brand text-primary d-flex justify-content-center align-items-center" href="/">
                    <img src="{{clippings.logo.getImage()}}?height=50" alt="{{clippings.site_name}} Logo"/> 
                    {{ if {clippings.site_name_nav} }}<h2 class="mb-0 ml-2">{{clippings.site_name}}</h2> {{end-if}}
                </a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse d-md-none d-lg-flex justify-content-lg-end" id="navcol-1">
                    <ul class="navbar-nav">
                        {{ each navigation as nav sort by sort_order }}
                        <li class="nav-item">
                            <a class="nav-link" href="{{if {nav.internal_page} }}{{truepath({nav.internal_page})}}{{else}}{{nav.external_url}}{{end-if}}">{{nav.title}}</a>
                            </li>
                        {{end-each}}
                    </ul>
                </div>
            </div>
        </nav>
    </div>