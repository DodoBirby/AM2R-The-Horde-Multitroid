if (global.gallery[argument0] == 0)
{
    global.gallery[argument0] = 1
    save_stats()
    if (!file_exists("TheHorde/extras.sav"))
    {
        save_stats2()
        load_stats2()
    }
}