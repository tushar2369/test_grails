package helloworld

class ListProjects {

    String id
    String name;
    String description;
    Date dueDate;
    /*static belongsTo = [owner:EndUser]
    static hasMany = [task:Task]*/
    static constraints = {
        id column: "id", type: "long", sqlType: "int", generator: 'identity'
    }
}
