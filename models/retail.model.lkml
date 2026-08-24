connection : kiru 
include : "views/*.view.lkml"

explore : sales{
    from : fact_sales
    join : dim_customer {
    type : left_outer
    sql_on : ${fact_sales.customer_id} = ${dim_customer.customer_id} ;;
    relationship : many_to_one
    }

    join : dim_product {
    type : left_outer
    sql_on : ${fact_sales.product_id} = ${dim_product.product_id} ;;
    relationship : many_to_one
    }

    join: dim_date {
    type: left_outer
    sql_on: ${fact_sales.order_date_date} = ${dim_date.date} ;;
    relationship: many_to_one
    }
}