view : product{
sql_table_name: `karan-1818.looker_portfolio.dim_product`;;

dimension : product_id{
    primary_key : yes
    type : string
    sql : ${TABLE}.product_id;;
    }

dimension : product_name{
    type : string
    sql : ${TABLE}.product_name;;
    }

dimension : category{
    type : string
    sql : ${TABLE}.category;;
    }
dimension : subcategory{
    type : string
    sql : ${TABLE}.subcategory;;
    }
dimension : brand{
    type : string
    sql : ${TABLE}.brand;;
    }
dimension : unit_cost{
    type : number
    sql : ${TABLE}.unit_cost;;
    }
dimension : unit_price{
    type : number
    sql : ${TABLE}.unit_price;;
    }
dimension : profit_per_unit{
    type : number
    sql : ${TABLE}.unit_price - ${TABLE}.unit_cost;;
    value_format_name : eur
    }
}