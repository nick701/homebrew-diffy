cask "diffy" do
  version "0.5.0"
  sha256 "ca73a28c22a7dcee05874321c0917d80b42c4d3c40f2ee57c57805367c8b0190"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app for local Git diffs and recent commit history"
  homepage "https://github.com/nick701/diffy"

  depends_on macos: :tahoe

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"

  caveats <<~EOS
    Diffy is ad-hoc signed and not notarized. After install or upgrade, clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Diffy.app
  EOS
end
