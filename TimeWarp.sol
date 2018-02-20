contract TimeWarp {
    bool development;
    uint256 warpedTime = block.timestamp;
    
    function setDevelopment(bool _development) external {
        development = _development;
    }
    
    function addDays(uint256 _days) external {
        require(_days > 0);
        warpedTime += 1 days * _days;
    }
    
    function addHours(uint256 _hours) external {
        require(_hours > 0);
        warpedTime += 1 hours * _hours;
    }
    
    function getTime() internal view returns(uint256) {
        if (development) {
            return warpedTime;
        } else {
            return block.timestamp;
        }
    }
}
