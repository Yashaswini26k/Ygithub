Create Procedure AuthenticateUser
@Username varchar(100),
@Password varchar(100)
as
Begin
Declare @Count int
Select @Count = COUNT(email)from users 
where email = @Username
if(@Count =1)
Begin
Select 1 as ReturnCode
End
Else
Begin
Select -1 as ReurnCode
End
End