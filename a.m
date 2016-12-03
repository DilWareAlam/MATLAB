clear
clc
% This was done in Matlab 2015(b). You should be able to get this going in
% older versions by some tinkering. The concepts are the same, the
% functions might change.

filename = 'C:\Users\Dil\Documents\MATLAB\file.txt';
% Read the contents of the entire file in the variable 'text'
text = fileread( filename );

% Tokenize the contents - Essentially separate the contents by the
% delimeters. I've used the ones mentioned in the cell array, but you can
% get fancy if you want

tokens = strsplit( text, { '\n',' ', ';', '-', ':', ',', '.', '?', '!'} );

% Find the unique tokens. By unique I DON'T mean tokens which appear only
% once, instead it is a list of all the tokens that appear in the file but
% with no repetitions. Look at the documentation of the unique function to
% learn more.

[unique_tokens, ia, ic] = unique( tokens, 'legacy' );

% I am cheating by using the tabulate function. It returns a matrix, whose
% third column holds the percentage of each token. You should look up the
% documentation of 'unique' to understand why I have used 'ic'.
word_hist = tabulate( ic );

% Sanity check, the following sum should come to 100 (because tabulate
% reports percentages)
sum( word_hist(:,3))

% Basic plot
bar( word_hist(:,3)/100 );
grid on;

% For a bonus 10 marks (out of the semester's 100), the challenge is to now
% to map the contents of word_hist, ic, ia back to the words. To get the
% bonus marks, you will have to show me the code and demonstrate its
% mastery.

%fid = fopen('magic.dot','w');
%fclose(fid);