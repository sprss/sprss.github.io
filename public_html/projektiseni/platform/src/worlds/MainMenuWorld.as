package worlds
{
	import entities.Ball;
	import entities.Bullets;
	import entities.Player;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	import worlds.GameWorld;
	
	public class MainMenuWorld extends World
	{
		public var playerEntity:Player;
		public var textEntity:Text;
		public var myText5:Text = new Text("Game over dude!");
		var myTextEntity5:Entity = new Entity(0,0,myText5);
		public var highscore:Number;
		public var roundnum:Number;
		
		public var gameover:Boolean = false;
		
		
		public function MainMenuWorld(e:Number, f:Number, g:Number)
		{
			if (e==0) {
				gameover = true;
			}
			
			if (f!=0) {
				this.highscore = f;
			}
			if (g!=0) {
				this.roundnum = g;
			}
			
			super();
		}
		
		public override function begin():void
		{
			
			
		
			// step 1 tell flashPunk what size you want the text
			Text.size = 15;
			
			// step 2 create a Text object
			
			var myText:Text = new Text(" Hey, you there! ");
			
			var myText2:Text = new Text("Press space to Start the Game!");
			if (this.highscore && this.roundnum) {
			var myText3:Text = new Text("Your score " + this.highscore.toString());
			var myText4:Text = new Text("Round number " +this.roundnum.toString());
			}
			else {
				var myText3:Text = new Text("Tip for a new player: Gravitational shifting works ");
				var myText4:Text = new Text("only when the player is on the ground level.");
			}
			// step 3 create an Entity to easily display the text
			var myTextEntity:Entity = new Entity(0,0,myText);
			var myTextEntity2:Entity = new Entity(0,0,myText2);
			var myTextEntity3:Entity = new Entity(0,0,myText3);
			var myTextEntity4:Entity = new Entity(0,0,myText4);
			// optional step 3b - position the text somewhere else - here I center it on the screen.
			myTextEntity.x = (FP.width / 2) - (myText.width / 2) - 120;
			myTextEntity.y = (FP.height / 2) - (myText.height / 2) - 100;
			
			myTextEntity2.x = myTextEntity.x;
			myTextEntity2.y = myTextEntity.y +20;	
			
			myTextEntity3.x = myTextEntity2.x;
			myTextEntity3.y = myTextEntity2.y +20;	
			
			myTextEntity4.x = myTextEntity3.x;
			myTextEntity4.y = myTextEntity3.y +20;	
			
			if (gameover) {
				myTextEntity5.x = myTextEntity4.x;
				myTextEntity5.y = myTextEntity4.y +20;
				
				add(myTextEntity5);
				
				
			}
			
			// step 4 add the entity to the world
			add(myTextEntity);
			add(myTextEntity2);
			add(myTextEntity3);
			add(myTextEntity4);
			
			var myBulletEntity:Bullets = new Bullets();
			//add(myBulletEntity);
			
			var myBallEntity:Ball = new Ball();
		//	add(myBallEntity);
			
			var myBallEntity2:Ball = new Ball();
		//	add(myBallEntity2);
			
			
			
			
			super.begin();
			
			
			
			
			
			
			
			
			
			
			
			
		}
		
		public override function update():void
		{
		
		if (Input.check(Key.SPACE)) {
			FP.world = new GameWorld();
		}
		
		
	
		}
		
		
		
		
		
		
	}
}