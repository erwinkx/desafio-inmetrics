def post(endpoint, body)
  HTTParty.post(
  endpoint,
  headers: {'Content-Type' => 'application/json', 
  'Authorization' => 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='},
  body: body.to_json
  )
end

def get(endpoint)
  HTTParty.get(
  endpoint,
  headers: {'Accept' => 'application/json',
  'Authorization' => 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='}
  )
end

def delete(endpoint)
  HTTParty.delete(
  endpoint,
  headers: {'Content-Type' => 'application/json',
  'Authorization' => 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='}
  )
end

def put(endpoint, body)
  HTTParty.put(
  endpoint,
  headers: {'Content-Type' => 'application/json',
  'Authorization' => 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='},
  body: body.to_json
  )
end