pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCoount = 0;
    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("check out my linked in page");
    }

    function createTask(string memory _content) public {
        taskCoount++;
        tasks[taskCoount] = Task(taskCoount, _content, false);
    }
}
