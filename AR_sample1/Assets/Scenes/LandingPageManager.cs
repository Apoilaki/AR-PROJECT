using UnityEngine;
using UnityEngine.SceneManagement;

public class LandingPageManager : MonoBehaviour
{
    public void GoToLoginPage()
    {
        SceneManager.LoadScene("Login_Page");
    }

    public void GoToRegisterPage()
    {
        SceneManager.LoadScene("Register_Page");
    }
    public void GoToHomePage()
    {
        SceneManager.LoadScene("Home_Page");
    }

    public void GoToLandingPage()
    {
        SceneManager.LoadScene("Landing_page");
    }
}
