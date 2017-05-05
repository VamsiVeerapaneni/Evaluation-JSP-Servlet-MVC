package User;

public class RegisteredList 
{
   int ID;
   String Username;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
   
   public RegisteredList(int ID,String Username)
   {
	   this.ID=ID;
	   this.Username=Username;
   }
}
