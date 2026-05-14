cask "diffy" do
  version "0.3.2"
  sha256 "a7f4cf6e5842f0ca9548b5c698f2851d4ede17752aba34b6215fae57352acf68"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
