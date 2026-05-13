cask "diffy" do
  version "0.1.1"
  sha256 "91bc9b24f5b311335aa95a6d86da932ea4038b0ea34eb55520651188165928ff"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
