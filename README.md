#  KeyValueStore

`KeyValueStore` fue pensado para eliminar la dependencia directa de servicios como `UserDefaults` , `NSUbiquitousKeyValueStore` o Keychain, permitiendo utilizar una interfaz común entre ellos. 

Aquí también encontrarán un ejemplo `MemoryKeyValueStore` que pretende ser un posible mock, en caso de que quieran probar comportamientos de la aplicación dado ciertos estados de manera un poco más sensilla, solo escribiendo los datos en el dicionario inicial. 

Finalmente se crea un Wrapper sobre `KeyValueStore` llamado `KeyValueStoreService`, que pretende ocultar un poco la implementación del store, exponiendo solo subscripts utilizando `Key<T>` a modo de asegurar el tipo de dato que está asociada a una llave constante. 

Utilizando `Key<T>` como parte de `KeyValueStoreService`, nos permite al extenderlo obtener autocompletado facilitando y exponiendo las llaves válidas a utilizar. 


