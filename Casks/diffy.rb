cask "diffy" do
  version "0.4.2"
  sha256 "6082b9a2a081209cf3373c6d47d92902d05c8f35b1279f7e073fba2c0ff4323d"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  depends_on macos: ">= :tahoe"

  app "Diffy.app"

  caveats <<~EOS
    Diffy is ad-hoc signed and not notarized. After install or upgrade, clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Diffy.app
  EOS

  zap trash: "~/Library/Application Support/Diffy"
end
