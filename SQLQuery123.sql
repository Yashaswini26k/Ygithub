CREATE PROCEDURE [dbo].[Insert_User]
      @name VARCHAR(50),
      @email VARCHAR(50),
      @mobile BIGINT,
      @city VARCHAR(50),
      @location VARCHAR(50),
      @address VARCHAR(50),
      @zipcode INT,
      @password VARCHAR(50),
      @roleid INT
AS
BEGIN
      SET NOCOUNT ON;
      IF EXISTS(SELECT Id FROM users WHERE name = @name)
      BEGIN
            SELECT -1 -- Name exists.
      END
      ELSE IF EXISTS(SELECT Id FROM users WHERE email = @email)
      BEGIN
            SELECT -2 -- Email exists.
      END
      ELSE
      BEGIN
       INSERT INTO [users]
                     ([name]
                     ,[email]
                     ,[mobile]
                     ,[city]
                     ,[location]
                     ,[address]
                     ,[zipcode]
                     ,[password]
                     ,[roleid])
            VALUES
                     (@name
                     ,@email
                     ,@mobile
                     ,@city
                     ,@location
                     ,@address
                     ,@zipcode
                     ,@password
                     ,@roleid
                     )
           
            SELECT SCOPE_IDENTITY() -- Id                 
     END
END