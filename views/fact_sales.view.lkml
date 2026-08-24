view : fact_sales {
sql_table_name: `karan-1818.looker_portfolio.fact_sales`;;

dimension : order_id{
    primary_key : yes
    type : string
    sql : ${TABLE}.order_id ;;
    }

dimension_group : order_date{
    type : time
    timeframes : [date,week,month,quarter,year]
    sql : ${TABLE}.order_date;;
    }
dimension : customer_id{
    type : string
    sql : ${TABLE}.customer_id;;
    }

    dimension : product_id{
    type : string
    sql : ${TABLE}.product_id;;
    }

dimension : discount{
    type : number
    sql : ${TABLE}.discount;;
    value_format_name :"#00.00%"
    }


dimension : sales_channel{
    type : string
    sql : ${TABLE}.sales_channel;;
    }

dimension : payment_method{
    type : string
    sql : ${TABLE}.payment_method;;
    }

measure : total_sales{
    type : sum
    sql : ${TABLE}.sales;;
    }

measure : total_profit{
    type : sum
    sql : ${TABLE}.profit;;
    }

measure : total_units{
    type : sum
    sql : ${TABLE}.quantity;;
    }

measure : order_count {
    type : count_distinct 
    sql : ${TABLE}.order_id;;
    }

measure : average_order_value{
    type: number
    sql :  ${TABLE}.total_sales/ ${TABLE}.order_count 
    }

measure : profit_margin{
    type : number
    sql :  ${TABLE}.total_profit/ ${TABLE}.total_sales
    value_format_name : "#00.00%"
    }
}