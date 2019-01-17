public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
	String[] poem = new String[loadStrings("LowellHymn.txt").length];
	//ArrayList<String> xin = new ArrayList<String>();
	//for(int i = 0; i < poem.length; i++){
	//	String[] temp = poem[i].split(" ", 6);
	//}
}

public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  String[] vowels = new String[]{"a", "e", "i", "o", "u"};
  for(int i = 0; i < sWord.length(); i++){
    for(int q = 0; q < vowels.length; q++){
      if(sWord.substring(i,i+1).equals(vowels[q])){
        return(i);
      }
    }
  }
  return(-1);
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int temp = findFirstVowel(sWord);
	if(temp == -1)
		return(sWord + "ay");
	if(temp == 0)
		return(sWord + "way");
	if(temp >= 1){
		if(sWord.substring(0,temp+1).equals("qu"))
			return(sWord.substring(temp) + "quay");
		return(sWord.substring(temp) + sWord.substring(0,temp) + "ay");
	}
	return("Error");
}