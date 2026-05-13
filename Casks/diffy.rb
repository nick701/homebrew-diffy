cask "diffy" do
  version "0.1.0"
  sha256 "fbae6e1b2f03dbdb21e29363499e74f3f6ffb35eed1a77ef8ec3a1227f43d208"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
