clear
clc

txt = fileread('hello.txt');  %read in file, assuming it is not too big
sentences = strtrim(regexp(txt, '[\.\?\!]+', 'split'));  %split into sentences
%I assume that sentences end with ., ?, or !, which don't appear elsewhere in 
% the file (i.e., no quoted strings, abbreviations containing '.', etc.).
words = regexp(sentences, '\s+', 'start');  % find spaces (which separate words)
wordsPerSentence = cellfun(@length, words, 'UniformOutput', true);  %count words
%we only care about sentences containing at least one word.
wordsPerSentence = wordsPerSentence(wordsPerSentence>=1)+1;
bar(wordsPerSentence);
grid on;
title('Department of BBA email histrogram','FontSize',15)