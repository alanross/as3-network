package com.ar.net.utils
{
	/**
	 * http://help.adobe.com/de_DE/FlashPlatform/reference/actionscript/3/flash/events/NetStatusEvent.html#info
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class NetStatusType
	{
		public static const CONNECTION:int = 0x1000;
		public static const STREAM:int = 0x2000;
		public static const GROUP:int = 0x4000;
		public static const SHARED_OBJECT:int = 0x8000;

		public static const ERROR:int = 0x0100;
		public static const INFORMATION:int = 0x0200;
		public static const SUCCESS:int = 0x0400;

		// NET CONNECTION

		public static const CONNECTION_CONNECT_SUCCESS:int = CONNECTION | SUCCESS | 0x0001;
		public static const CONNECTION_CALL_BAD_VERSION:int = CONNECTION | ERROR | 0x0001;
		public static const CONNECTION_CALL_FAILED:int = CONNECTION | ERROR | 0x0002;
		public static const CONNECTION_CALL_PROHIBITED:int = CONNECTION | ERROR | 0x0003;
		public static const CONNECTION_CONNECT_APP_SHUTDOWN:int = CONNECTION | ERROR | 0x0004;
		public static const CONNECTION_CONNECT_FAILED:int = CONNECTION | ERROR | 0x0005;
		public static const CONNECTION_CONNECT_IDLE_TIMEOUT:int = CONNECTION | ERROR | 0x0006;
		public static const CONNECTION_CONNECT_INVALID_APP:int = CONNECTION | ERROR | 0x0007;
		public static const CONNECTION_CONNECT_REJECTED:int = CONNECTION | ERROR | 0x0008;
		public static const CONNECTION_CONNECT_IO_ERROR:int = CONNECTION | ERROR | 0x0009;
		public static const CONNECTION_CONNECT_ASYNC_ERROR:int = CONNECTION | ERROR | 0x000A;
		public static const CONNECTION_CONNECT_SECURITY_ERROR:int = CONNECTION | ERROR | 0x000B;
		public static const CONNECTION_CONNECT_CLOSED:int = CONNECTION | INFORMATION | 0x0001;
		public static const CONNECTION_CONNECT_NETWORK_CHANGE:int = CONNECTION | INFORMATION | 0x0002;

		// NET STREAM

		public static const STREAM_UNPUBLISH_SUCCESS:int = STREAM | SUCCESS | 0x0001;
		public static const STREAM_CONNECT_SUCCESS:int = STREAM | SUCCESS | 0x0002;
		public static const STREAM_CONNECT_FAILED:int = STREAM | ERROR | 0x0001;
		public static const STREAM_CONNECT_REJECTED:int = STREAM | ERROR | 0x0002;
		public static const STREAM_FAILED:int = STREAM | ERROR | 0x0003;
		public static const STREAM_PLAY_FAILED:int = STREAM | ERROR | 0x0004;
		public static const STREAM_PLAY_NOT_FOUND:int = STREAM | ERROR | 0x0005;
		public static const STREAM_PUBLISH_BAD_NAME:int = STREAM | ERROR | 0x0006;
		public static const STREAM_RECORD_ALREADY_EXISTS:int = STREAM | ERROR | 0x0007;
		public static const STREAM_RECORD_FAILED:int = STREAM | ERROR | 0x0008;
		public static const STREAM_RECORD_NO_ACCESS:int = STREAM | ERROR | 0x0009;
		public static const STREAM_SEEK_FAILED:int = STREAM | ERROR | 0x000A;
		public static const STREAM_SEEK_INVALID_TIME:int = STREAM | ERROR | 0x000B;
		public static const STREAM_PLAY_FILE_STRUCTURE_INVALID:int = STREAM | ERROR | 0x000C;
		public static const STREAM_PLAY_INSUFFICIENT_BW:int = STREAM | ERROR | 0x000D;
		public static const STREAM_PLAY_NO_SUPPORTED_TRACK:int = STREAM | ERROR | 0x000E;
		public static const STREAM_CONNECT_IO_ERROR:int = CONNECTION | ERROR | 0x000F;
		public static const STREAM_CONNECT_ASYNC_ERROR:int = CONNECTION | ERROR | 0x0010;
		public static const STREAM_CONNECT_SECURITY_ERROR:int = CONNECTION | ERROR | 0x0011;
		public static const STREAM_BUFFER_EMPTY:int = STREAM | INFORMATION | 0x0001;
		public static const STREAM_BUFFER_FLUSH:int = STREAM | INFORMATION | 0x0002;
		public static const STREAM_BUFFER_FULL:int = STREAM | INFORMATION | 0x0003;
		public static const STREAM_CONNECT_CLOSED:int = STREAM | INFORMATION | 0x0004;
		public static const STREAM_DRM_UPDATE_NEEDED:int = STREAM | INFORMATION | 0x0005;
		public static const STREAM_MULTICAST_STREAM_RESET:int = STREAM | INFORMATION | 0x0006;
		public static const STREAM_PAUSE_NOTIFY:int = STREAM | INFORMATION | 0x0007;
		public static const STREAM_PLAY_PUBLISH_NOTIFY:int = STREAM | INFORMATION | 0x0008;
		public static const STREAM_PLAY_RESET:int = STREAM | INFORMATION | 0x0009;
		public static const STREAM_PLAY_START:int = STREAM | INFORMATION | 0x000A;
		public static const STREAM_PLAY_STOP:int = STREAM | INFORMATION | 0x000B;
		public static const STREAM_PLAY_TRANSITION:int = STREAM | INFORMATION | 0x000C;
		public static const STREAM_PLAY_UNPUBLISH_NOTIFY:int = STREAM | INFORMATION | 0x000D;
		public static const STREAM_PUBLISH_IDLE:int = STREAM | INFORMATION | 0x000E;
		public static const STREAM_PUBLISH_START:int = STREAM | INFORMATION | 0x000F;
		public static const STREAM_RECORD_START:int = STREAM | INFORMATION | 0x0010;
		public static const STREAM_RECORD_STOP:int = STREAM | INFORMATION | 0x0011;
		public static const STREAM_SEEK_NOTIFY:int = STREAM | INFORMATION | 0x0012;
		public static const STREAM_SEEK_COMPLETE:int = STREAM | INFORMATION | 0x0013;
		public static const STREAM_SEEK_START:int = STREAM | INFORMATION | 0x0014;
		public static const STREAM_STEP_NOTIFY:int = STREAM | INFORMATION | 0x0015;
		public static const STREAM_UNPAUSE_NOTIFY:int = STREAM | INFORMATION | 0x000A;
		public static const STREAM_VIDEO_DIMENSIONS_CHANGE:int = STREAM | INFORMATION | 0x000B;

		// NET GROUP

		public static const GROUP_CONNECT_SUCCESS:int = GROUP | SUCCESS | 0x0001;
		public static const GROUP_CONNECT_FAILED:int = GROUP | ERROR | 0x0001;
		public static const GROUP_CONNECT_REJECTED:int = GROUP | ERROR | 0x0002;
		public static const GROUP_REPLICATION_FETCH_FAILED:int = GROUP | ERROR | 0x0003;
		public static const GROUP_LOCAL_COVERAGE_NOTIFY:int = GROUP | INFORMATION | 0x0001;
		public static const GROUP_MULTICAST_STREAM_PUBLISH_NOTIFY:int = GROUP | INFORMATION | 0x0002;
		public static const GROUP_MULTICAST_STREAM_UNPUBLISH_NOTIFY:int = GROUP | INFORMATION | 0x0003;
		public static const GROUP_NEIGHBOR_CONNECT:int = GROUP | INFORMATION | 0x0004;
		public static const GROUP_NEIGHBOR_DISCONNECT:int = GROUP | INFORMATION | 0x0005;
		public static const GROUP_POSTING_NOTIFY:int = GROUP | INFORMATION | 0x0006;
		public static const GROUP_REPLICATION_FETCH_RESULT:int = GROUP | INFORMATION | 0x0007;
		public static const GROUP_REPLICATION_FETCH_SEND_NOTIFY:int = GROUP | INFORMATION | 0x0008;
		public static const GROUP_REPLICATION_REQUEST:int = GROUP | INFORMATION | 0x0009;
		public static const GROUP_SENDTO_NOTIFY:int = GROUP | INFORMATION | 0x000A;

		// SHARED OBJECT

		public static const SHARED_OBJECT_FLUSH_SUCCESS:int = SHARED_OBJECT | SUCCESS | 0x0001;

		public static const SHARED_OBJECT_BAD_PERSISTENCE:int = SHARED_OBJECT | ERROR | 0x0001;
		public static const SHARED_OBJECT_FLUSH_FAILED:int = SHARED_OBJECT | ERROR | 0x0002;
		public static const SHARED_OBJECT_URI_MISMATCH:int = SHARED_OBJECT | ERROR | 0x0003;


		public static function isSuccessful( type:int ):Boolean
		{
			return ( 0 != ( type & SUCCESS ) );
		}

		public static function isError( type:int ):Boolean
		{
			return ( 0 != ( type & ERROR ) );
		}

		public static function isInformational( type:int ):Boolean
		{
			return ( 0 != ( type & INFORMATION ) );
		}

		public static function isNetConnection( type:int ):Boolean
		{
			return ( 0 != ( type & CONNECTION ) );
		}

		public static function isNetStream( type:int ):Boolean
		{
			return ( 0 != ( type & STREAM ) );
		}

		public static function isNetGroup( type:int ):Boolean
		{
			return ( 0 != ( type & GROUP ) );
		}

		public static function isSharedObject( type:int ):Boolean
		{
			return ( 0 != ( type & SHARED_OBJECT ) );
		}

		public static function codeToType( code:String ):int
		{
			switch( code )
			{
				case "NetConnection.Call.BadVersion":
					return CONNECTION_CALL_BAD_VERSION;
				case "NetConnection.Call.Failed" :
					return CONNECTION_CALL_FAILED;
				case "NetConnection.Call.Prohibited" :
					return CONNECTION_CALL_PROHIBITED;
				case "NetConnection.Connect.AppShutdown" :
					return CONNECTION_CONNECT_APP_SHUTDOWN;
				case "NetConnection.Connect.Closed" :
					return CONNECTION_CONNECT_CLOSED;
				case "NetConnection.Connect.Failed" :
					return CONNECTION_CONNECT_FAILED;
				case "NetConnection.Connect.IdleTimeout" :
					return CONNECTION_CONNECT_IDLE_TIMEOUT;
				case "NetConnection.Connect.InvalidApp" :
					return CONNECTION_CONNECT_INVALID_APP;
				case "NetConnection.Connect.NetworkChange" :
					return CONNECTION_CONNECT_NETWORK_CHANGE;
				case "NetConnection.Connect.Rejected" :
					return CONNECTION_CONNECT_REJECTED;
				case "NetConnection.Connect.Success" :
					return CONNECTION_CONNECT_SUCCESS;
				case "NetConnection.Connect.IOError" :
					return CONNECTION_CONNECT_IO_ERROR;
				case "NetConnection.Connect.SecurityError" :
					return CONNECTION_CONNECT_SECURITY_ERROR;
				case "NetConnection.Connect.AsyncError" :
					return CONNECTION_CONNECT_ASYNC_ERROR;

				case "NetGroup.Connect.Failed" :
					return GROUP_CONNECT_FAILED;
				case "NetGroup.Connect.Rejected" :
					return GROUP_CONNECT_REJECTED;
				case "NetGroup.Connect.Success" :
					return GROUP_CONNECT_SUCCESS;
				case "NetGroup.LocalCoverage.Notify" :
					return GROUP_LOCAL_COVERAGE_NOTIFY;
				case "NetGroup.MulticastStream.PublishNotify" :
					return GROUP_MULTICAST_STREAM_PUBLISH_NOTIFY;
				case "NetGroup.MulticastStream.UnpublishNotify" :
					return GROUP_MULTICAST_STREAM_UNPUBLISH_NOTIFY;
				case "NetGroup.Neighbor.Connect" :
					return GROUP_NEIGHBOR_CONNECT;
				case "NetGroup.Neighbor.Disconnect" :
					return GROUP_NEIGHBOR_DISCONNECT;
				case "NetGroup.Posting.Notify" :
					return GROUP_POSTING_NOTIFY;
				case "NetGroup.Replication.Fetch.Failed" :
					return GROUP_REPLICATION_FETCH_FAILED;
				case "NetGroup.Replication.Fetch.Result" :
					return GROUP_REPLICATION_FETCH_RESULT;
				case "NetGroup.Replication.Fetch.SendNotify" :
					return GROUP_REPLICATION_FETCH_SEND_NOTIFY;
				case "NetGroup.Replication.Request" :
					return GROUP_REPLICATION_REQUEST;
				case "NetGroup.SendTo.Notify" :
					return GROUP_SENDTO_NOTIFY;

				case "NetStream.Buffer.Empty" :
					return STREAM_BUFFER_EMPTY;
				case "NetStream.Buffer.Flush" :
					return STREAM_BUFFER_FLUSH;
				case "NetStream.Buffer.Full" :
					return STREAM_BUFFER_FULL;
				case "NetStream.Connect.Closed" :
					return STREAM_CONNECT_CLOSED;
				case "NetStream.Connect.Failed" :
					return STREAM_CONNECT_FAILED;
				case "NetStream.Connect.Rejected" :
					return STREAM_CONNECT_REJECTED;
				case "NetStream.Connect.Success" :
					return STREAM_CONNECT_SUCCESS;
				case "NetStream.DRM.UpdateNeeded" :
					return STREAM_DRM_UPDATE_NEEDED;
				case "NetStream.Failed" :
					return STREAM_FAILED;
				case "NetStream.MulticastStream.Reset" :
					return STREAM_MULTICAST_STREAM_RESET;
				case "NetStream.Pause.Notify" :
					return STREAM_PAUSE_NOTIFY;
				case "NetStream.Play.Failed" :
					return STREAM_PLAY_FAILED;
				case "NetStream.Play.FileStructureInvalid" :
					return STREAM_PLAY_FILE_STRUCTURE_INVALID;
				case "NetStream.Play.InsufficientBW" :
					return STREAM_PLAY_INSUFFICIENT_BW;
				case "NetStream.Play.NoSupportedTrackFound" :
					return STREAM_PLAY_NO_SUPPORTED_TRACK;
				case "NetStream.Play.PublishNotify" :
					return STREAM_PLAY_PUBLISH_NOTIFY;
				case "NetStream.Play.Reset" :
					return STREAM_PLAY_RESET;
				case "NetStream.Play.Start" :
					return STREAM_PLAY_START;
				case "NetStream.Play.Stop" :
					return STREAM_PLAY_STOP;
				case "NetStream.Play.StreamNotFound" :
					return STREAM_PLAY_NOT_FOUND;
				case "NetStream.Play.Transition" :
					return STREAM_PLAY_TRANSITION;
				case "NetStream.Play.UnpublishNotify" :
					return STREAM_PLAY_UNPUBLISH_NOTIFY;
				case "NetStream.Publish.BadName" :
					return STREAM_PUBLISH_BAD_NAME;
				case "NetStream.Publish.Idle" :
					return STREAM_PUBLISH_IDLE;
				case "NetStream.Publish.Start" :
					return STREAM_PUBLISH_START;
				case "NetStream.Record.AlreadyExists" :
					return STREAM_RECORD_ALREADY_EXISTS;
				case "NetStream.Record.Failed" :
					return STREAM_RECORD_FAILED;
				case "NetStream.Record.NoAccess" :
					return STREAM_RECORD_NO_ACCESS;
				case "NetStream.Record.Start" :
					return STREAM_RECORD_START;
				case "NetStream.Record.Stop" :
					return STREAM_RECORD_STOP;
				case "NetStream.Seek.Failed" :
					return STREAM_SEEK_FAILED;
				case "NetStream.Seek.InvalidTime" :
					return STREAM_SEEK_INVALID_TIME;
				case "NetStream.Seek.Notify" :
					return STREAM_SEEK_NOTIFY;
				case "NetStream.Seek.Complete" :
					return STREAM_SEEK_COMPLETE;
				case "NetStream.SeekStart.Notify" :
					return STREAM_SEEK_START;
				case "NetStream.Connect.IOError" :
					return STREAM_CONNECT_IO_ERROR;
				case "NetStream.Connect.SecurityError" :
					return STREAM_CONNECT_SECURITY_ERROR;
				case "NetStream.Connect.AsyncError" :
					return STREAM_CONNECT_ASYNC_ERROR;
				case "NetStream.Video.DimensionChange" :
					return STREAM_VIDEO_DIMENSIONS_CHANGE;

				case "NetStream.Step.Notify" :
					return STREAM_STEP_NOTIFY;
				case "NetStream.Unpause.Notify" :
					return STREAM_UNPAUSE_NOTIFY;
				case "NetStream.Unpublish.Success" :
					return STREAM_UNPUBLISH_SUCCESS;
				case "SharedObject.BadPersistence" :
					return SHARED_OBJECT_BAD_PERSISTENCE;
				case "SharedObject.Flush.Failed" :
					return SHARED_OBJECT_FLUSH_FAILED;
				case "SharedObject.Flush.Success" :
					return SHARED_OBJECT_FLUSH_SUCCESS;
				case "SharedObject.UriMismatch" :
					return SHARED_OBJECT_URI_MISMATCH;

				default:
					throw new Error( "Unknown net status code " + code );
			}
		}

		public static function typeToCode( type:int ):String
		{
			switch( type )
			{
				case CONNECTION_CALL_BAD_VERSION:
					return "NetConnection.Call.BadVersion";
				case CONNECTION_CALL_FAILED:
					return "NetConnection.Call.Failed";
				case CONNECTION_CALL_PROHIBITED:
					return "NetConnection.Call.Prohibited";
				case CONNECTION_CONNECT_APP_SHUTDOWN:
					return "NetConnection.Connect.AppShutdown";
				case CONNECTION_CONNECT_CLOSED:
					return "NetConnection.Connect.Closed";
				case CONNECTION_CONNECT_FAILED:
					return "NetConnection.Connect.Failed";
				case CONNECTION_CONNECT_IDLE_TIMEOUT:
					return "NetConnection.Connect.IdleTimeout";
				case CONNECTION_CONNECT_INVALID_APP:
					return "NetConnection.Connect.InvalidApp";
				case CONNECTION_CONNECT_NETWORK_CHANGE:
					return "NetConnection.Connect.NetworkChange";
				case CONNECTION_CONNECT_REJECTED:
					return "NetConnection.Connect.Rejected";
				case CONNECTION_CONNECT_SUCCESS:
					return "NetConnection.Connect.Success";
				case CONNECTION_CONNECT_IO_ERROR:
					return "NetConnection.Connect.IOError";
				case CONNECTION_CONNECT_SECURITY_ERROR:
					return "NetConnection.Connect.SecurityError";
				case CONNECTION_CONNECT_ASYNC_ERROR:
					return "NetConnection.Connect.AsyncError";

				case GROUP_CONNECT_FAILED:
					return "NetGroup.Connect.Failed";
				case GROUP_CONNECT_REJECTED:
					return "NetGroup.Connect.Rejected";
				case GROUP_CONNECT_SUCCESS:
					return "NetGroup.Connect.Success";
				case GROUP_LOCAL_COVERAGE_NOTIFY:
					return "NetGroup.LocalCoverage.Notify";
				case GROUP_MULTICAST_STREAM_PUBLISH_NOTIFY:
					return "NetGroup.MulticastStream.PublishNotify";
				case GROUP_MULTICAST_STREAM_UNPUBLISH_NOTIFY:
					return "NetGroup.MulticastStream.UnpublishNotify";
				case GROUP_NEIGHBOR_CONNECT:
					return "NetGroup.Neighbor.Connect";
				case GROUP_NEIGHBOR_DISCONNECT:
					return "NetGroup.Neighbor.Disconnect";
				case GROUP_POSTING_NOTIFY:
					return "NetGroup.Posting.Notify";
				case GROUP_REPLICATION_FETCH_FAILED:
					return "NetGroup.Replication.Fetch.Failed";
				case GROUP_REPLICATION_FETCH_RESULT:
					return "NetGroup.Replication.Fetch.Result";
				case GROUP_REPLICATION_FETCH_SEND_NOTIFY:
					return "NetGroup.Replication.Fetch.SendNotify";
				case GROUP_REPLICATION_REQUEST:
					return "NetGroup.Replication.Request";
				case GROUP_SENDTO_NOTIFY:
					return "NetGroup.SendTo.Notify";

				case STREAM_BUFFER_EMPTY:
					return "NetStream.Buffer.Empty";
				case STREAM_BUFFER_FLUSH:
					return "NetStream.Buffer.Flush";
				case STREAM_BUFFER_FULL:
					return "NetStream.Buffer.Full";
				case STREAM_CONNECT_CLOSED:
					return "NetStream.Connect.Closed";
				case STREAM_CONNECT_FAILED:
					return "NetStream.Connect.Failed";
				case STREAM_CONNECT_REJECTED:
					return "NetStream.Connect.Rejected";
				case STREAM_CONNECT_SUCCESS:
					return "NetStream.Connect.Success";
				case STREAM_DRM_UPDATE_NEEDED:
					return "NetStream.DRM.UpdateNeeded";
				case STREAM_FAILED:
					return "NetStream.Failed";
				case STREAM_MULTICAST_STREAM_RESET:
					return "NetStream.MulticastStream.Reset";
				case STREAM_PAUSE_NOTIFY:
					return "NetStream.Pause.Notify";
				case STREAM_PLAY_FAILED:
					return "NetStream.Play.Failed";
				case STREAM_PLAY_FILE_STRUCTURE_INVALID:
					return "NetStream.Play.FileStructureInvalid";
				case STREAM_PLAY_INSUFFICIENT_BW:
					return "NetStream.Play.InsufficientBW";
				case STREAM_PLAY_NO_SUPPORTED_TRACK:
					return "NetStream.Play.NoSupportedTrackFound";
				case STREAM_PLAY_PUBLISH_NOTIFY:
					return "NetStream.Play.PublishNotify";
				case STREAM_PLAY_RESET:
					return "NetStream.Play.Reset";
				case STREAM_PLAY_START:
					return "NetStream.Play.Start";
				case STREAM_PLAY_STOP:
					return "NetStream.Play.Stop";
				case STREAM_PLAY_NOT_FOUND:
					return "NetStream.Play.StreamNotFound";
				case STREAM_PLAY_TRANSITION:
					return "NetStream.Play.Transition";
				case STREAM_PLAY_UNPUBLISH_NOTIFY:
					return "NetStream.Play.UnpublishNotify";
				case STREAM_PUBLISH_BAD_NAME:
					return "NetStream.Publish.BadName";
				case STREAM_PUBLISH_IDLE:
					return "NetStream.Publish.Idle";
				case STREAM_PUBLISH_START:
					return "NetStream.Publish.Start";
				case STREAM_RECORD_ALREADY_EXISTS:
					return "NetStream.Record.AlreadyExists";
				case STREAM_RECORD_FAILED:
					return "NetStream.Record.Failed";
				case STREAM_RECORD_NO_ACCESS:
					return "NetStream.Record.NoAccess";
				case STREAM_RECORD_START:
					return "NetStream.Record.Start";
				case STREAM_RECORD_STOP:
					return "NetStream.Record.Stop";
				case STREAM_SEEK_FAILED:
					return "NetStream.Seek.Failed";
				case STREAM_SEEK_INVALID_TIME:
					return "NetStream.Seek.InvalidTime";
				case STREAM_SEEK_NOTIFY:
					return "NetStream.Seek.Notify";
				case STREAM_SEEK_COMPLETE:
					return "NetStream.Seek.Complete";
				case STREAM_SEEK_START:
					return "NetStream.SeekStart.Notify";
				case STREAM_STEP_NOTIFY:
					return "NetStream.Step.Notify";
				case STREAM_UNPAUSE_NOTIFY:
					return "NetStream.Unpause.Notify";
				case STREAM_UNPUBLISH_SUCCESS:
					return "NetStream.Unpublish.Success";
				case STREAM_CONNECT_IO_ERROR:
					return "NetStream.Connect.IOError";
				case STREAM_CONNECT_SECURITY_ERROR:
					return "NetStream.Connect.SecurityError";
				case STREAM_CONNECT_ASYNC_ERROR:
					return "NetStream.Connect.AsyncError";
				case STREAM_VIDEO_DIMENSIONS_CHANGE:
					return "NetStream.Video.DimensionChange";

				case SHARED_OBJECT_BAD_PERSISTENCE:
					return "SharedObject.BadPersistence";
				case SHARED_OBJECT_FLUSH_FAILED:
					return "SharedObject.Flush.Failed";
				case SHARED_OBJECT_FLUSH_SUCCESS:
					return "SharedObject.Flush.Success";
				case SHARED_OBJECT_URI_MISMATCH:
					return "SharedObject.UriMismatch";

				default:
					throw new Error( "Unknown net status type" + type );
			}
		}

		/**
		 * NetStatusType class is static container only.
		 */
		public function NetStatusType()
		{
			throw new Error( "NetStatusType class is static container only." );
		}

		/**
		 * Creates and returns a string representation of the NetStatusType object.
		 */
		public function toint():String
		{
			return "[NetStatusType]";
		}
	}
}