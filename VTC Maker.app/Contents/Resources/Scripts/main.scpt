FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n "on open" handler specifies the code to be executed when the user drops a folder onto the application droplet     � 	 	 �   " o n   o p e n "   h a n d l e r   s p e c i f i e s   t h e   c o d e   t o   b e   e x e c u t e d   w h e n   t h e   u s e r   d r o p s   a   f o l d e r   o n t o   t h e   a p p l i c a t i o n   d r o p l e t   
  
 l     ��  ��    s m dropped_folder variable will be an array of POSIX file paths (Users:tarrlab:Desktop:) of the dropped folders     �   �   d r o p p e d _ f o l d e r   v a r i a b l e   w i l l   b e   a n   a r r a y   o f   P O S I X   f i l e   p a t h s   ( U s e r s : t a r r l a b : D e s k t o p : )   o f   t h e   d r o p p e d   f o l d e r s      i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 dropped_folder  ��    k     S       l     ��  ��    = 7 Set variable thePath to the path of the dropped folder     �   n   S e t   v a r i a b l e   t h e P a t h   t o   t h e   p a t h   o f   t h e   d r o p p e d   f o l d e r      r         c         n        !   1    ��
�� 
psxp ! o     ���� 0 dropped_folder    m    ��
�� 
ctxt  o      ���� 0 thepath thePath   " # " l   ��������  ��  ��   #  $ % $ l   �� & '��   & b \ Set variable theScript to the path of the Ruby script located in the app's package contents    ' � ( ( �   S e t   v a r i a b l e   t h e S c r i p t   t o   t h e   p a t h   o f   t h e   R u b y   s c r i p t   l o c a t e d   i n   t h e   a p p ' s   p a c k a g e   c o n t e n t s %  ) * ) r     + , + n     - . - 1    ��
�� 
strq . l    /���� / n     0 1 0 1    ��
�� 
psxp 1 l    2���� 2 c     3 4 3 l    5���� 5 l    6���� 6 b     7 8 7 l    9���� 9 I   �� : ;
�� .earsffdralis        afdr :  f    	 ; �� <��
�� 
rtyp < m   
 ��
�� 
ctxt��  ��  ��   8 m     = = � > > * C o n t e n t s : V T C _ M a k e r . r b��  ��  ��  ��   4 m    ��
�� 
alis��  ��  ��  ��   , o      ���� 0 	thescript 	theScript *  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C b \ Execute the Ruby script VTC_Maker.rb,  set the_path to the items the Ruby script sends back    D � E E �   E x e c u t e   t h e   R u b y   s c r i p t   V T C _ M a k e r . r b ,     s e t   t h e _ p a t h   t o   t h e   i t e m s   t h e   R u b y   s c r i p t   s e n d s   b a c k B  F G F r    + H I H I   )�� J��
�� .sysoexecTEXT���     TEXT J b    % K L K b     M N M b     O P O m     Q Q � R R 
 R u b y   P o    ���� 0 	thescript 	theScript N m     S S � T T    L l   $ U���� U n    $ V W V 1   " $��
�� 
strq W l   " X���� X n    " Y Z Y 1     "��
�� 
psxp Z o     ���� 0 thepath thePath��  ��  ��  ��  ��   I o      ���� 0 the_path   G  [ \ [ l  , ,��������  ��  ��   \  ] ^ ] l  , ,�� _ `��   _ Z T Once the Ruby script finishes, it'll send back the path to the text file it created    ` � a a �   O n c e   t h e   R u b y   s c r i p t   f i n i s h e s ,   i t ' l l   s e n d   b a c k   t h e   p a t h   t o   t h e   t e x t   f i l e   i t   c r e a t e d ^  b c b l  , ,�� d e��   d m g The path is stored in the_path, so we'll extract it by setting a new variable to the items of the_path    e � f f �   T h e   p a t h   i s   s t o r e d   i n   t h e _ p a t h ,   s o   w e ' l l   e x t r a c t   i t   b y   s e t t i n g   a   n e w   v a r i a b l e   t o   t h e   i t e m s   o f   t h e _ p a t h c  g h g r   , 3 i j i c   , 1 k l k n   , / m n m 2  - /��
�� 
cobj n o   , -���� 0 the_path   l m   / 0��
�� 
TEXT j o      ���� 0 	text_path   h  o p o l  4 4��������  ��  ��   p  q r q l  4 4�� s t��   s � z Copy the_path to the clipboard so it can be easily pasted into the JavaScript BV script that the user will run afterwards    t � u u �   C o p y   t h e _ p a t h   t o   t h e   c l i p b o a r d   s o   i t   c a n   b e   e a s i l y   p a s t e d   i n t o   t h e   J a v a S c r i p t   B V   s c r i p t   t h a t   t h e   u s e r   w i l l   r u n   a f t e r w a r d s r  v w v I  4 9�� x��
�� .JonspClpnull���     **** x o   4 5���� 0 	text_path  ��   w  y z y l  : :��������  ��  ��   z  { | { l  : :�� } ~��   }   Open BrainVoyager    ~ �   $   O p e n   B r a i n V o y a g e r |  � � � O  : D � � � I  > C������
�� .miscactvnull��� ��� null��  ��   � m   : ; � ��                                                                                      @ alis    �  blintz                     �J�rH+   -BrainVoyager QX.app                                             @��u�        ����  	                BrainVoyager QX_2.6     �K/�      ���.     -  &z  =blintz:Applications: BrainVoyager QX_2.6: BrainVoyager QX.app   (  B r a i n V o y a g e r   Q X . a p p    b l i n t z  4Applications/BrainVoyager QX_2.6/BrainVoyager QX.app  / ��   �  � � � l  E E�� � ���   � + % Open the "Edit and Run Scripts" pane    � � � � J   O p e n   t h e   " E d i t   a n d   R u n   S c r i p t s "   p a n e �  ��� � I   E S�� ����� 0 
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
leng � o   4 6���� 0 mlist mList��  ��   � o   , -���� 0 mlist mList��  ��   � o      ���� 0 r   �  � � � l  < <�������  ��  �   �  � � � l  < <�~ � ��~   � A ; This overly-long line calls the menu_recurse function with    � � � � v   T h i s   o v e r l y - l o n g   l i n e   c a l l s   t h e   m e n u _ r e c u r s e   f u n c t i o n   w i t h �  � � � l  < <�} � ��}   � > 8 two arguments: r, and a reference to the top-level menu    � � � � p   t w o   a r g u m e n t s :   r ,   a n d   a   r e f e r e n c e   t o   t h e   t o p - l e v e l   m e n u �  ��| � O  < T � � � n  @ S � � � I   A S�{ ��z�{ 0 menu_click_recurse   �  � � � o   A B�y�y 0 r   �  ��x � l  B O ��w�v � n  B O � � � l  L O ��u�t � 4   L O�s �
�s 
menE � o   M N�r�r 0 topmenu topMenu�u  �t   � n  B L � � � l  I L ��q�p � 4   I L�o �
�o 
mbri � o   J K�n�n 0 topmenu topMenu�q  �p   � n  B I � � � l 	 F I �m�l  l  F I�k�j 4   F I�i
�i 
mbar m   G H�h�h �k  �j  �m  �l   � l  B F�g�f 4   B F�e
�e 
prcs o   D E�d�d 0 appname appName�g  �f  �w  �v  �x  �z   �  f   @ A � m   < =�                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  �|   �  l     �c�b�a�c  �b  �a   �` i    	
	 I      �_�^�_ 0 menu_click_recurse    o      �]�] 0 mlist mList �\ o      �[�[ 0 parentobject parentObject�\  �^  
 k     H  q       �Z�Z 0 f   �Y�X�Y 0 r  �X    l     �W�V�U�W  �V  �U    l     �T�T   , & `f` = first item, `r` = rest of items    � L   ` f `   =   f i r s t   i t e m ,   ` r `   =   r e s t   o f   i t e m s  r      n       4    �S!
�S 
cobj! m    �R�R   o     �Q�Q 0 mlist mList o      �P�P 0 f   "#" Z   "$%�O�N$ ?    &'& n   
()( 1    
�M
�M 
leng) o    �L�L 0 mlist mList' m   
 �K�K % r    *+* l   ,�J�I, n    -.- 7  �H/0
�H 
cobj/ m    �G�G 0 l   1�F�E1 n   232 1    �D
�D 
leng3 o    �C�C 0 mlist mList�F  �E  . o    �B�B 0 mlist mList�J  �I  + o      �A�A 0 r  �O  �N  # 454 l  # #�@�?�>�@  �?  �>  5 676 l  # #�=89�=  8 < 6 either actually click the menu item, or recurse again   9 �:: l   e i t h e r   a c t u a l l y   c l i c k   t h e   m e n u   i t e m ,   o r   r e c u r s e   a g a i n7 ;�<; O   # H<=< Z   ' G>?�;@> =  ' ,ABA n  ' *CDC 1   ( *�:
�: 
lengD o   ' (�9�9 0 mlist mListB m   * +�8�8 ? I  / 7�7E�6
�7 .prcsclicuiel    ��� uielE n  / 3FGF 4   0 3�5H
�5 
menIH o   1 2�4�4 0 f  G o   / 0�3�3 0 parentobject parentObject�6  �;  @ n  : GIJI I   ; G�2K�1�2 0 menu_click_recurse  K LML o   ; <�0�0 0 r  M N�/N l  < CO�.�-O n  < CPQP l  @ CR�,�+R 4   @ C�*S
�* 
menES o   A B�)�) 0 f  �,  �+  Q n  < @TUT l  = @V�(�'V 4   = @�&W
�& 
menIW o   > ?�%�% 0 f  �(  �'  U o   < =�$�$ 0 parentobject parentObject�.  �-  �/  �1  J  f   : ;= m   # $XX�                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  �<  �`       �#YZ[\�#  Y �"�!� 
�" .aevtodocnull  �    alis�! 0 
menu_click  �  0 menu_click_recurse  Z � ��]^�
� .aevtodocnull  �    alis� 0 dropped_folder  �  ] ������ 0 dropped_folder  � 0 thepath thePath� 0 	thescript 	theScript� 0 the_path  � 0 	text_path  ^ ���� =�� Q S���� �� � � ��
� 
psxp
� 
ctxt
� 
rtyp
� .earsffdralis        afdr
� 
alis
� 
strq
� .sysoexecTEXT���     TEXT
� 
cobj
� 
TEXT
� .JonspClpnull���     ****
� .miscactvnull��� ��� null� 0 
menu_click  � T��,�&E�O)��l �%�&�,�,E�O�%�%��,�,%j 	E�O��-�&E�O�j O� *j UO*�a a mvk+ [ �
 ��	�_`��
 0 
menu_click  �	 �a� a  �� 0 mlist mList�  _ ����� 0 mlist mList� 0 appname appName� 0 topmenu topMenu� 0 r  ` 	�  �������������
�  
leng
�� 
cobj
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE�� 0 menu_click_recurse  � U��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO�[�\[Zm\Z��,2E�O� )�*�/�k/�/�/l+ U\ ��
����bc���� 0 menu_click_recurse  �� ��d�� d  ������ 0 mlist mList�� 0 parentobject parentObject��  b ���������� 0 mlist mList�� 0 parentobject parentObject�� 0 f  �� 0 r  c ����X��������
�� 
cobj
�� 
leng
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
menE�� 0 menu_click_recurse  �� I��k/E�O��,k �[�\[Zl\Z��,2E�Y hO� "��,k  ��/j Y )���/�/l+ U ascr  ��ޭ