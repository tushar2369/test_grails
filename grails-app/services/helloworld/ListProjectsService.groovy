package helloworld

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ListProjectsService {

    def save(GrailsParameterMap params){
        ListProjects project=new ListProjects(params);
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
}
