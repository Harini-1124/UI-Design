class switchvar{
	void checkMonths(String c){
	var x = switch(c){
	'summer'||'Summer'||'SUMMER' => "March to June",
	'winter'||'Winter'||'WINTER' => "November to February",
	'rainy'||'Rainy'||'RAINY' => "July to October",
	_ => 'You Entered Wrong Season",
	};
	print('$ {c} comes between $ {x} months');
	}
}
