pragma solidity ^0.8.0;

contract PerformanceLogger {
    
    struct PerformanceData {
        address user;
        uint256 timestamp;
        uint256 performanceScore;
    }
    
    PerformanceData[] public performances;
    
    event PerformanceRecorded(address indexed user, uint256 timestamp, uint256 performanceScore);
    
    function recordPerformance(uint256 score) public {
        performances.push(PerformanceData(msg.sender, block.timestamp, score));
        emit PerformanceRecorded(msg.sender, block.timestamp, score);
    }
    
    function getPerformanceCount() public view returns (uint256) {
        return performances.length;
    }
}
