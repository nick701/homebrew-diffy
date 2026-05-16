cask "diffy" do
  version "0.4.1"
  sha256 "e02a409845f4d53917c9017ed995b2e077a3e071235f3ebbef8a826e4d5e4caa"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  depends_on macos: ">= :tahoe"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"
end
