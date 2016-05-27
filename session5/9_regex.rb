def tree_parser(trees)
  trees.scan(/(^.*)[,|;].*(\d.*\d.+),.*(\D\d*.\d\d)/)
end

def trees_to_html(trees)
  result = '
  <!doctype html>
  <html>
    <head><title>Green Thumb Nursery </title></head>
    <body>
      <h1>Catalog</h1>
      <table>
        <tr>
          <td>Type of tree</td>
          <td>Size of the tree</td>
          <td>Price of the tree</td>
        </tr>
  '

  tree_parser(trees).each do |t, s, p|
    result << "
      <tr>
        <td>#{t}</td>
        <td>#{s}</td>
        <td>#{p}</td>
      </tr>
    "
  end

  result << '
      </table>
    </body>
  </html>
  '
  result
end
