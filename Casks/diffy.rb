cask "diffy" do
  version "0.4.0"
  sha256 "883ce077d196306ea4b99af470a6f85a38c68ef772799e8e084240641a3fb3a9"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
