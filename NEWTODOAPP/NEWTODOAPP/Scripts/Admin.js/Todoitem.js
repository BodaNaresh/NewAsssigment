let Todoitem = document.querySelector("#inputtext");
let addToDo = document.querySelector("#btn");
let TodoItems = document.querySelector("#tasks");
let mainDiv = document.querySelector('.Todo_board');

let Inprogress = document.querySelector("#Inprogress"); 
let Completed = document.querySelector("#Completed");

let Board = document.querySelector("#boards");
let todovalue = document.querySelector('textinput');

let todos = [];

//Adding todos
addToDo.addEventListener('click', () => {
    if (Todoitem.value != '') {
        todos.push(Todoitem.value);
    }
    if (Todoitem.value == "") {
        alert("Please Enter Something");
      
    }

    TodoItems.appendChild(Createtodo(Todoitem.value));
    Todoitem.value = "";
});


//draggable functions
const Status = document.querySelectorAll('.todo_block');
let draggableItem = null;

function dragStart() {
        draggableItem = this;
    }

function dragEnd() {
        draggableItem = null;
    }

Status.forEach((list) => {
     list.addEventListener('dragover', dragOver);
     list.addEventListener('dragenter', dragEnter);
     list.addEventListener('dragleave', dragLeave);
     list.addEventListener('drop', Drop);
});

function dragOver(e) {
    e.preventDefault();
}

function dragEnter(e) {
        e.preventDefault();
    }

function dragLeave(e) {
        e.preventDefault();
}

var id;

function Drop(e) {
    console.log(e);
    this.appendChild(draggableItem);
    id = e.srcElement.children[2].id;
    let newstatus = $(this).closest('Div').attr('id');
    var url = 'http://localhost:62045/api/Update/UpdateStatus?id=' + id;
    var data = JSON.stringify({
        "TodoId":id,
        "Status": newstatus,
    });
    $.ajax({
        type: "PUT",
        data: data,
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
           // alert(JSON.stringify(result));
        },
        error: function (error) {
            alert(error);
        },
    });
}

//Getting todos from database
$(document).ready(function () {
     //GetTask();
})

var Todos;
function GetTask() {
        var url = 'http://localhost:62045/api/AdminApi/GetAllTodos';
        $.ajax({
            type: "GET",
            url: url,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                result.filter(result => {
                    if (result.Status == "Todo") {
                        console.log(result);
                        var todo = Createtodo(result.Title, result.TodoId);
                        TodoItems.appendChild(todo);  
                    }
                    if (result.Status == "Doing") {
                        var doing = Createtodo(result.Title, result.TodoId);
                        Inprogress.appendChild(doing);
                    }
                    if (result.Status == "Done") {                           
                        console.log(result);
                        var done = Createtodo(result.Title, result.TodoId);
                        Completed.appendChild(done);
                    }
                })
                //alert(JSON.stringify(result));
                //console.log(result);
            },
            error: function (error) {
                alert(error);
            },
        });
}

//Create Todo
function Createtodo(value,id) {
        let ToDoList = document.createElement('div');
        ToDoList.classList.add('ToDoList');

        let todo = document.createElement('div');
        todo.classList.add('todo');

        ToDoList.setAttribute("draggable", "true");
        ToDoList.setAttribute("id", id);
        console.log("getting id" + id);
        ToDoList.addEventListener("dragstart", dragStart);
        ToDoList.addEventListener("dragend", dragEnd);

        // creating input element
        let todo_input_element = document.createElement('input');
        todo_input_element.classList.add('text');
        todo_input_element.type = 'text';
        todo_input_element.value = value;
        todo_input_element.setAttribute("readonly", "readonly");
        todo.appendChild(todo_input_element);

        //code for div element
        let todo_actions = document.createElement('div');
        todo_actions.classList.add('actions');

        // code for creating edit button
        let todo_edit = document.createElement('button');
        todo_edit.classList.add('edit');
        todo_edit.innerHTML = 'Edit';

        // code for creating delete button
        let todo_delete = document.createElement('button');
        todo_delete.classList.add('delete');
        todo_delete.innerHTML = 'X';

        //apending actions to todo actions
        ToDoList.appendChild(todo);
        todo_actions.appendChild(todo_edit);
        todo_actions.appendChild(todo_delete);
        ToDoList.appendChild(todo_actions);

    //Edit Functionality
    todo_edit.addEventListener('click', () => {
        if (todo_edit.innerText.toLowerCase() == 'edit') {
            todo_input_element.removeAttribute("readonly");
            todo_input_element.focus();
            todo_edit.innerText = "Update";
        } else {
            todo_input_element.setAttribute("readonly", "readonly");
            todo_edit.innerText = "Edit";
            var Val = todo_input_element.value;
            console.log(Val);
            var ids = id;
            let Title = Val;
            var url = 'http://localhost:62045/api/AdminApi/UpdateToDo?id=' + ids;
            var data = JSON.stringify({
                "TodoId": ids,
                "Title": Title,
            });
            $.ajax({
                type: "PUT",
                data: data,
                url: url,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    alert(result);
                },
                error: function (error) {
                    alert(error);
                },
            });
        }
    });


   //delete Functionality
    todo_delete.addEventListener('click', () => {
        const element = document.getElementById(id);
        element.remove();
        var deleteId = id;
        var url = 'http://localhost:62045/api/AdminApi/DeleteToDo?id=' + deleteId;
        $.ajax({
            type: "DELETE",
            url: url,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                //alert(result);
            },
            error: function (error) {
                alert(error);
            },
        });
    });

    return ToDoList;
}

//save todo in database
function saveTask() {
        let Title = $("#inputtext").val();
        var url = 'http://localhost:62045/api/AdminApi/PostToDo';
        var data = JSON.stringify({
            "Title": Title,
            "Status": "Todo",
        });
        $.ajax({
            type: "POST",
            data: data,
            url: url,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                alert(result);
            },
            error: function (error) {
                alert(error);
            },
        });
}

function removeAppendedTodos() {
    if (BoardName == 'Board1') {
       const Todotasks = document.getElementById("tasks");
         Todotasks.remove();
        console.log(Todotasks);
      }
    if (BoardName == 'Board2') {
        const inprogress = document.getElementById("Inprogress");
        inprogress.removeChild(inprogress.firstElementChild);
        console.log(inprogress);
    }
    if (BoardName == 'Board3') {
        const completed = document.getElementById("Completed");
        completed.remove();
        console.log(completed);
    }
}

//BoardInfromation
let BoardName;
function SelectBoards() {
    removeAppendedTodos();
     BoardName = $("#ddl").val();
    var url = 'http://localhost:62045/api/Board/Boardget';
    var data = JSON.stringify({
        "BoardName": BoardName
    });
    $.ajax({
        type: "POST",
        data: data,
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            result.forEach(result => {
                if (result.Status == "Todo") {
                    console.log(result);
                    var todo = Createtodo(result.Title, result.TodoId);
                    TodoItems.appendChild(todo);
                }
                if (result.Status == "Doing") {
                    var doing = Createtodo(result.Title, result.TodoId);
                    Inprogress.appendChild(doing);
                }
                if (result.Status == "Done") {
                    console.log(result);
                    var done = Createtodo(result.Title, result.TodoId);
                    Completed.appendChild(done);
                }
                
            })

        },
        error: function (error) {
            alert(error);
        },
    });
   
}

//code for creating a board
function BoardCreation() {
    let Container = document.createElement('div');
    Container.classList.add('container');

    let Todo_Board = document.createElement('div');
    Todo_Board.classList.add('Todo_Board');

    let todo_block = document.createElement('div');
    todo_block.classList.add('todo_block');

    let items = document.createElement('Div');
    items.classList.add('items');
    items.innerText = textinput.value;

    todo_block.appendChild(items);
    textinput.value = "";

    Todo_Board.appendChild(todo_block);
    Container.appendChild(Todo_Board);
    Container.appendChild(todo_block);
    Board.appendChild(Container);
    console.log(Board);
}


function GetBoardInformation() {
    var url = 'http://localhost:62045/api/BoardInfo/GetBoardInfo';
    $.ajax({
        type: "GET",
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
           
            result.forEach(result => {
              //  alert(result);
            })


        },
        error: function (error) {
            alert(error);
        },
    });
}


function postBoardInformation() {
    let BoardName = $("#textinput").val();
    console.log(BoardName);
    var url = 'http://localhost:62045/api/BoardInfo/Boardinfopost';
    var data = JSON.stringify({
        "BoardName": BoardName
    });
    $.ajax({
        type: "POST",
        data: data,
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
                //alert(JSON.stringify(result));
        },
        error: function (error) {
            alert(error);
        },
    });

}







