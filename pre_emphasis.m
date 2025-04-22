function y = pre_emphasis(x)


if nargin==1
    alpha1=0.99;
end

y=filter([1 -alpha1],1,x); % y(n)=x(n)-alpha*x(n-1)


% figure;
% plot(x,'b'); hold on; plot(y,'r');
% sound(x,fs); pause(2);
% sound(y,fs); pause(2);

end

