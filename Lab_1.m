%Main program to add two unsigned binary number [4 bit binary adder]
%*********Main Program code***************%
disp('Enter the First Binary Sequence')
for i=1:4
    a(i)=input('');
end
disp('Enter Second Binary Sequence')
for i=1:4
    b(i)=input('');
end
carry=0;
for i=4:-1:1
    c(i)=xors(xors(a(i),b(i)),carry);
    carry=ors(ands(a(i),b(i)),ands(xors(a(i),b(i)),carry));
end

fprintf('%d',a)
fprintf('\n')
fprintf('%d',b)
fprintf('+\n')

fprintf('%d%d',carry,c)
fprintf('\n')