def procesar_hash(hash,proc)
    hash.inject({}){|hash_retorno,(clave,valor)| hash_retorno[valor] =proc.call(clave); hash_retorno}
end