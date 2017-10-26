function Vigenere(encdec, text, pass, key, autokey) {
   var s, b, i;
   
   // Change the pass into A-Z only
   pass = OnlyAlpha(pass.toUpperCase());
   
   // Change the key into a keyed alphabet
   key = MakeKeyedAlphabet(key);
   
   s = "";
   for (i = 0; i < text.length; i++) {
      b = text.charAt(i);
      limit = ' ';
      if (b >= 'A' && b <= 'Z')
         limit = 'A';
      if (b >= 'a' && b <= 'z')
         limit = 'a';
      if (limit != ' ' && pass.length) {
         b = b.toUpperCase();
   
         // Handle autokey
         if (autokey && encdec > 0)
            pass += b;

         // Just ignore the non-alpha characters from the cipher
         bval = key.indexOf(b) + encdec * key.indexOf(pass.charAt(0));
         bval = (bval + 26) % 26;
         b = key.charAt(bval);

         // Handle autokey
         if (autokey && encdec < 0)
            pass += b;

         if (limit == 'a')
         b = b.toLowerCase();

         // Rotate the password
         if (! autokey)
         pass += pass.charAt(0);

         pass = pass.slice(1, pass.length);
      }
      s += b;
   }
   return s;
}