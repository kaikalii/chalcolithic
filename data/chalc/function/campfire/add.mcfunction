$data modify block ~ ~ ~ CookingTotalTimes[$(slot)] set value 600
$data modify block ~ ~ ~ CookingTimes[$(slot)] set value 0
data modify block ~ ~ ~ Items append from storage chalc:macro item
kill @s