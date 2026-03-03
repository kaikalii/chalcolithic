title @s actionbar {text: "Not enough enchanting power: ", color: red, extra:[{score:{name:"#imbue_max",objective:chalc},color:red},{text:"/",color:red},{score:{name:"#required_power",objective:chalc}}]}
function chalc:imbue2/invalid
return 1