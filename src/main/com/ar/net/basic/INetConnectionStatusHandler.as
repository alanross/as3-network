package com.ar.net.basic
{
	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public interface INetConnectionStatusHandler
	{
		/**
		 * Notifies of status event associated with the net connection
		 */
		function onNetConnectionStatusChanged( status:int ):void;
	}
}