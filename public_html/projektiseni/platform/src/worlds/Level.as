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
		
		//import flash.text;
		
		
		
		public class Level extends World
			
		{
			
			
			protected var scoreText:Text;
			public var ScoreText:Text;
			public var HealthText:Text;
			public var RoundText:Text;
			
			public var playerEntity:Player;
			public var textEntity:Text;
			
			
		//	public var numberofBalls:int;
			public var additionalEnemies:Boolean = false;

			public var Score:Number;
			public var Health:Number;
			public var Round:Number;
			
			
			public var bullets:Bullets;
			
			public var nonewplayer:Boolean =false ;
			
			
			public function Level(e:Number, d:Number, f:Number)
			{
				this.Score = e;
				this.Health = d;
				this.Round = f;
				
			    nonewplayer = true;
					
				
				
				//playerEntity.setHealth(d);
			//	playerEntity.setScore(e);
				//this.bullets.setScore(e);
			//	this.bullets.setHealth(d);
		//		if (e==0) {
			//		quit();
					
			//	}
				
				// many comments! :) I've tried many things and only few of those work.
				
				//if (e>=2) {
					//additionalEnemies = true;
					//FP.world = new World;
					
			//	}
				
				super();
			}
			
			public override function begin():void
			{
				
				
				
				
				
				
				
				
				var arrayNumbers:Array = new Array();  
				
				arrayNumbers= new Array("one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen","fourteen", "fifteen","sixteen","seventeen", "eighteen","nineteen", "twenty","twentyone","twentytwo","twentythree","twentyfour","twentyfive");  
				var randomMaxNumbers:int = arrayNumbers.length-1;
				var randomMinNumbers:int = 0;
				//Math.floor(Math.random() * 41) + 10;  //number between 10 -50
				var randomNumber:int = Math.floor(Math.random() * (1+randomMaxNumbers - randomMinNumbers))+ randomMinNumbers;	
					
				
				//FP.watch(FP.world.count);

				
				
				var arrayLogics:Array = new Array("It was evident all along", "That's just pretty rediculous", "Welcome to Rogwar", "So why are you here anyway","But if I'm more serious", "It's getting late here", "But we can discuss more about that later","It was nice to know you", "But we'll see in a moment", "That's just what you say", "I can't believe it", "how can it be", "You again", "When is this over", "I'm getting bored", "That's just crazy", "I never said that", "So in the end, it was you again", "Starts to repeat itself, but that's the purpose", "It's gentle way to manipulate you","Your my precious","It's more money for me", "Was it wise to take the red pill", "Those pills are not doing good for you", "Grrr..What's your number", "Can't believe it", "Just too hot", "No credit cards", "Wonders of life are happening here", "Nothing to see here", "Lets face it, you have a problem", "Seriously, that's dangerous", "Make yourself comfortable", "Nice moves, can't but just stare that", "I bet you like it" , "Only cash is good" , "Cash is king, Johnny Cash", "Batman would save you", "That's the most idiotic thing I've forgot", "Heman just couldn't save you from", "It's normal my dear", "Honesty isn't all in all");
				var randomMaxLogics:int = arrayLogics.length-1;
				var randomMinLogics:int = 0;
				var randomLogics:int = Math.floor(Math.random() * (1+randomMaxLogics - randomMinLogics))+ randomMinLogics;	
				
				playerEntity = new Player();
				add(playerEntity);
				playerEntity.setHealth(this.Health);
				playerEntity.setScore(this.Score);
				playerEntity.setRound(this.Round);
				
				//textEntity = new Text("Blbalbalbalbablal");
				
				
				// step 1 tell flashPunk what size you want the text
				Text.size = 15;
				// step 2 create a Text object
				var myText:Text = new Text(arrayLogics[randomLogics]+" " + arrayNumbers[randomNumber] + ".");
				
				var randomLogics2:int = Math.floor(Math.random() * (1+randomMaxLogics - randomMinLogics))+ randomMinLogics;	
				var arrayNames:Array = new Array(); 
				arrayNames = new Array ("Jackson look-alike" , "young man", "wannabe", "Jackson", "boy", "Pretty boy", "Red pill hunter", "desperate housewife", "Hutchi-mama", "Babe", "cutie", "My little pony","Jaffa the hut", "Generous one","Guilty boy", "Crazy one", "Stable dude" , "look a like" , "Idols" ,"Ricky Martin", "Hugo the boss", "Stabilizer", "Puzzle solver" ,"Player" , "True one", "The one", "Blues brother", "but rest in piece, brother", "Sister", "Mister", "Lara Croft", "Angelina Jolie look-alike", "R.I.P.", "Skull", "Zombie","Teenage Mutant Turtle", "Sheep rider", "Girly man","Crocodile");
				var randomMaxNames:int = arrayNames.length-1;
				var randomMinNames:int = 0;
				//Math.floor(Math.random() * 41) + 10;  //number between 10 -50
				var randomNames:int = Math.floor(Math.random() * (1+randomMaxNames - randomMinNames))+ randomMinNames;	
				
				
				
				var arrayFillWords:Array = new Array("Okay", "Hmph", "hah","lol", "pfiuf", "nice","huoh","please", "say it gently","that's solid", "nice one", "way to go", "believe it or not","sayonara", "bonjour", "priviet", "achtung", "diddi-dii..", "Adios" ,"Hola", "Thadaaa");
				var randomMaxFillWords:int = arrayFillWords.length-1;
				var randomMinFillWords:int = 0;
				//Math.floor(Math.random() * 41) + 10;  //number between 10 -50
				var randomFillWords:int = Math.floor(Math.random() * (1+randomMaxFillWords - randomMinFillWords))+ randomMinFillWords;	
			
				var myText2:Text = new Text(arrayLogics[randomLogics2]+" " + arrayNames[randomNames] + ", "+ arrayFillWords[randomFillWords] +"." );
				
				
				var randomNumber3:int = Math.floor(Math.random() * (1+150 + 150))- 150;	
				
				// step 3 create an Entity to easily display the text
				var myTextEntity:Entity = new Entity(0,0,myText);
				var myTextEntity2:Entity = new Entity(0,0,myText2);
				// optional step 3b - position the text somewhere else - here I center it on the screen.
				myTextEntity2.x = (FP.width / 2.6) - (myTextEntity2.width / 2.6) -220;
				myTextEntity2.y = (FP.height / 2.6) - (myTextEntity2.height / 2.6 - randomNumber3) ;
				
				myTextEntity.x = (FP.width / 2.6) - (myTextEntity2.width / 2.6) -220;
				myTextEntity.y = (FP.height / 2.6) - (myTextEntity2.height / 2.6 - randomNumber3 -20) ;				
				// step 4 add the entity to the world
				add(myTextEntity);
				add(myTextEntity2);
				
				
				
				randomMaxNumbers = 10
				randomMinNumbers = 1;
				//Math.floor(Math.random() * 41) + 10;  //number between 10 -50
				randomNumber = Math.floor(Math.random() * (1+randomMaxNumbers - randomMinNumbers))+ randomMinNumbers;
				
				var myBulletEntity:Bullets = new Bullets();
				add(myBulletEntity);
			
				var myBallEntity:Ball = new Ball();
				add(myBallEntity);
				
				var myBallEntity2:Ball = new Ball();
				add(myBallEntity2);
				
				if (this.Round>=3) {
				var myBallEntity3:Ball = new Ball();
				add(myBallEntity3);
				
				var myBallEntity4:Ball = new Ball();
				add(myBallEntity4);
				
				var myBallEntity5:Ball = new Ball();
				add(myBallEntity5);
				}
				
				if (this.Round>=6) {
				var myBallEntity6:Ball = new Ball();
				add(myBallEntity6);
					
				var myBallEntity7:Ball = new Ball();
				add(myBallEntity7);
								
				}
				
				if (this.Round>=9) {
				var myBallEntity8:Ball = new Ball();
				add(myBallEntity8);
				
				var myBallEntity9:Ball = new Ball();
				add(myBallEntity9);
				}
				
				if (this.Round>=10) {
				var myBallEntity10:Ball = new Ball();
				add(myBallEntity10);
				}
				if (this.Round>=11) {
				var myBallEntity11:Ball = new Ball();
				add(myBallEntity11);
				}
				if (this.Round>=12) {
				var myBallEntity12:Ball = new Ball();
				add(myBallEntity12);
				}
				
				if (this.Round>=13) {
					var myBallEntity13:Ball = new Ball();
					add(myBallEntity13);
				}
				if (this.Round>=14) {
					var myBallEntity14:Ball = new Ball();
					add(myBallEntity14);
					var myBallEntity15:Ball = new Ball();
					add(myBallEntity15);
				}
				
				if (this.Round>=17) {
					var myBallEntity16:Ball = new Ball();
					add(myBallEntity16);
					var myBallEntity17:Ball = new Ball();
					add(myBallEntity17);
				}
				
				if (this.Round>=20) {  //this is hard round :P 
					var myBallEntity18:Ball = new Ball();
					add(myBallEntity18);
					var myBallEntity19:Ball = new Ball();
					add(myBallEntity19);
					var myBallEntity20:Ball = new Ball();
					add(myBallEntity20);
				}
				
				if (this.Round>=24) {
					var myBallEntity21:Ball = new Ball();
					add(myBallEntity21);
					var myBallEntity22:Ball = new Ball();
					add(myBallEntity22);
					var myBallEntity23:Ball = new Ball();
					add(myBallEntity23);
					var myBallEntity24:Ball = new Ball();
					add(myBallEntity24);
					
					
					
					
					
					
				
				}
				
				
				Text.size = 18;
				
				
				//this.playerScoreText = this.playerScore.toString();
				HealthText = new Text(this.Health.toString(),0,30,FP.screen.width/1.5);
				addGraphic(HealthText);
				
				
				ScoreText = new Text(this.Score.toString(), 0,60,FP.screen.width/1.5);
				addGraphic(ScoreText);
				
			//	Text.size = 18;
		//		playerScoreText = new Text("0",0,0,FP.screen.width/1.5);
			//	addGraphic(playerScoreText);
				RoundText = new Text(this.Round.toString(), 600,0, FP.screen.width/1.5);
				addGraphic(RoundText);
				
			
				
				
				
				
				super.begin();
				
			
				
				
				
				
				
				
				
				
				
				
			}
			
	
			
			
			override public function update():void
			{
				
				
				HealthText.text = playerEntity.getScore().toString();
				
				
				HealthText = new Text(this.Health.toString(),0,30,FP.screen.width/1.5);
				
				var abba = addGraphic(HealthText);   //WOHOO! ENTITYjEN spammaus ongelma oli tossa nakojaa! loyty, jee!!!
				FP.world.recycle(abba).autoClear;								
				  	// < --without these commands the program is not very stable ;) ;) 
				
				ScoreText.text = playerEntity.getHealth().toString();
				var babba = addGraphic(ScoreText);
				FP.world.recycle(babba); // < --without these commands the program is not very stable ;) ;) 
				
				
				HealthText.text = playerEntity.getHealth().toString();
				HealthText.x = 50;
				HealthText.y = 50;
				var baba = addGraphic(HealthText);
				FP.world.recycle(baba);
				//RoundText.text = playerEntity.getRound().toString();
	
			//	trace(FP.world.classCount(entities.Ball));
				
				//trace(FP.world.classCount(entities.Bullets));
				//trace(FP.world.classCount(entities.Player));
				
				//trace(FP.world.classCount(worlds.Level));
				
				//trace(FP.world.classCount(worlds.MainMenuWorld));
				//trace(FP.world.classCount(worlds.GameWorld));
				//trace(FP.world.classCount(platform));
				//trace(FP.world.classCount(worlds.MainMenuWorld));
				//trace(FP.world.classCount(Texti));
				//trace(FP.world.classCount(entities.Texti));
				//trace(FP.world.classCount(entities.Enemy));
				
				
				
				
				super.update();
				
				
			}
			
		
			
			
			//Text.size = 14;
			//var bullets:Bullets;
			////var playerHealthText:Text = new Text(bullets.getScore().toString(),0,0,0);
			//addGraphic(playerHealthText);
			
			
			
			
			
			
			
		}
		
	}