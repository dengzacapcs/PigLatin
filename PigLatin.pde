String[] vowels = new String[]{"a", "e", "i", "o", "u"};
public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
    for (int i = 0; i<sWord.length(); i++){
        for (int j = 0; j<vowels.length; j++){
            //System.out.println(sWord.substring(i,i+1) + vowels[j]);
            if (sWord.substring(i, i+1).equals(vowels[j])){
                return i;
            }
        }
    }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
    int firstVowel = findFirstVowel(sWord);
    //System.out.println(firstVowel);
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if (firstVowel == 0) return sWord + "way";
    if (sWord.substring(0, 2).equals( "qu")) return sWord.substring(2) + "quay";
    return sWord.substring(firstVowel) + sWord.substring(0, firstVowel) + "ay"; 
}
