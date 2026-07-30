cask "diffy" do
  version "0.8.0"
  sha256 "4aa570ea87b4b1951a30385dfd79ab26574fbfdec40e2a354c3d1ab91f88d9bc"

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
