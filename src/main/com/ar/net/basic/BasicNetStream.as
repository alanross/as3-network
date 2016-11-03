package com.ar.net.basic
{
	import com.ar.core.log.Context;
	import com.ar.core.log.Log;
	import com.ar.net.utils.NetStatusType;

	import flash.events.AsyncErrorEvent;
	import flash.events.IOErrorEvent;
	import flash.events.NetStatusEvent;
	import flash.events.SecurityErrorEvent;
	import flash.media.Camera;
	import flash.media.Microphone;
	import flash.net.NetConnection;
	import flash.net.NetStream;

	/**
	 * Basic wrapper for the native NetStream class to ensure
	 * all handlers are set and an unified status type can be used.
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public class BasicNetStream
	{
		private var _statusHandler:INetStreamStatusHandler;

		private var _netStream:NetStream;

		private var _client:Object;

		private var _name:String;

		/**
		 * Creates a new instance of BasicNetStream.
		 */
		public function BasicNetStream( client:Object, statusHandler:INetStreamStatusHandler )
		{
			_client = client;
			_statusHandler = statusHandler;
		}

		/**
		 * Create and open a net stream connection
		 */
		public function open( connection:NetConnection ):void
		{
			_netStream = new NetStream( connection );
			_netStream.client = _client;
			_netStream.addEventListener( NetStatusEvent.NET_STATUS, onNetStreamStatus );
			_netStream.addEventListener( IOErrorEvent.IO_ERROR, onNetStreamIOError );
			_netStream.addEventListener( AsyncErrorEvent.ASYNC_ERROR, onNetStreamAsyncError );
			_netStream.addEventListener( SecurityErrorEvent.SECURITY_ERROR, onNetStreamSecurityError );
		}

		/**
		 * Play a stream defined by it name.
		 */
		public function play( streamName:String ):void
		{
			_name = streamName;

			_netStream.play( streamName );
		}

		/**
		 * Close the stream.
		 */
		public function close():void
		{
			_netStream.close();
		}

		/**
		 * Pause the stream.
		 */
		public function pause():void
		{
			_netStream.pause();
		}

		/**
		 * Seek to an position defined by the offset value.
		 */
		public function seek( offset:Number ):void
		{
			_netStream.seek( offset );
		}

		/**
		 * Attach a camera to the stream.
		 */
		public function attachCamera( camera:Camera ):void
		{
			_netStream.attachCamera( camera );
		}

		/**
		 * Attach a microphone to the stream.
		 */
		public function attachMicrophone( microphone:Microphone ):void
		{
			_netStream.attachAudio( microphone );
		}

		/**
		 * Publish the net stream
		 */
		public function publish( publishName:String ):void
		{
			_name = publishName;

			_netStream.publish( publishName );
		}

		/**
		 * Frees all internal references of the object.
		 */
		public function dispose():void
		{
			_netStream.removeEventListener( NetStatusEvent.NET_STATUS, onNetStreamStatus );
			_netStream.removeEventListener( IOErrorEvent.IO_ERROR, onNetStreamIOError );
			_netStream.removeEventListener( AsyncErrorEvent.ASYNC_ERROR, onNetStreamAsyncError );
			_netStream.removeEventListener( SecurityErrorEvent.SECURITY_ERROR, onNetStreamSecurityError );
			_netStream = null;
		}

		/**
		 * @private
		 */
		private function changeStatus( status:int, message:String = "" ):void
		{
			var str:String = "Stream: " + _name + ", Status:" + NetStatusType.typeToCode( status );

			if( message != null && message.length > 0 )
			{
				str += ", Message:" + message;
			}

			if( NetStatusType.isError( status ) )
			{
				Log.warn( Context.NET, this, str );
			}
			else
			{
				Log.trace( Context.NET, this, str );
			}

			_statusHandler.onNetStreamStatusChanged( status );
		}

		/**
		 * @private
		 */
		private function onNetStreamStatus( event:NetStatusEvent ):void
		{
			var code:String = event.info.code;

			changeStatus( NetStatusType.codeToType( code ) );
		}

		/**
		 * @private
		 */
		private function onNetStreamIOError( event:IOErrorEvent ):void
		{
			changeStatus( NetStatusType.STREAM_CONNECT_IO_ERROR, event.toString() );
		}

		/**
		 * @private
		 */
		private function onNetStreamAsyncError( event:AsyncErrorEvent ):void
		{
			changeStatus( NetStatusType.STREAM_CONNECT_ASYNC_ERROR, event.toString() );
		}

		/**
		 * @private
		 */
		private function onNetStreamSecurityError( event:SecurityErrorEvent ):void
		{
			changeStatus( NetStatusType.STREAM_CONNECT_SECURITY_ERROR, event.toString() );
		}

		/**
		 * Direct access to the native net stream object
		 */
		public function get netStream():NetStream
		{
			return _netStream;
		}

		/**
		 * The name of the stream the stream connection is playing.
		 */
		public function get name():String
		{
			return _name;
		}

		/**
		 * Creates and returns a string representation of the BasicNetStream object.
		 */
		public function toString():String
		{
			return "[BasicNetStream]";
		}
	}
}