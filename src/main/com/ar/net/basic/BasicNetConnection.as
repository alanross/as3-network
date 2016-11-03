package com.ar.net.basic
{
	import com.ar.core.log.Context;
	import com.ar.core.log.Log;
	import com.ar.core.utils.IDisposable;
	import com.ar.core.utils.ObjectUtils;
	import com.ar.net.utils.NetStatusType;

	import flash.events.AsyncErrorEvent;
	import flash.events.IOErrorEvent;
	import flash.events.NetStatusEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.NetConnection;
	import flash.net.Responder;

	/**
	 * Basic wrapper for the native NetConnection class to ensure
	 * all handlers are set and an unified status type can be used.
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public class BasicNetConnection implements IDisposable
	{
		private var _statusHandler:INetConnectionStatusHandler;

		private var _netConnection:NetConnection;

		/**
		 * Creates a new instance of BasicNetConnection.
		 */
		public function BasicNetConnection( client:Object, statusHandler:INetConnectionStatusHandler )
		{
			_statusHandler = statusHandler;

			_netConnection = new NetConnection();
			_netConnection.client = client;
			_netConnection.addEventListener( NetStatusEvent.NET_STATUS, onNetConnectionStatus );
			_netConnection.addEventListener( IOErrorEvent.IO_ERROR, onNetConnectionIOError );
			_netConnection.addEventListener( AsyncErrorEvent.ASYNC_ERROR, onNetConnectionAsyncError );
			_netConnection.addEventListener( SecurityErrorEvent.SECURITY_ERROR, onNetConnectionSecurityError );
		}

		/**
		 * Connect the net connection to a given url.
		 */
		public function connect( url:String, params:Object = null ):void
		{
			if( params != null )
			{
				Log.trace( Context.NET, this, "connect url:" + url + " params:" + ObjectUtils.objToString( params ) );

				_netConnection.connect( url, params );
			}
			else
			{
				Log.trace( Context.NET, this, "connect url:" + url );

				_netConnection.connect( url );
			}
		}

		/**
		 * Disconnect the net connection.
		 */
		public function disconnect():void
		{
			_netConnection.close();
		}

		/**
		 * Call a command
		 */
		public function call( command:String, responder:Responder, params:Object = null ):void
		{
			if( params != null )
			{
				_netConnection.call( command, responder, params );
			}
			else
			{
				_netConnection.call( command, responder );
			}
		}

		/**
		 * Frees all internal references of the object.
		 */
		public function dispose():void
		{
			_netConnection.removeEventListener( NetStatusEvent.NET_STATUS, onNetConnectionStatus );
			_netConnection.removeEventListener( IOErrorEvent.IO_ERROR, onNetConnectionIOError );
			_netConnection.removeEventListener( AsyncErrorEvent.ASYNC_ERROR, onNetConnectionAsyncError );
			_netConnection.removeEventListener( SecurityErrorEvent.SECURITY_ERROR, onNetConnectionSecurityError );
			_netConnection = null;
		}

		/**
		 * @private
		 */
		private function changeStatus( status:int, message:String = "" ):void
		{
			var str:String = "Url: " + _netConnection.uri + ", Status:" + NetStatusType.typeToCode( status );

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

			_statusHandler.onNetConnectionStatusChanged( status );
		}

		/**
		 * @private
		 */
		private function onNetConnectionStatus( event:NetStatusEvent ):void
		{
			var code:String = event.info.code;

			changeStatus( NetStatusType.codeToType( code ) );
		}

		/**
		 * @private
		 */
		private function onNetConnectionIOError( event:IOErrorEvent ):void
		{
			changeStatus( NetStatusType.CONNECTION_CONNECT_IO_ERROR, event.toString() );
		}

		/**
		 * @private
		 */
		private function onNetConnectionAsyncError( event:AsyncErrorEvent ):void
		{
			changeStatus( NetStatusType.CONNECTION_CONNECT_ASYNC_ERROR, event.toString() );
		}

		/**
		 * @private
		 */
		private function onNetConnectionSecurityError( event:SecurityErrorEvent ):void
		{
			changeStatus( NetStatusType.CONNECTION_CONNECT_SECURITY_ERROR, event.toString() );
		}

		/**
		 * The client attached to the net connection
		 */
		public function get client():Object
		{
			return _netConnection.client;
		}

		/**
		 * The client attached to the net connection
		 */
		public function set client( value:Object ):void
		{
			_netConnection.client = value;
		}

		/**
		 * The object encoding.
		 */
		public function set objectEncoding( version:uint ):void
		{
			_netConnection.objectEncoding = version;
		}

		/**
		 * Direct access to the native net connection object
		 */
		public function get netConnection():NetConnection
		{
			return _netConnection;
		}

		/**
		 * The url the net connection is connected to
		 */
		public function get url():String
		{
			return _netConnection.uri;
		}

		/**
		 * Creates and returns a string representation of the BasicNetConnection object.
		 */
		public function toString():String
		{
			return "[BasicNetConnection]";
		}
	}
}