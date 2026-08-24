view:dim_customer{
sql_table_name:dim_customer;;

dimension : customer_id{
    primary_key:yes
    type:string
    sql: ${TABLE}.customer_id;;
    }
dimension : customer_name{
    type:string
    sql: ${TABLE}.customer_name;;
    }
dimension : segment{
    type:string
    sql: ${TABLE}.segment;;
    }
dimension : country{
    type:string
    sql: ${TABLE}.country;;
    }
dimesnion : city{
    type:string
    sql: ${TABLE}.city;;
    }
}
