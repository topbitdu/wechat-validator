# Wechat Validator Road Map 微信服务器验证引擎路线图

## v0.1
1. Signature Checker controller concern
2. Server Validation controller # Index action

## v0.2
1. Improve the Server Validation controller to support the POST request
2. Depend on the wechat-validation v0.2 instead of v0.1

## v0.3
1. Deprecate the Wechat Validator Concerns Signature Checker ::check_signature method, use the Wechat Validator Concerns Signature Validator ::validate_signature instead
2. Deprecate the Wechat Validator Concerns Signature Checker ::check_parameter method, use the Wechat Validator Concerns Signature Validator ::validate_parameter instead

## 1.0
1. Remove the deperated classes & methods
