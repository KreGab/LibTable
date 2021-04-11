LibTable = { }

function LibTable.SortTableDesc(tbl, column)
    local sortedTable = tbl
    local firstIndex = 1
    local currIndex = firstIndex
    local tblSize = #sortedTable

    while (firstIndex < tblSize) do 
        currIndex = firstIndex
        highestValue = firstIndex
        while (currIndex <= tblSize) do
            if (sortedTable[currIndex][column] > sortedTable[highestValue][column]) then
                highestValue = currIndex
            end
            currIndex = currIndex + 1
        end
        sortedTable[firstIndex], sortedTable[highestValue] = sortedTable[highestValue], sortedTable[firstIndex]
        firstIndex = firstIndex + 1
    end
	return (sortedTable)
end