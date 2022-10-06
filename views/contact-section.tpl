<section class="contact-section">
        <div class="container">
            <div class="form-container">
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-6 text-center m-auto">
                        {{ if {post_var.email} }}
                        <h2>Thank you for contacting us, we will be in touch with you soon!</h2>
                        {{else}}
                        <form method="post" action="#">
                            <input type="hidden" name="zlf" value="Contact Form" />
                            <input name="zcf" value="1" type="hidden">
                            <input type="hidden" name="{{setting.contact-form.honeypot}}" value="">              
                            <h2 class="text-center">Contact us.</h2>
                            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                            <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
                            <div class="form-group"><textarea class="form-control" type="textarea" name="message" placeholder="Message"></textarea></div>
                            <div class="form-group text-center"><button class="btn btn-primary" type="submit">Submit</button></div>
                        </form>
                        {{end-if}}
                    </div>
                </div>
            </div>
        </div>
    </section>