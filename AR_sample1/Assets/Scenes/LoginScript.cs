using UnityEngine;
using UnityEngine.UI;
using System.Data;
using Mono.Data.Sqlite;
using UnityEngine.SceneManagement;

public class LoginScript : MonoBehaviour
{
    public InputField usernameInput;
    public InputField passwordInput;
    public Text loginStatusText;

    private string dbPath = "URI=file:Assets/Data/UserData.db";
    public static string currentUser; // This stores the currently logged in user

    public void Login()
    {
        string username = usernameInput.text;
        string password = passwordInput.text;

        // Check if the database file exists.
        if (!System.IO.File.Exists("Assets/Data/UserData.db"))
        {
            loginStatusText.text = "Database does not exist. Create it first.";
            return;
        }

        // Connect to the SQLite database.
        IDbConnection dbConnection = new SqliteConnection(dbPath);
        dbConnection.Open();

        // Check if the user exists and the password matches.
        IDbCommand checkUserCommand = dbConnection.CreateCommand();
        checkUserCommand.CommandText = "SELECT Username FROM Users WHERE Username = @Username AND PasswordHash = @PasswordHash";
        IDbDataParameter usernameParam = checkUserCommand.CreateParameter();
        usernameParam.ParameterName = "@Username";
        usernameParam.Value = username;
        checkUserCommand.Parameters.Add(usernameParam);
        IDbDataParameter passwordParam = checkUserCommand.CreateParameter();
        passwordParam.ParameterName = "@PasswordHash";
        passwordParam.Value = password;
        checkUserCommand.Parameters.Add(passwordParam);

        IDataReader reader = checkUserCommand.ExecuteReader();

        if (reader.Read())
        {
            // Login successful; set the current user
            currentUser = username;
            loginStatusText.text = "Login successful! Welcome, " + username;

            // Transition to a new scene after a successful login
            SceneManager.LoadScene("Home_Page"); // Change "YourNewSceneName" to the scene you want to load.
        }
        else
        {
            loginStatusText.text = "Login failed. Check your credentials.";
        }

        reader.Close();
        dbConnection.Close();
    }
}
