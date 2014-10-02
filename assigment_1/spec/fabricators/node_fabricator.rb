Fabricator(:node) do
  index 0
  size_of_tree 1
  state :opened
end

Fabricator(:opened_node, from: :node) do
  state :opened
end

Fabricator(:closed_node, from: :node) do
  state :closed
end
