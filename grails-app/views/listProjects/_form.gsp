<div class="form-group row">
    <label for="name" class="col-sm-3 col-form-label">Name</label>

    <div class="col-sm-8">
        <g:textField name="name" required="true" class="form-control" value="${project?.name}" placeholder="Please Enter Project Name"/>
    </div>
</div>

<div class="form-group row">
    <label for="version" class="col-sm-3 col-form-label">Version</label>

    <div class="col-sm-8">
        <g:textField name="version" class="form-control" value="${project?.version}" placeholder="Please Enter Version Number"/>
    </div>
</div>

<div class="form-group row">
    <label for="description" class="col-sm-3 col-form-label">Description</label>

    <div class="col-sm-8">
        <g:textField name="description" class="form-control" value="${project?.description}" placeholder="Description"/>
    </div>
</div>
