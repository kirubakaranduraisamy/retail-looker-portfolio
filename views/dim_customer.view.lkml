view: dim_customer{
sql_table_name:`karan-1818.looker_portfolio.dim_customer`;;

dimension : customer_id{
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_id;;
    }
dimension : customer_name{
    type: string
    sql: ${TABLE}.customer_name;;
    }
dimension : segment{
    type: string
    sql: ${TABLE}.segment;;
    }
dimension : country{
    type: string
    sql: ${TABLE}.country;;
    }
dimension : city{
    type: string
    sql: ${TABLE}.city;;
    }
}
