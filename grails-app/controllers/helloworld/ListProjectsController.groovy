package helloworld

class ListProjectsController {
    ListProjectsService listProjectsService;

    def index() {
        def allProjects=ListProjects.list()
        [allprojects:allProjects]
    }

    def save={
        def response=listProjectsService.save(params)
        if(!response.isSuccess){
            flash.redirectParams=response.model
            redirect(controller:"listProjects" ,action:"create")
        }else{
            redirect(controller: "listProjects",action: "index")
        }

    }

    def create={
        def allProjects=ListProjects.list()
        [allprojects:allProjects]
    }

    def edit(Integer id){
        ListProjects project= listProjectsService.getById(id)
        [project:project]
    }
}
