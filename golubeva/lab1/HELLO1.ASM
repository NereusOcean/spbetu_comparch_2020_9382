
; HELLO1.ASM -  ã¯à®é¥­­ ï ¢¥àášï ãç¥¡­®© ¯à®£à ¬¬ë « ¡.à ¡. N1
;               ¯® €šáæš¯«š­¥ "àåšâ¥ªâãà  ª®¬¯ìîâ¥à "
; *****************************************************************
;  §­ ç¥­š¥: à®£à ¬¬  ä®à¬šàã¥â š ¢ë¢®€šâ ­  íªà ­ ¯àš¢¥âáâ¢š¥
;             ¯®«ì§®¢ â¥«ï á ¯®¬®éìî äã­ªæšš  "ë¢®€ áâà®ªš"
;             (­®¬¥à 09 ¯à¥àë¢ ­š¥ 21h), ª®â®à ï:
;              - ®¡¥á¯¥çš¢ ¥â ¢ë¢®€ ­  íªà ­ áâà®ªš áš¬¢®«®¢,
;                § ª ­çš¢ îé¥©áï §­ ª®¬ "$";
;              - âà¥¡ã¥â § € ­šï ¢ à¥£šáâà¥ ah ­®¬¥à  äã­ªæšš=09h,
;                  ¢ à¥£šáâà¥ dx -  á¬¥é¥­šï   €à¥á   ¢ë¢®€š¬®©
;                áâà®ªš;
;              - šá¯®«ì§ã¥â à¥£šáâà  ax  š  ­¥ á®åà ­ï¥â ¥£®
;                á®€¥àŠš¬®¥.
; ******************************************************************

   DOSSEG                                      ;  € ­š¥ á¥£¬¥­â®¢ ¯®€ 
   .MODEL  SMALL                               ; ®€¥«ì ¯ ¬ïâš-SMALL( « ï)
   .STACK  100h                                ; â¢¥áâš ¯®€ â¥ª 256 ¡ ©â
   .DATA                                       ;  ç «® á¥£¬¥­â  € ­­ëå
Greeting  LABEL  BYTE                          ; ¥ªáâ  ¯àš¢¥âáâ¢šï
   DB 'hello 1.',13,10,'$'
   .CODE                                ;  ç «® á¥£¬¥­â  ª®€ 
   mov  ax, @data                        ;  £àã§ª  ¢ DS  €à¥á  ­ ç « 
   mov  ds, ax                           ; á¥£¬¥­â  € ­­ëå
   mov  dx, OFFSET Greeting              ;  £àã§ª  ¢ dx á¬¥é¥­šï
                                        ;  €à¥á  â¥ªáâ  ¯àš¢¥âáâ¢šï
DisplayGreeting:
   mov  ah, 9                            ; # äã­ªæšš  ¯¥ç âš áâà®ªš
   int  21h                             ; ¢ë¢®€ ­  íªà ­  ¯àš¢¥âáâ¢šï
   mov  ah, 4ch                          ; # äã­ªæšš  § ¢¥àè¥­šï ¯à®£à ¬¬ë
   int  21h                             ; § ¢¥àè¥­š¥ ¯à®£à ¬¬ë š ¢ëå®€ ¢ 
   END
