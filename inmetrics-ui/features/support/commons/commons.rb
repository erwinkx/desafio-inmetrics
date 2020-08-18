def buscar_na_massa(keys)
    data = buscar(keys, INMETRICS_STANDARD_DATA)
    return data unless data.nil?
end

def buscar(keys, data)
  keys = keys.split(' ') if keys.instance_of? String
  keys.each do |key|
    data = data[key]
    break if data.nil?
  end
  data
end