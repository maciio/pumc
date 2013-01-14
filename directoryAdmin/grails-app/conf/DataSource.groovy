base.esquema = 'pumc'
dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
    username = "root"
    password = "admin"
    properties {
        maxActive = 50
        maxIdle = 25
        minIdle = 5
        initialSize = 5
        minEvictableIdleTimeMillis = 1800000
        timeBetweenEvictionRunsMillis = 1800000
        maxWait = 10000
        ValidationQuery = 'select 1'
    }
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}

hibernateProperties {
    hibernate.show_sql = false
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost/${base.esquema}?useUnicode=yes&useOldAliasMetadataBehavior=true"
        }
        hibernate {
            show_sql = false
        }
    }
    test {
        dataSource {
            dbCreate = "create" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost/${base.esquema}?useUnicode=yes&useOldAliasMetadataBehavior=true"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis = 1800000
                timeBetweenEvictionRunsMillis = 1800000
                numTestsPerEvictionRun = 3
                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = true
                validationQuery = "SELECT 1"
            }
        }
    }
}
