# Wechat Validator 微信服务器验证器引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/wechat-validator.svg)](https://badge.fury.io/rb/wechat-validator)

The Wechat Server Validator Engine is an engine which handles the Wechat server validation requests.
微信服务器验证引擎是一个处理[微信服务器验证](http://mp.weixin.qq.com/wiki/8/f9a0b8382e0b77d87b3bcc1ce6fbc104.html#.E7.AC.AC.E4.BA.8C.E6.AD.A5.EF.BC.9A.E9.AA.8C.E8.AF.81.E6.9C.8D.E5.8A.A1.E5.99.A8.E5.9C.B0.E5.9D.80.E7.9A.84.E6.9C.89.E6.95.88.E6.80.A7)请求的引擎。

## Usage
In the application's /config/routes.rb file, add the following line:
```ruby
mount Wechat::Validator::Engine, at: '/wechat-validator'
```

In the application's /config/secrets.yml file, add the following line for the development, test, and production categories. The wechat_validation_token should be identical with the [token configured](http://mp.weixin.qq.com/wiki/8/f9a0b8382e0b77d87b3bcc1ce6fbc104.html#.E7.AC.AC.E4.B8.80.E6.AD.A5.EF.BC.9A.E5.A1.AB.E5.86.99.E6.9C.8D.E5.8A.A1.E5.99.A8.E9.85.8D.E7.BD.AE).
```yaml
wechat_validation_token: {Your Wechat Validation Token}
```

Configure the following URL in the [Wechat](http://mp.weixin.qq.com/wiki/8/f9a0b8382e0b77d87b3bcc1ce6fbc104.html#.E7.AC.AC.E4.B8.80.E6.AD.A5.EF.BC.9A.E5.A1.AB.E5.86.99.E6.9C.8D.E5.8A.A1.E5.99.A8.E9.85.8D.E7.BD.AE):
http://{your.domain.name}/wechat-validator/server_validations
