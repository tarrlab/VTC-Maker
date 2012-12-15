FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n "on open" handler specifies the code to be executed when the user drops a folder onto the application droplet     � 	 	 �   " o n   o p e n "   h a n d l e r   s p e c i f i e s   t h e   c o d e   t o   b e   e x e c u t e d   w h e n   t h e   u s e r   d r o p s   a   f o l d e r   o n t o   t h e   a p p l i c a t i o n   d r o p l e t   
  
 l     ��  ��    s m dropped_folder variable will be an array of POSIX file paths (Users:tarrlab:Desktop:) of the dropped folders     �   �   d r o p p e d _ f o l d e r   v a r i a b l e   w i l l   b e   a n   a r r a y   o f   P O S I X   f i l e   p a t h s   ( U s e r s : t a r r l a b : D e s k t o p : )   o f   t h e   d r o p p e d   f o l d e r s      i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 dropped_folder  ��    k     S       l     ��  ��    = 7 Set variable thePath to the path of the dropped folder     �   n   S e t   v a r i a b l e   t h e P a t h   t o   t h e   p a t h   o f   t h e   d r o p p e d   f o l d e r      r         c         n        !   1    ��
�� 
psxp ! o     ���� 0 dropped_folder    m    ��
�� 
ctxt  o      ���� 0 thepath thePath   " # " l   �� $ %��   $ b \ Set variable theScript to the path of the Ruby script located in the app's package contents    % � & & �   S e t   v a r i a b l e   t h e S c r i p t   t o   t h e   p a t h   o f   t h e   R u b y   s c r i p t   l o c a t e d   i n   t h e   a p p ' s   p a c k a g e   c o n t e n t s #  ' ( ' r     ) * ) n     + , + 1    ��
�� 
strq , l    -���� - n     . / . 1    ��
�� 
psxp / l    0���� 0 c     1 2 1 l    3���� 3 l    4���� 4 b     5 6 5 l    7���� 7 I   �� 8 9
�� .earsffdralis        afdr 8  f    	 9 �� :��
�� 
rtyp : m   
 ��
�� 
ctxt��  ��  ��   6 m     ; ; � < < * C o n t e n t s : V T C _ M a k e r . r b��  ��  ��  ��   2 m    ��
�� 
alis��  ��  ��  ��   * o      ���� 0 	thescript 	theScript (  = > = l   �� ? @��   ? b \ Execute the Ruby script VTC_Maker.rb,  set the_path to the items the Ruby script sends back    @ � A A �   E x e c u t e   t h e   R u b y   s c r i p t   V T C _ M a k e r . r b ,     s e t   t h e _ p a t h   t o   t h e   i t e m s   t h e   R u b y   s c r i p t   s e n d s   b a c k >  B C B r    + D E D I   )�� F��
�� .sysoexecTEXT���     TEXT F b    % G H G b     I J I b     K L K m     M M � N N 
 R u b y   L o    ���� 0 	thescript 	theScript J m     O O � P P    H l   $ Q���� Q n    $ R S R 1   " $��
�� 
strq S l   " T���� T n    " U V U 1     "��
�� 
psxp V o     ���� 0 thepath thePath��  ��  ��  ��  ��   E o      ���� 0 the_path   C  W X W l  , ,�� Y Z��   Y Z T Once the Ruby script finishes, it'll send back the path to the text file it created    Z � [ [ �   O n c e   t h e   R u b y   s c r i p t   f i n i s h e s ,   i t ' l l   s e n d   b a c k   t h e   p a t h   t o   t h e   t e x t   f i l e   i t   c r e a t e d X  \ ] \ l  , ,�� ^ _��   ^ m g The path is stored in the_path, so we'll extract it by setting a new variable to the items of the_path    _ � ` ` �   T h e   p a t h   i s   s t o r e d   i n   t h e _ p a t h ,   s o   w e ' l l   e x t r a c t   i t   b y   s e t t i n g   a   n e w   v a r i a b l e   t o   t h e   i t e m s   o f   t h e _ p a t h ]  a b a r   , 3 c d c c   , 1 e f e n   , / g h g 2  - /��
�� 
cobj h o   , -���� 0 the_path   f m   / 0��
�� 
TEXT d o      ���� 0 	text_path   b  i j i l  4 4�� k l��   k � z Copy the_path to the clipboard so it can be easily pasted into the JavaScript BV script that the user will run afterwards    l � m m �   C o p y   t h e _ p a t h   t o   t h e   c l i p b o a r d   s o   i t   c a n   b e   e a s i l y   p a s t e d   i n t o   t h e   J a v a S c r i p t   B V   s c r i p t   t h a t   t h e   u s e r   w i l l   r u n   a f t e r w a r d s j  n o n I  4 9�� p��
�� .JonspClpnull���     **** p o   4 5���� 0 	text_path  ��   o  q r q l  : :�� s t��   s   Open BrainVoyager    t � u u $   O p e n   B r a i n V o y a g e r r  v w v O  : D x y x I  > C������
�� .miscactvnull��� ��� null��  ��   y m   : ; z z�                                                                                      @ alis    �  blintz                     �J�rH+   �BrainVoyager QX.app                                             ��w�h        ����  	                BrainVoyager QX_2.4     �K/�      �w۸     �  &z  =blintz:Applications: BrainVoyager QX_2.4: BrainVoyager QX.app   (  B r a i n V o y a g e r   Q X . a p p    b l i n t z  4Applications/BrainVoyager QX_2.4/BrainVoyager QX.app  / ��   w  { | { l  E E�� } ~��   } + % Open the "Edit and Run Scripts" pane    ~ �   J   O p e n   t h e   " E d i t   a n d   R u n   S c r i p t s "   p a n e |  ��� � I   E S�� ����� 0 
menu_click   �  ��� � J   F O � �  � � � m   F G � � � � �  B r a i n V o y a g e r   Q X �  � � � m   G J � � � � �  S c r i p t s �  ��� � m   J M � � � � � . E d i t   a n d   R u n   S c r i p t s . . .��  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � l f Both handlers below were obtained from: http://hints.macworld.com/article.php?story=20060921045743404    � � � � �   B o t h   h a n d l e r s   b e l o w   w e r e   o b t a i n e d   f r o m :   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4 �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 
menu_click   �  ��� � o      ���� 0 mlist mList��  ��   � k     T � �  � � � q       � � �� ��� 0 appname appName � �� ��� 0 topmenu topMenu � ������ 0 r  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Validate our input    � � � � &   V a l i d a t e   o u r   i n p u t �  � � � Z     � ����� � A      � � � n     � � � 1    ��
�� 
leng � o     ���� 0 mlist mList � m    ����  � R    �� ���
�� .ascrerr ****      � **** � m   
  � � � � � 8 M e n u   l i s t   i s   n o t   l o n g   e n o u g h��  ��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ; 5 Set these variables for clarity and brevity later on    � � � � j   S e t   t h e s e   v a r i a b l e s   f o r   c l a r i t y   a n d   b r e v i t y   l a t e r   o n �  � � � r    + � � � l    ����� � n     � � � 7  �� � �
�� 
cobj � m    ����  � m    ����  � o    ���� 0 mlist mList��  ��   � J       � �  � � � o      ���� 0 appname appName �  ��� � o      ���� 0 topmenu topMenu��   �  � � � r   , ; � � � l  , 9 ����� � n   , 9 � � � 7 - 9�� � �
�� 
cobj � m   1 3����  � l  4 8 ����� � n  4 8 � � � 1   6 8��
�� 
leng � o   4 6���� 0 mlist mList��  ��   � o   , -���� 0 mlist mList��  ��   � o      ���� 0 r   �  � � � l  < <��������  ��  ��   �  � � � l  < <�� � ���   � A ; This overly-long line calls the menu_recurse function with    � � � � v   T h i s   o v e r l y - l o n g   l i n e   c a l l s   t h e   m e n u _ r e c u r s e   f u n c t i o n   w i t h �  � � � l  < <�� � ���   � > 8 two arguments: r, and a reference to the top-level menu    � � � � p   t w o   a r g u m e n t s :   r ,   a n d   a   r e f e r e n c e   t o   t h e   t o p - l e v e l   m e n u �  ��� � O  < T � � � n  @ S � � � I   A S�� ����� 0 menu_click_recurse   �  � � � o   A B���� 0 r   �  ��� � l  B O ����� � n  B O � � � l  L O ����� � 4   L O�� �
�� 
menE � o   M N���� 0 topmenu topMenu��  ��   � n  B L � � � l  I L ���� � 4   I L�~ �
�~ 
mbri � o   J K�}�} 0 topmenu topMenu��  �   � n  B I � � � l 	 F I ��|�{ � l  F I ��z�y � 4   F I�x �
�x 
mbar � m   G H�w�w �z  �y  �|  �{   � l  B F ��v�u � 4   B F�t �
�t 
prcs � o   D E�s�s 0 appname appName�v  �u  ��  ��  ��  ��   �  f   @ A � m   < = � ��                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  ��   �  � � � l     �r�q�p�r  �q  �p   �  ��o � i     �  � I      �n�m�n 0 menu_click_recurse    o      �l�l 0 mlist mList �k o      �j�j 0 parentobject parentObject�k  �m    k     H  q       �i	�i 0 f  	 �h�g�h 0 r  �g   

 l     �f�e�d�f  �e  �d    l     �c�c   , & `f` = first item, `r` = rest of items    � L   ` f `   =   f i r s t   i t e m ,   ` r `   =   r e s t   o f   i t e m s  r      n      4    �b
�b 
cobj m    �a�a  o     �`�` 0 mlist mList o      �_�_ 0 f    Z   "�^�] ?     n   
 1    
�\
�\ 
leng o    �[�[ 0 mlist mList m   
 �Z�Z  r     !  l   "�Y�X" n    #$# 7  �W%&
�W 
cobj% m    �V�V & l   '�U�T' n   ()( 1    �S
�S 
leng) o    �R�R 0 mlist mList�U  �T  $ o    �Q�Q 0 mlist mList�Y  �X  ! o      �P�P 0 r  �^  �]   *+* l  # #�O�N�M�O  �N  �M  + ,-, l  # #�L./�L  . < 6 either actually click the menu item, or recurse again   / �00 l   e i t h e r   a c t u a l l y   c l i c k   t h e   m e n u   i t e m ,   o r   r e c u r s e   a g a i n- 1�K1 O   # H232 Z   ' G45�J64 =  ' ,787 n  ' *9:9 1   ( *�I
�I 
leng: o   ' (�H�H 0 mlist mList8 m   * +�G�G 5 I  / 7�F;�E
�F .prcsclicuiel    ��� uiel; n  / 3<=< 4   0 3�D>
�D 
menI> o   1 2�C�C 0 f  = o   / 0�B�B 0 parentobject parentObject�E  �J  6 n  : G?@? I   ; G�AA�@�A 0 menu_click_recurse  A BCB o   ; <�?�? 0 r  C D�>D l  < CE�=�<E n  < CFGF l  @ CH�;�:H 4   @ C�9I
�9 
menEI o   A B�8�8 0 f  �;  �:  G n  < @JKJ l  = @L�7�6L 4   = @�5M
�5 
menIM o   > ?�4�4 0 f  �7  �6  K o   < =�3�3 0 parentobject parentObject�=  �<  �>  �@  @  f   : ;3 m   # $NN�                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  �K  �o       �2OPQR�2  O �1�0�/
�1 .aevtodocnull  �    alis�0 0 
menu_click  �/ 0 menu_click_recurse  P �. �-�,ST�+
�. .aevtodocnull  �    alis�- 0 dropped_folder  �,  S �*�)�(�'�&�* 0 dropped_folder  �) 0 thepath thePath�( 0 	thescript 	theScript�' 0 the_path  �& 0 	text_path  T �%�$�#�" ;�!�  M O���� z� � � ��
�% 
psxp
�$ 
ctxt
�# 
rtyp
�" .earsffdralis        afdr
�! 
alis
�  
strq
� .sysoexecTEXT���     TEXT
� 
cobj
� 
TEXT
� .JonspClpnull���     ****
� .miscactvnull��� ��� null� 0 
menu_click  �+ T��,�&E�O)��l �%�&�,�,E�O�%�%��,�,%j 	E�O��-�&E�O�j O� *j UO*�a a mvk+ Q � ���UV�� 0 
menu_click  � �W� W  �� 0 mlist mList�  U ����� 0 mlist mList� 0 appname appName� 0 topmenu topMenu� 0 r  V 	� �� �����
�	
� 
leng
� 
cobj
� 
prcs
� 
mbar
� 
mbri
�
 
menE�	 0 menu_click_recurse  � U��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO�[�\[Zm\Z��,2E�O� )�*�/�k/�/�/l+ UR � ��XY�� 0 menu_click_recurse  � �Z� Z  ��� 0 mlist mList� 0 parentobject parentObject�  X �� ����� 0 mlist mList�  0 parentobject parentObject�� 0 f  �� 0 r  Y ����N��������
�� 
cobj
�� 
leng
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
menE�� 0 menu_click_recurse  � I��k/E�O��,k �[�\[Zl\Z��,2E�Y hO� "��,k  ��/j Y )���/�/l+ U ascr  ��ޭ