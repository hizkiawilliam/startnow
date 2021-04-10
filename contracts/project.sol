pragma solidity ^0.8.1;

contract funds {
      struct Projects {
      string client_name;
      string project_name;
      int curr_balance;
      int target_balance;
    }
    
    Projects[] public projects;
    
    function createProject(
        string memory _client_name,
        string memory _project_name,
        int _curr_balance,
        int _target_balance
        ) public {
        projects.push(Projects(_client_name,_project_name,_curr_balance,_target_balance));    
    }
    
    function getProject(uint _index) public view returns (
        string memory, 
        string memory, 
        int,
        int) {
        Projects storage project = projects[_index];
        return (project.client_name, project.project_name, project.curr_balance, project.target_balance);
    }
    
    function updateClientName(
        string memory _client_name,
        uint _index
        ) public {
        Projects storage project = projects[_index];
        project.client_name = _client_name;
    }
    
    function updateProjectName(
        string memory _project_name,
        uint _index
        ) public {
        Projects storage project = projects[_index];
        project.project_name = _project_name;
    }
    
    function addBalance(
        int _balance,
        uint _index
        ) public {
        Projects storage project = projects[_index];
        project.curr_balance += _balance;
    }
    
    function updateTargetBalance(
        int _balance,
        uint _index
        ) public {
        Projects storage project = projects[_index];
        project.target_balance = _balance;
    }
}