clear
clc
% This was done in Matlab 2015(b). You should be able to get this going in
% older versions by some tinkering. The concepts are the same, the
% functions might change.

filename = 'C:\Users\Dil\Documents\MATLAB\hello.txt';
% Read the contents of the entire file in the variable 'text'
text = fileread( filename );

% Tokenize the contents - Essentially separate the contents by the
% delimeters. I've used the ones mentioned in the cell array, but you can
% get fancy if you want

tokens = strsplit( text, { '\n',' ', ';', '-', ':', ',', '.', '?', '!','<','>','@','#'} );

% Find the unique tokens. By unique I DON'T mean tokens which appear only
% once, instead it is a list of all the tokens that appear in the file but
% with no repetitions. Look at the documentation of the unique function to
% learn more.

[unique_tokens, ia, ic] = unique( tokens, 'legacy' );

c=0;
y = length(tokens);

for i=1:1:y
    if find(ismember(unique_tokens,tokens)) 
    c = c+1;
    end
    d(i) = c/y;
    fprintf('%f %s\n',d(i),unique_tokens{i});
end