cask "diffy" do
  version "0.2.0"
  sha256 "ea28292d149061241193272bf0a846be6dad2bfcc007ad50cc539c782e95e1b7"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
