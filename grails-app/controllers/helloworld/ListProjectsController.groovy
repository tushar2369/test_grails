package helloworld

import grails.web.servlet.mvc.GrailsParameterMap

class ListProjectsController {
    ListProjectsService listProjectsService;

    def index() {
        println("Filter call.... ")
        def response=listProjectsService.list(params)
        def allProjects=ListProjects.list()
        [allprojects:response.list]
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
        if(flash.redirectParams){
            [project: flash.redirectParams]
        }else{
            def response=listProjectsService.getById(id)
            if(!response){
                redirect(controller: "ListProjects",action: "index")
            }else{
                [project:response]
            }
        }
     /*   ListProjects project= listProjectsService.getById(id)
        [project:project]*/
    }

    def update(){
        print("update call")
        def response=listProjectsService.getById(params.id)
        if(!response){
            redirect(controller: "ListProjects",action: "index")
        }else{
             response=listProjectsService.update(response,params)

            print("Update Response : "+response.isSuccess.toString())
            if(!response.isSuccess){
                flash.redirectParams=response.model
                redirect(controller: "ListProjects",action: "edit")
            }else {
                redirect(controller: "ListProjects",action: "index")
            }

        }
    }

    def delete(Integer id){
        System.out.print("Delete Call")
        def response=listProjectsService.getById(id)
        if(!response){
            redirect(controller: "ListProjects",action: "index")
        }else{
            response=listProjectsService.delete(response)
            if(!response){
                [message:"Something Wrong"]
                redirect(controller: "ListProjects",action: "index")
            }else{
                redirect(controller: "ListProjects",action: "index")
            }
        }
    }
}
