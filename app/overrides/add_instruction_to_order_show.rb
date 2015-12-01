Deface::Override.new(:virtual_path => 'spree/orders/show',
                     :name => 'add_instruction_to_order_show',
                     :insert_before => "fieldset#order_summary legend",
                     :text => "
<% unless @order.paid? %>
  <% source = @order.payments.last.source %>
  <%= render source.instruction_partial_path, source: source if source.respond_to?(:instruction_partial_path)  %>
<% end %>")
