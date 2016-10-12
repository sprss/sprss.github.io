package worlds
{
	import entities.Ball;
	import entities.Bullets;
	import entities.Player;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;

	import net.flashpunk.Sfx;
	
	
	public class GameWorld extends World
	{
		public var playerEntity:Player;
		public var textEntity:Text;
	
	
		
		
		public function GameWorld()
		{
			
			
			super();
		}
		
		public override function begin():void
		{
			
			
			
			playerEntity = new Player();
			add(playerEntity);
			//textEntity = new Text("Blbalbalbalbablal");
			
			
				// step 1 tell flashPunk what size you want the text
				Text.size = 15;
				
				// step 2 create a Text object
				var myText:Text = new Text("Welcome to Rogwar. ");
				var myText2:Text = new Text("Use arrow keys and WASD for movement.");
				var myText3:Text = new Text("M enable/mute music. Make yourself slim and athletic.");
				var myText4:Text = new Text("Then you can catch the red pill and move on!");
				
				// step 3 create an Entity to easily display the text
				var myTextEntity:Entity = new Entity(0,0,myText);
				var myTextEntity2:Entity = new Entity(0,0,myText2);
				var myTextEntity3:Entity = new Entity(0,0,myText3);
				var myTextEntity4:Entity = new Entity(0,0,myText4);
				// optional step 3b - position the text somewhere else - here I center it on the screen.
				myTextEntity.x = (FP.width / 2) - (myText.width / 2) -100;
				myTextEntity.y = (FP.height / 2) - (myText.height / 2) - 100;
				
				myTextEntity2.x = myTextEntity.x;
				myTextEntity2.y = myTextEntity.y +20;	
				
				myTextEntity3.x = myTextEntity2.x;
				myTextEntity3.y = myTextEntity2.y +20;	
				
				myTextEntity4.x = myTextEntity3.x;
				myTextEntity4.y = myTextEntity3.y +20;	
				// step 4 add the entity to the world
				add(myTextEntity);
				add(myTextEntity2);
				add(myTextEntity3);
				add(myTextEntity4);
				
				var myBulletEntity:Bullets = new Bullets();
				add(myBulletEntity);
				
				var myBallEntity:Ball = new Ball();
				add(myBallEntity);
				
				var myBallEntity2:Ball = new Ball();
				add(myBallEntity2);
				
				
				
				
				//FP.world.recycle(myBulletEntity);
				
				
				super.begin();
			
			
			
			
			
			
			
			
			
			
			
			
		}
		
		

		
	
		

		
		
		
	}
}