using UnityEngine;
using UnityEngine.UI;

public class TempUserWelcome : MonoBehaviour
{
    public Text welcomeText;

    void Start()
    {
        // Check if a user is currently logged in
        if (LoginScript.currentUser != null)
        {
            welcomeText.text = "Welcome, " + LoginScript.currentUser;
        }
        else
        {
            welcomeText.text = "Welcome!";
        }
    }
}
