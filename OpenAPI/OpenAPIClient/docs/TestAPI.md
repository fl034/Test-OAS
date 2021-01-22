# TestAPI

All URIs are relative to *https://heyfrank.de*

Method | HTTP request | Description
------------- | ------------- | -------------
[**test**](TestAPI.md#test) | **GET** /oas-test | Test json


# **test**
```swift
    open class func test(completion: @escaping (_ data: TestObject?, _ error: Error?) -> Void)
```

Test json

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Test json
TestAPI.test() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TestObject**](TestObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

