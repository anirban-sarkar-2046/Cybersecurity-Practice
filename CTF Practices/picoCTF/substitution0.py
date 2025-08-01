from string import ascii_uppercase, ascii_lowercase

keyword = 'DECKFMYIQJRWTZPXGNABUSOLVH'

text = '''
Ifnfuxpz Wfyndzk dnpaf, oqbi d yndsf dzk abdbfwv dqn, dzk enpuyib tf bif effbwf
mnpt d ywdaa cdaf qz oiqci qb oda fzcwpafk. Qb oda d efdubqmuw acdndedfua, dzk, db
bidb bqtf, uzrzpoz bp zdbundwqaba—pm cpunaf d ynfdb xnqhf qz d acqfzbqmqc xpqzb
pm sqfo. Bifnf ofnf bop npuzk ewdcr axpba zfdn pzf flbnftqbv pm bif edcr, dzk d
wpzy pzf zfdn bif pbifn. Bif acdwfa ofnf flcffkqzywv idnk dzk ywpaav, oqbi dww bif
dxxfdndzcf pm eunzqaifk ypwk. Bif ofqyib pm bif qzafcb oda sfnv nftdnrdewf, dzk,
bdrqzy dww biqzya qzbp cpzaqkfndbqpz, Q cpuwk idnkwv ewdtf Juxqbfn mpn iqa pxqzqpz
nfaxfcbqzy qb.

Bif mwdy qa: xqcpCBM{5UE5717U710Z_3S0WU710Z_59533D2F}
'''

dec = ''

for c in text:
    if c in ascii_uppercase:
        dec += ascii_uppercase[keyword.index(c)]
    elif c in ascii_lowercase:
        dec += ascii_lowercase[keyword.index(c.upper())]
    else:
        dec += c

print(dec)

# Output:
# Hereupon Legrand arose, with a grave and stately air, and brought me the beetle
# from a glass case in which it was enclosed. It was a beautiful scarabaeus, and, at
# that time, unknown to naturalists—of course a great prize in a scientific point
# of view. There were two round black spots near one extremity of the back, and a
# long one near the other. The scales were exceedingly hard and glossy, with all the
# appearance of burnished gold. The weight of the insect was very remarkable, and,
# taking all things into consideration, I could hardly blame Jupiter for his opinion
# respecting it.
# 
# The flag is: picoCTF{5UB5717U710N_3V0LU710N_59533A2E}
