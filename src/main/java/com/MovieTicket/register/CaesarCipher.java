package com.MovieTicket.register;

public class CaesarCipher {
	
	  // Encrypts a string using the VigenereCipher 
	public static String encrypt(String text, String keyword) {
        StringBuilder result = new StringBuilder();
        int keywordLength = keyword.length();

        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);

            if (Character.isLetter(ch)) {
                char base = Character.isLowerCase(ch) ? 'a' : 'A';
                char keyChar = keyword.charAt(i % keywordLength);
                int shift = keyChar - 'A';
                result.append((char) (((ch - base + shift) % 26) + base));
            } else if (Character.isDigit(ch)) {
                int digit = Character.getNumericValue(ch);
                int keyChar = keyword.charAt(i % keywordLength);
                result.append((char) ((digit + keyChar) % 10 + '0'));
            } else {
                result.append(ch);
            }
        }

        return result.toString();
    }


	
	
    public static String decrypt(String text, String keyword) {
        StringBuilder result = new StringBuilder();
        int keywordLength = keyword.length();

        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);

            if (Character.isLetter(ch)) {
                char base = Character.isLowerCase(ch) ? 'a' : 'A';
                char keyChar = keyword.charAt(i % keywordLength);
                int shift = keyChar - 'A';
                result.append((char) (((ch - base - shift + 26) % 26) + base));
            } else if (Character.isDigit(ch)) {
                int digit = Character.getNumericValue(ch);
                int keyChar = keyword.charAt(i % keywordLength);
                result.append((char) ((digit - keyChar + 10) % 10 + '0'));
            } else {
                result.append(ch);
            }
        }

        return result.toString();
    }

}
