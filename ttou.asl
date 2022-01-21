state("The Two of Us")
{
	string50 sceneName : "UnityPlayer.dll", 0x0147ECB0,0x28,0xC,0x0;
}


startup
{
    if (timer.CurrentTimingMethod == TimingMethod.RealTime)
    {        
        var timingMessage = MessageBox.Show (
            "This game uses Time without Loads (Game Time) as the main timing method.\n"+
            "LiveSplit is currently set to show Real Time (RTA).\n"+
            "Would you like to set the timing method to Game Time?",
            "LiveSplit | The Two Of Us",
            MessageBoxButtons.YesNo,MessageBoxIcon.Question
        );
        
        if (timingMessage == DialogResult.Yes)
        {
            timer.CurrentTimingMethod = TimingMethod.GameTime;
        }
    }
}

start
{
    return current.sceneName == ("Assets/Scenes/Level 1.unity") && current.sceneName != old.sceneName;
}

split
{
    return(current.sceneName != (old.sceneName) && current.sceneName != ("Assets/Menu.unity") && current.sceneName != null);
}