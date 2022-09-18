package helloworld

import grails.gorm.annotation.Entity

import javax.persistence.GeneratedValue
import javax.persistence.Id


class ListProjects {


    Long id
    String name;
    String description;
    Date dueDate;
    /*static belongsTo = [owner:EndUser]
    static hasMany = [task:Task]*/
    static constraints = {
        id column: "id", type: "long", sqlType: "int", generator: 'identity'
        name nullable: false
        description nullable: true

    }
}
