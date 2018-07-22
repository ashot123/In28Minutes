package in28minutes.login;

public class LoginService {
    public boolean validateUser(String user, String password) {
        return user.equalsIgnoreCase("ashot") && password.equals("r00t");
    }
}
