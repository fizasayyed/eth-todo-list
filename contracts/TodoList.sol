// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract TodoList {
    uint taskCount = 0;  // to keep track of number of tasks in todo list

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    constructor() public {
        createTask("Water the plants!");
      }

    mapping(uint => Task) public tasks;

    //Creating tasks :
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount ,_content, false);
    }



}