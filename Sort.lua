LibTable = { }

function LibTable.SortTableDesc(tbl, column)
    local sortedTable = tbl
    local firstIndex = 1
    local currIndex = firstIndex
    local tblSize = #tbl

    while (firstIndex < tblSize) do 
        currIndex = firstIndex
        highestValue = firstIndex
        while (currIndex <= tblSize) do
            if (tbl[currIndex][column] > tbl[highestValue][column]) then
                highestVal = currIndex
            end
            currIndex = currIndex + 1
        end
        tbl[tblSize], tbl[highestValue] = tbl[highestValue], tbl[tblSize]
        firstIndex = firstIndex + 1
    end
	return (sortedTable)
end