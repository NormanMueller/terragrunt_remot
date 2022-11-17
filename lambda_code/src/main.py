def lambda_handler(event, context):
    print("hi")
    result = "Hello World and Sky"
    return {
        'statusCode' : 200,
        'body': result
    }