// ActionScript file
import flash.events.TimerEvent;
import flash.utils.Timer;


public var timer:Timer = new Timer(5000,60);
public var currentImage:int = 0; 
public var dataCollection:XMLList;

public function changeImage(event:TimerEvent):void{
	//Alert.show("TIMER ");
	
	fadeOut.play([prod_image]);	
}

public function thumbnailClicked(product:int):void{
	timer.reset();
	timer.start();
	currentImage = product-1;
	fadeOut.play([prod_image]);
	
	
}


public function changeImageInstantly():void{
	
	fadeOut.target=null;
	fadeIn.play([prod_image]);
	//Alert.show('Star')
	currentImage++;
	if(currentImage>3){
		currentImage=0;
	}
	var tempData:Object = dataCollection[currentImage];
	prod_image.source = tempData.imgsrc;
	prod_desc.text = tempData.desc;
	//Alert.show('Starimhyg')
}
	