package helloworld

import grails.converters.JSON

class TaskController {


    def index() {
        def results = Task.list()
        //Return json assay
        render results as JSON

        //Return json object
      /*  render(contentType: "application/json"){
            tasks(results){Task t->
                name t.name
                tsask 'ok'
            }
        }*/
    }
}
