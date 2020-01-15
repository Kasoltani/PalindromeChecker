public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(onlyLetters(noSpace(lines[i].toLowerCase())))==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
    for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) != sWord.charAt(sWord.length()-i-1)){
      return false;
    }
  }
  return true;
}

public String reverse(String sWord)
{
  String bruh = "";
  for(int i = 0; i < sWord.length(); i++){
    bruh += sWord.substring(sWord.length()-i-1,sWord.length()-i);
  }
  return bruh;
}

public String noSpace(String sWord){
  String bruh = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) != ' '){
      bruh += sWord.charAt(i);
    }
  }
  return bruh;
}

public String onlyLetters(String sString){
  String bruh = "";
  for(int i = 0 ; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      bruh += sString.charAt(i);
    }
  }
  return bruh;
}


