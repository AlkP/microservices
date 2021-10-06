require_relative 'config/environment'

app = -> (env) { [200, { 'Content-Type' => 'text/plain' }, []] }

run app