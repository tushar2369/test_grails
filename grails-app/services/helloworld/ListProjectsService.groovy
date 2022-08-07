package helloworld

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ListProjectsService {

    def save(GrailsParameterMap params){
        ListProjects project=new ListProjects(params)
        project.version=params.int("version")
        project.dueDate=new Date()
        def response=AppUtils.saveResponse(false,project)
        try {
            if(project.validate()){
                project.save(flush:true)
                if(!project.hasErrors()){
                    response.isSuccess=true;
                }
            }
        } catch(Exception e1) {
            //Catch block
            print(e1.toString())
        }

        return response;
    }

    def getById(Serializable id){
        def response=ListProjects.get(id)
        return response;
    }

    def update(ListProjects projects,GrailsParameterMap params){
        projects.properties=params
        def response=AppUtils.saveResponse(false,projects)
        if(projects.validate()){
            projects.save(flush:false)
            if(!projects.hasErrors()){
                response.isSuccess=true
            }
        }
        return response
    }

    def delete(ListProjects project){
        try{
           project.delete()
        }catch(Exception e1){
            return false
        }
        return true
    }
}
