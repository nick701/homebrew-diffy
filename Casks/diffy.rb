cask "diffy" do
  version "0.4.3"
  sha256 "b76e2fd8a76acc8990da262ed30571b0c494dc6d3e3eaea2833ec1d1d9efe2ec"

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
