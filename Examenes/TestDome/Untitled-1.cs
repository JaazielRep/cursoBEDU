/*



*/

using System;

public class ChineseBox
{
    private readonly ChineseBox containedBox;

    public ChineseBox() { }

    public ChineseBox(ChineseBox containedBox)
    {
        this.containedBox = containedBox;
    }

    public int NumberOfSmallerBoxes
    {
        get
        {
            return 1;
            //throw new System.NotImplementedException("Waiting to be implemented.");
        }
    }

    public static void Main(string[] args)
    {
        Console.WriteLine(new ChineseBox(new ChineseBox()).NumberOfSmallerBoxes);
    }
}