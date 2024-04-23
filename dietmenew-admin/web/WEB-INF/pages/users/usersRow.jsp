<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        
        <style>
            
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            body {
            font-family: "Poppins", sans-serif;
            overflow: hidden;
            }
            /*@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');*/
            
            .table {
                width: 100%;
            }
            
            .table_header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px;
            }
            
            .table_header p{
                color: grey;
                font-style: initial;
                font-weight: bold;
                font-size: 25px;
            }
            
            input {
                padding: 10px 20px;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-family: "Poppins", sans-serif;
                margin: 0 10px;
            }
            
            button{
                outline: none;
                border: none;
                border-radius: 6px;
                cursor: pointer;
            }
        
            .add_new {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 10px 10px;
            }
            
            .table_section{
                height: 750px;
                overflow: auto;
            }
            
            table{
                width: 100%;
                table-layout: fixed;
                border-collapse: collapse
            }
            
            thead th{
                top: 0;
                background-color: white;
                color: gray;
                font-size: 15px;
            }
            th,td{
                border-bottom: 1px solid;
                padding: 10px 20px;
                word-break: break-all;
                text-align: center;
            }
            
            </style>
    </head>
    
    <body>
        <div class="table">
            <div class="table_header">
            <p>Users</p>
                <div class="placeholder">
                    <input placeholder="Users name"/>
                    <button class="add_new">add new</button>
                </div>
            </div>
            
            <div class="table_section">
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>E mail</th>
                            <th>Address</th>
                            <th>Contact</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>saman gggggggggggg</td>
                            <td>goo@gmail.com</td>
                            <td>rathnapura</td>
                            <td>0715682100</td>
                            <td>
                                <button><i class="bi bi-pencil-square"></i></button>
                                <button><i class="bi bi-trash"></i></button>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>saman gggggggggggg</td>
                            <td>gooooooooo@gmail.com</td>
                            <td>rathnapura</td>
                            <td>0715682100</td>
                            <td>
                                <button><i class="bi bi-pencil-square"></i></button>
                                <button><i class="bi bi-trash"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    
    </body>
</html>
