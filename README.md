# Nap Time

![Teddy Bear Taking a Nap](https://github.com/homestar9/nap-time/blob/master/nap-time.svg?raw=true)

_The laziest app you've ever used. Guaranteed, or your money back._

This simple app will sleep for a specified amount of time and then return a generic response.  Nap Time is useful tool for when you need to simulate slow third-party server responses or handling timeouts in your API wrappers or other apps.

## Usage

- Configure `server.json` with the port you want to listen on.  
- Start the server using Commandbox: `server start`
- Make a request to the server and append the number of seconds you want to sleep for in the path like this `http://127.0.0.1:{port}/{sleep}/`
- Example: http://127.0.0.1:6969/60/

The server will sleep for the number of seconds specified in the `sleep` parameter and then return a generic response.  The default sleep time is set to 30 seconds if no `sleep` parameter is specified in the path.

## About the Author

Designed and developed by Angry Sam Productions, Inc.  Visit us at [angrysam.com](https://angrysam.com).

## License

This software is licensed under the MIT License.  See the LICENSE file for details.

## Chuck Norris Fact

_"Chuck Norris can write infinite recursion functions... and have them return."_

## Required Attribution

Photo of bear sleeping by [Vecteezy](https://www.vecteezy.com/free-vector/nap-time)