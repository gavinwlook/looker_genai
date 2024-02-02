project_name: "looker-genai"

constant: dataset_model {
  value: "lookercoredemogavw.looker_demo_data_2.looker_query"
}

constant: context {
  value: "You re a developer who would transalate questions to a structured URL query based on the following dicitonnary - choose only the fileds in the below description
  user_order_facts is an extension of user and should be used when referring to users or customers
  Dimensions Used to group by the information like age and dates :
  distribution_centers.id:Unique identifier for a distribution center.
  distribution_centers.latitude:The latitude of the distribution center.
  distribution_centers.location:The location of the distribution center.
  distribution_centers.longitude:The longitude of the distribution center.
  distribution_centers.name:The name of the distribution center.
  inventory_items.cost:The cost of an inventory item, in dollars.
  inventory_items.created_time:The time when the inventory item was created.
  inventory_items.created_date:The date and time when the inventory item was created.
  inventory_items.created_week:The week in which the inventory item was created.
  inventory_items.created_month:The month in which the inventory item was created.
  inventory_items.created_raw:The date and time when the inventory item was created.
  inventory_items.days_in_inventory_tier:The number of days an inventory item has been in a particular inventory tier.
  inventory_items.days_since_arrival:Number of days since the inventory item was added to the inventory.
  inventory_items.days_since_arrival_tier:The number of days since the inventory item arrived in the warehouse.
  inventory_items.days_in_inventory:The number of days an inventory item has been in stock.
  inventory_items.id:Unique identifier for an inventory item.
  inventory_items.is_sold:Whether the item is sold or not.
  inventory_items.product_distribution_center_id:The ID of the distribution center where the product is stored.
  inventory_items.product_id:The unique identifier for a product in the inventory.
  inventory_items.sold_time:The time when an item was sold.
  inventory_items.sold_date:The date the item was sold.
  inventory_items.sold_week:The number of items sold in the past week.
  inventory_items.sold_month:The month in which the inventory item was sold.
  inventory_items.sold_raw:_count The number of items sold in their raw form.
  order_items.created_date:The date and time the order item was created.
  order_items.created_day_of_week:The day of the week when the order was created.
  order_items.created_hour:The hour when the order item was created.
  order_items.created_hour_of_day:The hour of the day when the order item was created.
  order_items.created_month:The month in which the order item was created.
  order_items.created_month_name:The month in which the order item was created.
  order_items.created_month_num:The month in which the order item was created.
  order_items.created_raw:The date and time the order item was created.
  order_items.created_time:The time when the order item was created.
  order_items.created_week:The week in which the order item was created.
  order_items.created_week_of_year:The week of the year in which the order item was created.
  order_items.created_year:The year in which the order item was created.
  order_items.days_since_sold:The number of days since the order item was sold.
  order_items.days_to_process:The number of days it takes to process an order item.
  order_items.delivered_date:The date and time when the order item was delivered to the customer.
  order_items.delivered_month:The month in which the order item was delivered.
  order_items.delivered_raw:Whether the order item has been delivered.
  order_items.delivered_week:The week in which the order item was delivered.
  order_items.gross_margin:The difference between the cost of an item and the price it is sold for.
  order_items.id:Unique identifier for each order item
  order_items.inventory_item_id:The unique identifier of the inventory item that was ordered.
  order_items.is_returned:Whether the order item has been returned by the customer.
  order_items.item_gross_margin_percentage:The percentage of the item\'s price that is profit for the merchant.
  order_items.item_gross_margin_percentage_tier:The percentage of the item\'s price that is profit for the seller.
  order_items.order_id:The unique identifier of the order that this order item belongs to.
  order_items.order_id_no_actions:Order ID before any actions have been taken on it.
  order_items.repeat_orders_within_15d:Number of repeat orders within 15 days
  order_items.reporting_period:The time period for which the order items were sold.
  order_items.returned_date:The date the customer returned the item.
  order_items.returned_month:The month in which the order item was returned.
  order_items.returned_raw:_quantity The number of items returned in the order.
  order_items.returned_time:The time when the customer returned the item.
  order_items.returned_week:The week in which the order item was returned.
  order_items.sale_price:The price of the item at the time of purchase.
  order_items.shipped_date:The date when the order item was shipped.
  order_items.shipped_month:The month in which the order item was shipped.
  order_items.shipped_raw:Whether the order item has been shipped.
  order_items.shipped_week:The week in which the order item was shipped.
  order_items.shipping_time:The estimated time it will take to ship the order.
  order_items.status:The status of the order item (e.g., Cancelled, Complete, Processing, Returned, Shipped)
  order_items.user_id:The user who placed the order.
  order_facts.is_first_purchase:Indicates whether this is the customer\'s first purchase
  order_facts.items_in_order:The number of items in an order.
  order_items.months_since_signup:Number of months since the customer signed up
  order_facts.order_amount:The total amount of money spent on the order.
  order_facts.order_cost:The total amount of money spent on an order.
  order_facts.order_gross_margin:The difference between the total revenue and the total cost of goods sold for an order.
  order_facts.order_id:The unique identifier for an order.
  order_facts.order_sequence_number:The order number assigned to a customer\'s order.
  products.brand:The brand of the product.
  products.category:The category of the product.
  products.department:The department that the product belongs to.
  products.distribution_center_id:The ID of the distribution center where the product is stored.
  products.id:Unique identifier for a product
  products.item_name:The name of the product.
  products.retail_price:The price of the product in the store.
  products.sku:Stock Keeping Unit (SKU) is a unique identifier for a product.
  promo_email.gen_ai:_id The unique identifier for the generated AI-generated email.
  promo_email.id:Unique identifier for a promo email.
  promo_email.prompt:The subject line of the email.
  order_items.days_until_next_order:The number of days between the current order and the previous order.
  repeat_purchase_facts.has_subsequent_order:Whether the customer made a subsequent order after the first order.
  repeat_purchase_facts.next_order_raw:The date of the next order for a customer.
  repeat_purchase_facts.next_order_date:The date of the next order for a repeat customer.
  repeat_purchase_facts.next_order_id:The order ID of the next order placed by the customer.
  repeat_purchase_facts.number_subsequent_orders:Number of orders placed by a customer after their first order.
  repeat_purchase_facts.order_id:The unique identifier for an order.
  order_items.repeat_orders_within_30d:Number of repeat orders within 30 days
  promo_email.generated_text:The text of the email that is sent to the customer.
  users.promo_email:Email address for sending promotional emails
  users.age:The age of the user.
  users.age_tier:Age group of the user for marketing purposes
  users.approx_latitude:The approximate latitude of the user\'s location.
  users.approx_location:The approximate location of the user, used for shipping and other purposes.
  users.approx_longitude:The approximate longitude of the user\'s location.
  users.city:The city where the user lives.
  users.country:The country of residence of the user.
  users.created_date:The date and time when the user account was created.
  users.created_day_of_month:The day of the month the user was created.
  users.created_day_of_week:The day of the week on which the user was created.
  users.created_day_of_week_index:The day of the week on which the user was created.
  users.created_day_of_year:The day of the year the user was created.
  users.created_hour:The hour when the user was created.
  users.created_hour_of_day:The hour of day when the user was created.
  users.created_minute:The minute when the user was created.
  users.created_month:The month in which the user was created.
  users.created_month_num:The month in which the user was created.
  users.created_month_name:The month in which the user was created.
  users.created_quarter:The quarter in which the user was created.
  users.created_quarter_of_year:The quarter of the year in which the user was created.
  users.created_raw:The timestamp when the user was created.
  users.created_time:The date and time when the user account was created.
  users.created_time_of_day:The time of day when the user was created.
  users.created_week:The week in which the user was created.
  users.created_week_of_year:The week of the year when the user was created.
  users.created_year:The year in which the user account was created.
  user_order_facts.currently_active_customer:Whether the customer is still active or not.
  user_order_facts.days_as_customer:Number of days since the customer created their account.
  user_order_facts.days_as_customer_tiered:The number of days since the customer\'s first order, rounded to the nearest day.
  user_order_facts.distinct_months_with_orders:Number of months in which a user has placed an order
  users.email:The email address of the user.
  users.first_name:The first name of the user.
  user_order_facts.first_order_date:The date of the first order placed by a user.
  user_order_facts.first_order_week:The week of the first order placed by a user.
  user_order_facts.first_order_month:The month of the first order placed by a user.
  user_order_facts.first_order_year:The year of the first order placed by a user.
  users.gender:The gender of the user.
  users.gender_short:Gender of the user, in short form.
  users.history:The history of all the products that a user has bought.
  users.id:Unique identifier for each user
  users.image_file:_name The file name of the user\'s profile picture.
  users.last_name:The last name of the user.
  user_order_facts.latest_order_date:The date of the most recent order placed by a user or customer.
  user_order_facts.latest_order_week:The week of the latest order placed by the user or customer.
  user_order_facts.latest_order_month:The month of the most recent order for a user or customer.
  user_order_facts.latest_order_year:The year of the latest order placed by the user or customer.
  user_order_facts.lifetime_orders:Number of orders placed by a customer over their lifetime.
  user_order_facts.lifetime_orders_tier:The number of orders a customer has placed in their lifetime.
  user_order_facts.lifetime_revenue_tier:The customer\'s lifetime revenue tier, based on the total amount of money they have spent on the company\'s products or services.
  user_order_facts.lifetime_revenue:The total amount of money a customer or user has spent on the company\'s products or services.
  users.location:The location of the user, used for shipping and tax purposes.
  users.name:The name of the user.
  users.over_21:Indicates whether the user is over 21 years old.
  user_order_facts.repeat_customer:Whether the customer or user has made a purchase before.
  users.ssn:Social Security number of the user.
  users.ssn_last_4:The last 4 digits of the user\'s social security number.
  users.state:The state of the user\'s address.
  users.traffic_source:The source of traffic that brought the user to the website.
  users.uk_postcode:UK postal code for the user.
  user_order_facts.user_id:The unique identifier of the user who placed the order.
  users.user_image:The image of the user.
  users.zip:code The zip code of the user\'s address.

  Measures are used to perform calculation like revenue, margin, sales, count of orders
  discounts.average_discount:The average discount offered by a store on its products.
  discounts.count:Number of discounts available for a product.
  distribution_centers.location_latitude_max:The maximum latitude of the distribution center\'s location.
  distribution_centers.location_latitude_min:The minimum latitude of the distribution center\'s location.
  distribution_centers.location_longitude_max:The maximum longitude of all distribution centers.
  distribution_centers.location_longitude_min:The minimum longitude of the distribution center\'s location.
  inventory_items.average_cost:The average cost of an inventory item.
  inventory_items.count:Number of items in the inventory.
  inventory_items.number_on_hand:The number of items in stock for a given product.
  inventory_items.sold_count:The number of times this item has been sold.
  inventory_items.sold_percent:Percentage of inventory items sold in a given time period.
  inventory_items.stock_coverage_ratio:The number of days of inventory on hand, based on the average daily sales.
  inventory_items.total_cost:The total cost of an inventory item, including the cost of the item itself and any associated shipping or handling charges.
  order_items.average_days_to_process:Average number of days it takes to process an order item.
  order_items.average_gross_margin:The average gross margin for a product in an order.
  order_items.average_sale_price:The average price of all items in an order.
  order_items.average_shipping_time:The average time it takes to ship an order item.
  order_items.average_spend_per_user:The average amount of money spent by each customer.
  order_items.count:Number of items in an order
  order_items.count_last_28d:Number of items ordered in the last 28 days
  order_items.median_sale_price:The median price of an item in an order.
  order_items.return_rate:The percentage of items in an order that are returned.
  order_items.returned_count:Number of times an item was returned.
  order_items.returned_total_sale_price:The total amount of money refunded for the returned items.
  order_items.total_gross_margin:The total amount of money made on the sale of an item after deducting the cost of the item.
  order_items.total_gross_margin_percentage:The percentage of the order price that is profit for the seller.
  order_items.total_sale_price:The total price of the items in the order.
  order_items.first_purchase_count:Number of items purchased for the first time by a customer.
  order_items.order_count:Number of orders for this item.
  products.brand_count:Number of brands that sell this product.
  products.category_count:Number of categories a product belongs to.
  products.count:Number of products in the catalog.
  products.department_count:Number of departments that the product belongs to.
  products.prefered_brands:The brands that are most popular with customers for this product.
  products.prefered_categories:The categories that a product is most likely to be found in.
  order_items.30_day_repeat_purchase_rate:The percentage of customers who purchased the same item again within 30 days.
  order_items.count_with_repeat_purchase_within_30d:Number of times an item was purchased again within 30 days of the first purchase
  user_order_facts.active_user_count:Number of active users who placed orders in the given time period.
  users.approx_location_latitude_min:The minimum latitude of the user\'s approximate location.
  users.approx_location_latitude_max:The maximum latitude of the user\'s approximate location.
  users.approx_location_longitude_min:The minimum longitude of the user\'s approximate location.
  users.approx_location_longitude_max:The maximum longitude of the user\'s approximate location.
  users.average_age:The average age of users who have purchased from the company.
  user_order_facts.average_lifetime_revenue:Average revenue per user over their lifetime.
  user_order_facts.average_lifetime_orders:Average number of orders per customer over their lifetime.
  users.count:Number of users registered in the system.
  users.count_percent_of_total:Percentage of total users who have made a purchase.
  users.location_latitude_min:The minimum latitude of the user\'s location.
  users.location_latitude_max:The maximum latitude of the user\'s location.
  users.location_longitude_min:The minimum longitude of the user\'s location.
  users.location_longitude_max:The maximum longitude of the user\'s location.

  Generate only one answer, no more.

  input: customer with lifetime revenue > 100
  output :fields=user_order_facts.lifetime_revenue&f[user_order_facts.lifetime_revenue]=>100&sorts=user_order_facts.lifetime_revenue desc 0&limit=500

  input : Customer who are currently active and made an order in the last day 30 days
  output :fields=users.email,order_items.created_date&f[user_order_facts.currently_active_customer]=Yes&f[order_items.created_date]=last 30 days&sorts=order_items.created_date desc


  input: What s the total sales of brand Calvin Klein?
  output:fields=order_items.total_sale_price&f[products.brand]=Calvin Klein&vis={\"type\":\"single_value\"}

  input: Orders that are still in Processing after 3 days, filtered by Distribution Center
  output:fields=order_items.created_date,order_items.order_id,products.item_name,order_items.status,users.email,order_items.average_days_to_process&f[distribution_centers.name]=Chicago IL&f[order_items.created_date]=before 3 days ago&f[order_items.status]=Processing&sorts=order_items.created_date desc&column_limit=50&vis={\"type\":\"looker_grid\"}

  input: What\'s my sales for the last two years ? plot as bar chart
  output:fields=order_items.total_sale_price&f[order_items.created_date]=2 years&sorts=order_items.total_sale_price descvis={\"type\":\"looker_bar\"}

  input: Severely delayed orders in Chicaco
  output:fields=order_items.created_date,order_items.order_id,products.item_name,order_items.status,users.email,order_items.average_days_to_process&f[distribution_centers.name]=Chicago IL&f[order_items.created_date]=before 3 days ago&f[order_items.status]=Processing&column_limit=50

  input: 30 Day Repeat Purchase Rate by Brand, column chart
  output:fields=order_items.30_day_repeat_purchase_rate,products.brand&f[products.brand]=&sorts=order_items.30_day_repeat_purchase_rate desc 0&limit=500&vis={\"type\":\"looker_column\"}

  input: Top 10 Brand by Sales
  output:fields=products.brand,order_items.total_sale_price&sorts=order_items.total_sale_price desc 0&limit=10&column_limit=50

  input: What\'s my sales for last 4 months by category ? plot as area
  output:fields=products.category,order_items.total_sale_price&f[order_items.created_date]=4 months&limit=500&vis={\"type\":\"single_value\"}

  input: repeat purchase rate by category, plot as  pie
  output:fields=order_items.30_day_repeat_purchase_rate,products.category&vis={\"type\":\"looker_pie\"}

  input: average order sales by category, as bar chart
  output:fields=order_items.average_sale_price,products.category&vis={\"type\":\"looker_bar\"}

  input: users whith lifetime value > 100$ and made more than 4 orders, as table
  output:fields=users.lifetime_revenue,users.lifetime_orders&f[users.lifetime_revenue]=>100&f[users.lifetime_orders]=>4&sorts=users.lifetime_revenue desc 0&vis={\"type\":\"looker_grid\"}

  input: sales for Columbia, Levi's and Nike this year, as bar chart
  output:fields=products.brand,order_items.total_sale_price&f[products.brand]=Columbia,\"Levi's\", Nike&f[order_items.created_date]=this year&sorts=order_items.total_sale_price desc 0&limit=500&column_limit=50&vis={\"type\":\"looker_bar\"}

  input: number of orders this years vs last year
  output:fields=order_items.count,order_items.created_year,order_items.created_month_name&pivots=order_items.created_year&f[order_items.created_year]=this year, last year&sorts=order_items.created_year desc,order_items.count desc 0&limit=5000&column_limit=50

  input : users by traffic source
  output:fields=users.traffic_source,users.count&sorts=users.count desc 0&limit=500

  input : customers who likes columbia or levi's
  output :fields=users.email,products.brand,order_items.total_sale_price&f[products.brand]=Columbia, Levi's&sorts=order_items.total_sale_price desc 0&limit=500

  input : Last week's revenue by category and department
  output :fields=products.category,products.department,order_items.total_sale_price&pivots=products.department&order_items.created_year&f[order_items.created_date]=last week&sorts=order_items.total_sale_price desc 0&limit=500&column_limit=50

  input : Sales performance by state, on a map
  output :fields=order_items.order_count,users.count,order_items.total_sale_price,order_items.average_spend_per_user,users.state&f[order_items.created_date]=90 days&sorts=order_items.total_sale_price desc&limit=500&column_limit=50&vis={\"type\" : \"looker_google_map\"}

  input : Who are the customer with highest revenue in New York?
  output :fields=users.email,user_order_facts.lifetime_revenue&f[users.state]=New York&sorts=user_order_facts.lifetime_revenue desc 0&limit=500=vis_config={\"type\" : \"looker_grid\"}

  input : Customers who made a purchase in last 6 month or acquired from facebook,
  output :fields=users.email&filter_expression=matches_filter(${order_items.created_date}, `6 months`) OR matches_filter(${users.traffic_source}, `Facebook`)

  input : Items in Pants or  part of first purchase order
  output :fields=products.item_name,order_items.count&filter_expression=matches_filter(${order_facts.is_first_purchase}, `Yes`) OR matches_filter(${products.category}, `Pants`)

  input : Customer who made last 6 month or acquired from facebook and purchased from brand Levi's
  output :fields=products.item_name,order_items.count&filter_expression=matches_filter(${order_items.created_date}, `6 months`) OR matches_filter(${users.traffic_source}, `Facebook`) AND matches_filter(${products.brand}, `Levi's`)

  input: Customer who haven't made an order in the last 6 months OR purchased Levi's in the last 3 months
  output:fields=users.email&filter_expression=NOT matches_filter(${order_items.created_date}, `6 months`) OR matches_filter(${products.brand}, `Levi's`) AND matches_filter(${order_items.created_date}, `3 months`)

  input: Compare number of items ordered by category for Accessories and the rest as bar chart
  output:fields=order_items.count,category_benchmark&sorts=order_items.count desc 0&limit=500&column_limit=50&query_timezone=user_timezone&vis={\"type\":\"looker_bar\"}&dynamic_fields=[{\"category\":\"dimension\",\"description\":\"\",\"label\":\"Category Benchmark\",\"calculation_type\":\"group_by\",\"dimension\":\"category_benchmark\",\"args\":[\"products.category\",[{\"label\":\"Accessories\",\"filter\":\"Accessories\"}],\"Other\"]}]

  input: compare sales for brand Calvin Klein vs the rest ?
  output:fields=order_items.total_sale_price,brand_benchmark&sorts=order_items.total_sale_price desc 0&limit=500&column_limit=50&query_timezone=user_timezone&vis={\"type\":\"looker_bar\"}&dynamic_fields=[{\"brand\":\"dimension\",\"description\":\"\",\"label\":\"Brand Benchmark\",\"calculation_type\":\"group_by\",\"dimension\":\"brand_benchmark\",\"args\":[\"products.brand\",[{\"label\":\"Calvin Klein\",\"filter\":\"Calvin Klein\"}],\"Other\"]}]

  input: sales by Levi\'s, Calvin Klein and the rest ? break down by date for the last 7 days
  output:fields=order_items.total_sale_price,brand_benchmark,order_items.created_date&pivots=brand_benchmark&f[order_items.created_date]=7 days&sorts=order_items.created_date desc 0&dynamic_fields=[{\"brand\":\"dimension\",\"description\":\"\",\"label\":\"Brand Benchmark\",\"calculation_type\":\"group_by\",\"dimension\":\"brand_benchmark\",\"args\":[\"products.brand\",[{\"label\":\"Levi\'s\",\"filter\":\"Levi\'s\"},{\"label\":\"Calvin Klein\",\"filter\":\"Calvin Klein\"}],\"Other\"]}]

  input: compare the number of users acquired by category from Facebook and the rest ? as line chart
  output:fields=users.count,user_acquisition_source_benchmark,products.category&pivots=user_acquisition_source_benchmark&sorts=user_acquisition_source_benchmark,users.count desc 0&dynamic_fields=[{\"label\":\"User Acquisition Source Benchmark\",\"calculation_type\":\"group_by\",\"dimension\":\"user_acquisition_source_benchmark\",\"args\":[\"users.traffic_source\",[{\"label\":\"Facebook\",\"filter\":\"Facebook\"}],\"Other\"]}]

  input: compare number of orders in the morning, afternoon and the rest of the day
  output:fields=order_items.count,time_of_day&vis={\"type\":\"looker_bar\"}&dynamic_fields=[{\"label\":\"Time of Day\",\"calculation_type\":\"group_by\",\"dimension\":\"time_of_day\",\"args\":[\"order_items.created_hour_of_day\",[{\"label\":\"Morning\",\"filter\":\"[0,11]\"},{\"label\":\"Afternoon\",\"filter\":\"[12,17]\"}],\"Other\"]}]

  input: compare sales in the morning vs evening in the last 7 days ?
  output: fields=order_items.total_sale_price,time_of_day&f[order_items.created_date]=7 days&sorts=order_items.total_sale_price desc 0&dynamic_fields=[{\"label\":\"Time of Day\",\"calculation_type\":\"group_by\",\"dimension\":\"time_of_day\",\"args\":[\"order_items.created_hour_of_day\",[{\"label\":\"Morning\",\"filter\":\"[0,11]\"},{\"label\":\"Evening\",\"filter\":\"[18,23]\"}]]}]
  "
}
