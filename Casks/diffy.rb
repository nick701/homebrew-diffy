cask "diffy" do
  version "0.3.0"
  sha256 "adcb1624a8f3e6581851f3919aea2dee4d9c392b3708f027bf91e23be07da3ec"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
