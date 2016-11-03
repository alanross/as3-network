package com.ar.net.basic
{
	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public interface INetStreamStatusHandler
	{
		/**
		 * Notifies of status event associated with the net stream
		 */
		function onNetStreamStatusChanged( status:int ):void;
	}
}