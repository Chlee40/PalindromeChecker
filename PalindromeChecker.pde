public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  String word3 = noCapitals(word2);
  if (word2.equals(reverse(word2))) 
  {
  	return true;	
  }
  if (word3.equals(reverse(word3))) 
  {
  	return true;	
  }
  return false;
}
public String reverse(String str)
{
    String sNew1 = new String();
	for(int i = str.length()-1; i > -1 ; i--)
  	{
  	  sNew1 += str.charAt(i);
  	}
    return sNew1;
}
public String onlyLetters(String sString){
  String sWord = "";
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      sWord += sString.charAt(i);
  return sWord;
}
public String noCapitals(String tWord){
  return tWord.toLowerCase();
}
