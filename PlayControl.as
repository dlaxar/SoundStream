﻿package  {	import flash.events.MouseEvent;	import flash.display.MovieClip;		public class PlayControl extends UnopenableControl {		public function PlayControl(preferredWidth:int, preferredHeight:int, preferredColor:uint, audio:AudioPlayer) {			super(preferredWidth, preferredHeight, preferredColor, audio);			this.addEventListener(MouseEvent.CLICK, this.onClick);		}				public function onClick(e:MouseEvent):void {			if(this.getAudioPlayer().isPlaying()) this.getAudioPlayer().pause();			else this.getAudioPlayer().play();		}	}	}