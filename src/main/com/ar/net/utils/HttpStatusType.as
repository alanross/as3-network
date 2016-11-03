package com.ar.net.utils
{
	/**
	 * http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class HttpStatusType
	{
		//Informational 1xx
		public static const INFORMATIONAL_CONTINUE:int = 100;
		public static const INFORMATIONAL_SWITCHING_PROTOCOLS:int = 101;

		//Successful 2xx
		public static const SUCCESSFUL_OK:int = 200;
		public static const SUCCESSFUL_CREATED:int = 201;
		public static const SUCCESSFUL_ACCEPTED:int = 202;
		public static const SUCCESSFUL_NON_AUTHORATIVE_INFORMATION:int = 203;
		public static const SUCCESSFUL_NO_CONTENT:int = 204;
		public static const SUCCESSFUL_RESET_CONTENT:int = 205;
		public static const SUCCESSFUL_PARTIAL_CONTENT:int = 206;

		//Redirection 3xx
		public static const REDIRECTION_MULTIPLE_CHOICE:int = 300;
		public static const REDIRECTION_MOVED_PERMANENTLY:int = 301;
		public static const REDIRECTION_FOUND:int = 302;
		public static const REDIRECTION_SEE_OTHER:int = 303;
		public static const REDIRECTION_NOT_MODIFIED:int = 304;
		public static const REDIRECTION_USE_PROXY:int = 305;
		public static const REDIRECTION_UNUSED:int = 306;
		public static const REDIRECTION_TEMPORARY_REDIRECTION:int = 307;

		//Client Error 4xx
		public static const CLIENT_ERROR_BAD_REQUEST:int = 400;
		public static const CLIENT_ERROR_UNAUTHORIZED:int = 401;
		public static const CLIENT_ERROR_PAYMENT_REQUIRED:int = 402;
		public static const CLIENT_ERROR_FORBIDDEN:int = 403;
		public static const CLIENT_ERROR_NOT_FOUND:int = 404;
		public static const CLIENT_ERROR_METHOD_NOT_ALLOWED:int = 405;
		public static const CLIENT_ERROR_NOT_ACCEPTABLE:int = 406;
		public static const CLIENT_ERROR_PROXY_AUTHENTICATION_REQUIRED:int = 407;
		public static const CLIENT_ERROR_REQUEST_TIMEOUT:int = 408;
		public static const CLIENT_ERROR_CONFLICT:int = 409;
		public static const CLIENT_ERROR_GONE:int = 410;
		public static const CLIENT_ERROR_LENGTH_REQUIRED:int = 411;
		public static const CLIENT_ERROR_PRECONDITION_FAILED:int = 412;
		public static const CLIENT_ERROR_REQUEST_ENTITY_TOO_LARGE:int = 413;
		public static const CLIENT_ERROR_REQUEST_URI_TOO_LONG:int = 414;
		public static const CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:int = 415;
		public static const CLIENT_ERROR_REQUEST_RANGE_NOT_SATISFIABLE:int = 416;
		public static const CLIENT_ERROR_EXPECTATION_FAILED:int = 417;

		//Server Error 5xx
		public static const SERVER_ERROR_INTERNAL_SERVER_ERROR:int = 500;
		public static const SERVER_ERROR_NOT_IMPLEMENTED:int = 501;
		public static const SERVER_ERROR_BAD_GATEWAY:int = 502;
		public static const SERVER_ERROR_SERVICE_UNAVAILABLE:int = 503;
		public static const SERVER_ERROR_GATEWAY_TIMEOUT:int = 504;
		public static const SERVER_ERROR_HTTP_VERSION_NOT_SUPPORTED:int = 505;


		public static function isInformational( statusCode:int ):Boolean
		{
			return !( statusCode < 100 || statusCode > 200 );
		}

		public static function isSuccessful( statusCode:int ):Boolean
		{
			return !( statusCode < 200 || statusCode > 300 );
		}

		public static function isRedirection( statusCode:int ):Boolean
		{
			return !( statusCode < 300 || statusCode > 400 );
		}

		public static function isError( statusCode:int ):Boolean
		{
			return ( statusCode > 399 );
		}

		public static function isClientError( statusCode:int ):Boolean
		{
			return !( statusCode < 400 || statusCode > 500 );
		}

		public static function isServerError( statusCode:int ):Boolean
		{
			return !( statusCode < 500 || statusCode > 600 );
		}

		public static function codeToString( statusCode:int ):String
		{
			switch( statusCode )
			{
				//Informational 1xx
				case INFORMATIONAL_CONTINUE:
					return "100 - Continue";
				case INFORMATIONAL_SWITCHING_PROTOCOLS:
					return "101 - Switching Protocols";

				//Successful 2xx
				case SUCCESSFUL_OK:
					return "200 - OK";
				case SUCCESSFUL_CREATED:
					return "201 - Created";
				case SUCCESSFUL_ACCEPTED:
					return "202 - Accepted";
				case SUCCESSFUL_NON_AUTHORATIVE_INFORMATION:
					return "203 - Non-Authoritative Information";
				case SUCCESSFUL_NO_CONTENT:
					return "204 - No Content";
				case SUCCESSFUL_RESET_CONTENT:
					return "205 - Reset Content";
				case SUCCESSFUL_PARTIAL_CONTENT:
					return "206 - Partial Content";

				//Redirection 3xx
				case REDIRECTION_MULTIPLE_CHOICE:
					return "300 - Multiple Choices";
				case REDIRECTION_MOVED_PERMANENTLY:
					return "301 - Moved Permanently";
				case REDIRECTION_FOUND:
					return "302 - Found";
				case REDIRECTION_SEE_OTHER:
					return "303 - See Other";
				case REDIRECTION_NOT_MODIFIED:
					return "304 - Not Modified";
				case REDIRECTION_USE_PROXY:
					return "305 - Use Proxy";
				case REDIRECTION_UNUSED:
					return "306 - (Unused)";
				case REDIRECTION_TEMPORARY_REDIRECTION:
					return "307 - Temporary Redirect";

				//Client Error 4xx
				case CLIENT_ERROR_BAD_REQUEST:
					return "400 - Bad Request";
				case CLIENT_ERROR_UNAUTHORIZED:
					return "401 - Unauthorized";
				case CLIENT_ERROR_PAYMENT_REQUIRED:
					return "402 - Payment Required";
				case CLIENT_ERROR_FORBIDDEN:
					return "403 - Forbidden";
				case CLIENT_ERROR_NOT_FOUND:
					return "404 - Not Found";
				case CLIENT_ERROR_METHOD_NOT_ALLOWED:
					return "405 - Method Not Allowed";
				case CLIENT_ERROR_NOT_ACCEPTABLE:
					return "406 - Not Acceptable";
				case CLIENT_ERROR_PROXY_AUTHENTICATION_REQUIRED:
					return "407 - Proxy Authentication Required";
				case CLIENT_ERROR_REQUEST_TIMEOUT:
					return "408 - Request Timeout";
				case CLIENT_ERROR_CONFLICT:
					return "409 - Conflict";
				case CLIENT_ERROR_GONE:
					return "410 - Gone";
				case CLIENT_ERROR_LENGTH_REQUIRED:
					return "411 - Length Required";
				case CLIENT_ERROR_PRECONDITION_FAILED:
					return "412 - Precondition Failed";
				case CLIENT_ERROR_REQUEST_ENTITY_TOO_LARGE:
					return "413 - Request Entity Too Large";
				case CLIENT_ERROR_REQUEST_URI_TOO_LONG:
					return "414 - Request-URI Too Long";
				case CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:
					return "415 - Unsupported Media Type";
				case CLIENT_ERROR_REQUEST_RANGE_NOT_SATISFIABLE:
					return "416 - Requested Range Not Satisfiable";
				case CLIENT_ERROR_EXPECTATION_FAILED:
					return "417 - Expectation Failed";

				//Server Error 5xx
				case SERVER_ERROR_INTERNAL_SERVER_ERROR:
					return "500 - Internal Server Error";
				case SERVER_ERROR_NOT_IMPLEMENTED:
					return "501 - Not Implemented";
				case SERVER_ERROR_BAD_GATEWAY:
					return "502 - Bad Gateway";
				case SERVER_ERROR_SERVICE_UNAVAILABLE:
					return "503 - Service Unavailable";
				case SERVER_ERROR_GATEWAY_TIMEOUT:
					return "504 - Gateway Timeout";
				case SERVER_ERROR_HTTP_VERSION_NOT_SUPPORTED:
					return "505 - HTTP Version Not Supported";

				default:
					return "(Unknown: " + statusCode + ")";
			}
		}

		/**
		 * HttpStatusType class is static container only.
		 */
		public function HttpStatusType()
		{
			throw new Error( "HttpStatusType class is static container only." );
		}

		/**
		 * Creates and returns a string representation of the HttpStatusType object.
		 */
		public function toString():String
		{
			return "[HttpStatusType]";
		}
	}
}