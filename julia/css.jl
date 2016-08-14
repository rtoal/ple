function writerule(selector; options...)
  println("$selector {")
  for (prop, value) in options
    println("  $(replace(string(prop), "_", "-")): $value;")
  end
  println("}")
end

writerule("h1", font_family="Helvetica", size="20px")
writerule("p.error", color="red", margin="16px", padding="0")
