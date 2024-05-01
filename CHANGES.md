# 1.2.0

* Minor implementation improvements. See PR [#5](https://github.com/Vonage/vonage-rails/pull/5) for details.

# 1.1.0

* Migrating to Vonage [https://github.com/Vonage/vonage-rails](https://github.com/Vonage/vonage-rails) from [https://github.com/Nexmo/nexmo-rails](https://github.com/Nexmo/nexmo-rails)
* Adding delegators for `messaging`, `number_insight_2`, `subaccounts`, `users`, `verify2`
* Updating specs

# 1.0.0

* Renamed `calls` to `voice` in the delegators within the `Nexmo` module, in accordance with the v7.0.0 release of the Nexmo Ruby SDK, please see the [SDK changelog](https://github.com/Nexmo/nexmo-ruby/blob/master/CHANGES.md) for details.

# 0.5.0

* Upgraded `nexmo-ruby` dependency to `6.0.0`. There are backwards incompatible changes in the latest version of `nexmo-ruby`, please see the [changelog](https://github.com/Nexmo/nexmo-ruby/blob/master/CHANGES.md) for details.

# 0.4.2

* Fixed bug when initializing with Credentials and no private key provided

# 0.4.1

* Added support for Rails Credentials, in addition to environment variables! 🙌

# 0.3.1

* Fixed initialization of `private key` to read the file in the path defined in the config

# 0.3.0

* Fixed compatibility issue with Nexmo Ruby Client library and now passing in a hash to initialize a new instance
* Renamed `api_signature` to `signature_secret` in `nexmo_initializer_generator.rb` to conform to naming in Nexmo Ruby Client library
<br>
(NOTE: **This is a breaking change**. Upon upgrading to 0.3.0, it is recommended to rerun the initializer.)

# 0.2.0

* Added support for account, alerts, conversions, files and pricing Client methods 

# 0.1.0

* First version!