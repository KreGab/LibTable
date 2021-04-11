function SortTableDesc(tbl, field)
	local sortedTable = { }
    local tblSize = #tbl
    local highestElement = 1
    local insertIntoTable = table.insert
    local i = 1
    local j = i

    while (i <= tblSize) do
        j = i
        highestElement = j
        while (j <= tblSize) do 
            if (tbl[j][field] > tbl[highestElement][field]) then
                highestElement = j
            end
            if (j == tblSize) then
                insertIntoTable(sortedTable, tbl[highestElement])
            end
            j = j + 1
        end
        i = i + 1
    end
	return (sortedTable)
end