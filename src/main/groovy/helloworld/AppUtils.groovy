package helloworld

import org.grails.web.util.WebUtils

 class AppUtils {
    static saveResponse(Boolean isSuccess,def model){
        return [isSuccess:isSuccess,model:model]
    }

    static getAppSession(){
        return WebUtils.retrieveGrailsWebRequest().session
    }

    static infoMessage(String message,boolean status=true){
        return [info:message,success:status]
    }
}
