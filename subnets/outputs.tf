output "subnet_id" {
  value = aws_subnet.main.*.id
}
output "route_table_ids" {
  value = aws_route_table.table.id
}