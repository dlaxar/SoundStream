﻿package  {	import flash.display.MovieClip;	import flash.events.MouseEvent;	import flash.display.Sprite;	import flash.events.Event;	import fl.transitions.Tween;	import fl.transitions.easing.Bounce;		public class PanControl extends Control {				private var currentSlider:Slider;				public function PanControl(preferredWidth:int, preferredHeight:int, preferredColor:uint, audio:AudioPlayer) {			super(preferredWidth, preferredHeight, preferredColor, audio);		}				public override function getControlElement():MovieClip {			var s:MovieClip = new ControlElement();			s.graphics.beginFill(0xFFFFFF, 1);						this.currentSlider = new Slider(100, 20, -100, 100);			this.currentSlider.x = 10;			s.addChild(this.currentSlider);			this.currentSlider.setValue(this.getAudioPlayer().getPan()*100);			this.currentSlider.addEventListener(Event.ENTER_FRAME, this.onPanChange);						s.graphics.drawRect(0, 0, 100+20, this.height);						s.graphics.endFill();						return s;		}				private function onPanChange(e:Event) {			this.getAudioPlayer().setPan(this.currentSlider.getValue()/100);		}	}	}