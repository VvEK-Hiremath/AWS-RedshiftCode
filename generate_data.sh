for i in $(seq 1 20); do
    driver_id=$(cat /proc/sys/kernel/random/uuid)
    driver_data=$(openssl rand -hex 20)
    customer_id=$(cat /proc/sys/kernel/random/uuid)
    customer_data=$(openssl rand -hex 20)
    order_id=$(cat /proc/sys/kernel/random/uuid)
    order_data=$(openssl rand -hex 20)

    cat <<EOF | tee -a data.sql
    INSERT INTO drivers (id, driver_data) VALUES ('$driver_id', '$driver_data');
    INSERT INTO customers (id, customer_data) VALUES ('$customer_id', '$customer_data');
    INSERT INTO orders (id, driver_id, customer_id, order_data) VALUES ('$order_id', '$driver_id', '$customer_id',  '$order_data');
EOF
done;
