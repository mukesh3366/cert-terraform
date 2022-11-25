
resource "aws_iam_user" "lb" {
  path  = "/system/" 
  for_each = toset(["user-1", "user-2", "user-3"])  
  name = each.value 

}


resource "aws_iam_user" "lb" {
  path  = "/system/" 
  for_each = {
    key1 = "user-1"
    key2 = "user-2" 
  } 
 name = each.value      
} 

