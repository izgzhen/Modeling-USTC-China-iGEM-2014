I=imread(‘rainbow.jpg’);

r=I(:,:,1);
g=I(:,:,2);
b=I(:,:,3);
subplot(2,3,4),imshow(r);
subplot(2,3,5),imshow(g);
subplot(2,3,6),imshow(b);
bg=19.9;
ag=65.3;
ng=2.49;
kg=0.138;
G=kg.*(ag./(0.2353.*double(g)+20-bg)-1).^(-1/ng).*255./0.4;


br=10.6;
ar=97.9;
nr=1.42;
kr=0.0239;
R=kr.*(ar./(0.2353.*double(r)+20-br)-1).^(-1/nr).*255./0.4+150;

bb=16.0;
ab=80.3;
nb=2.24;
kb=0.05;
B=kb.*(ab./(0.2353.*double(b)+20-bb)-1).^(-1/nb).*255./0.4;


X=cat(3,R,G,b);
%X=r+g+b;
subplot(2,2,2),imshow(X);
figure,
mesh(G);print(gcf,’-dpng’,’G.png’);
mesh(R);print(gcf,’-dpng’,’R.png’);
mesh(B);print(gcf,’-dpng’,’B.png’);