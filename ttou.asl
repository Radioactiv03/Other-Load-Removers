state("The Two of Us")
{
	string50 sceneName : "UnityPlayer.dll", 0x0147ECB0,0x28,0xC,0x0;
}

startup
{
    refreshRate=30;
}

start
{
    return current.sceneName == ("Assets/Scenes/Level 1.unity") && current.sceneName != old.sceneName;
}

split
{
    return(current.sceneName != (old.sceneName) && current.sceneName != ("Assets/Scenes/Menu.unity") && current.sceneName != null);
}
