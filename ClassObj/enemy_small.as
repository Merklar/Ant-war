package ClassObj {
	import flash.events.Event;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	public class enemy_small extends Enemy_1 {

	private	var _this:*;
		
		public function enemy_small():void {
			_this = this;
			_this.x = -150 +(Math.random()*60);
			_this.y = 250 + (Math.random()*60);
		}
		
		public function enemy_go():void {
			_this.addEventListener(Event.ENTER_FRAME, enemy_run); 
		}
		
		private function enemy_run(e:Event):void {
	//		var _this = e.currentTarget as MovieClip;
			_this.x += 1.5;
			
		if (_this.x >= (550 - _this.width/2)) {
		_this.removeEventListener(Event.ENTER_FRAME, enemy_run);
		stage.removeChild(_this);
		_this = null;
	}
		}

	}
	
}
