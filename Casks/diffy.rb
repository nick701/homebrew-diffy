cask "diffy" do
  version "0.3.1"
  sha256 "e20cff6500fa1658a9eb574299367b8d5487371bed9cb94377e2029f08117e9c"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
