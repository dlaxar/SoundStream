﻿package  {	import flash.events.MouseEvent;		public class NextControl extends UnopenableControl {		public function NextControl(preferredWidth:int, preferredHeight:int, preferredColor:uint, audio:AudioPlayer) {			super(preferredWidth, preferredHeight, preferredColor, audio);			this.addChild(new IMGNext());			this.addEventListener(MouseEvent.CLICK, this.onClick);		}				public function onClick(e:MouseEvent):void {			this.getAudioPlayer().playNext();		}	}	}