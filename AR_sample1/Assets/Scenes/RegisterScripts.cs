using UnityEngine;
using UnityEngine.UI;
using System;
using System.Data;
using Mono.Data.Sqlite;
using UnityEngine.SceneManagement;

public class RegisterScripts : MonoBehaviour
{
    public InputField usernameInput;
    public InputField passwordInput;
    public InputField confirmPasswordInput;
    public Text registerStatusText;

    private string dbPath = "URI=file:Assets/Data/UserData.db";

    public void Register()
    {
        string username = usernameInput.text;
        string password = passwordInput.text;
        string confirmPassword = confirmPasswordInput.text;

        // Check if the database file exists.
        if (!System.IO.File.Exists("Assets/Data/UserData.db"))
        {
            ShowRegistrationStatus("Database does not exist. Create it first.");
            return;
        }

        // Check if passwords match.
        if (password != confirmPassword)
        {
            ShowRegistrationStatus("Passwords do not match.");
            return;
        }

        // Connect to the SQLite database.
        IDbConnection dbConnection = new SqliteConnection(dbPath);
        dbConnection.Open();

        // Check if the username already exists.
        IDbCommand checkUserCommand = dbConnection.CreateCommand();
        checkUserCommand.CommandText = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
        IDbDataParameter usernameParam = checkUserCommand.CreateParameter();
        usernameParam.ParameterName = "@Username";
        usernameParam.Value = username;
        checkUserCommand.Parameters.Add(usernameParam);
        int userCount = Convert.ToInt32(checkUserCommand.ExecuteScalar());

        if (userCount > 0)
        {
            ShowRegistrationStatus("Username already exists. Choose another.");
            dbConnection.Close();
            return;
        }

        // Insert the new user into the database.
        IDbCommand insertUserCommand = dbConnection.CreateCommand();
        insertUserCommand.CommandText = "INSERT INTO Users (Username, PasswordHash) VALUES (@Username, @Password)";
        IDbDataParameter passwordParam = insertUserCommand.CreateParameter();
        passwordParam.ParameterName = "@Password";
        passwordParam.Value = password;
        insertUserCommand.Parameters.Add(usernameParam);
        insertUserCommand.Parameters.Add(passwordParam);
        insertUserCommand.ExecuteNonQuery();

        // Log the registration and display a pop-up message.
        LogRegistration(username);

        // Close the database connection.
        dbConnection.Close();

        // Load a new scene (you may need to create this scene).
        SceneManager.LoadScene("Login_Page");
    }

    private void ShowRegistrationStatus(string message)
    {
        registerStatusText.text = message;
    }

    private void LogRegistration(string username)
    {
        // Log the registration to the Unity console.
        Debug.Log("Registration successful! Username: " + username);

        // Display a pop-up message (you can customize this part).
        // You can use a UI element to display the message.
        // For simplicity, I'll just use Debug.Log.
        Debug.Log("Welcome " + username);
    }
}
