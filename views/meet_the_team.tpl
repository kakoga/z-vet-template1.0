<div id="meet-the-team">
    {{ include inner-page-hero }}
    <div class="container">
        <div class="body-content" >
            <div class="row">
                <div class="col-md-12" >
                    <h1>{{ page.page_title }}</h1>
                    {{ page.body_text }}
                </div>
            </div>
            {{ each employee_category as ec sort by ec.sort_order }}
            <h3>{{ ec.employee_category }}</h3>
            <hr/>
            {{ each employees as employee where employee.employee_category = {ec.zid} sort by employee.employee_category}}
            <div class="row">
                <div class="col-md-4">
                    <img src="{{ employee.employee_photo.getImage() }}" alt="{{ employee.employee_first_name}} {{ employee.employee_last_name }} photo">
                </div>
                <div class="col-md-8">
                        <h4>{{ employee.employee_first_name}} {{employee.employee_last_name}}</h4>
                        <p>{{ employee.employee_bio }}</p>
                </div>
            </div>
            {{ end-each }}
            {{ end-each }}
        </div>
    </div>
</div>

