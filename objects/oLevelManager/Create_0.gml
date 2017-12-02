for (i=1; i < 10; i++){
	for (j=1; j < 10; j++){
	if (i%2 ==0)
		instance_create_depth(j*285,1000-i*75,200,oGround1);
	else
		instance_create_depth(j*285 +150,1000-i*75,200,oGround1);
	}
}