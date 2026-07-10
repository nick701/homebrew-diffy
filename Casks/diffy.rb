cask "diffy" do
  version "0.4.6"
  sha256 "06b23ecd32e4d02c6f0a60b1f3b2f33043bd647405743851a223ad5553e0690a"

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
