cask "diffy" do
  version "0.9.4"
  sha256 "508dff3315b0f5f9afef5801d069ca0cd45970f1dca62f63d61fe3c8976651b3"

  url "https://github.com/tiliakoos/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app for local Git diffs and recent commit history"
  homepage "https://github.com/tiliakoos/diffy"

  depends_on macos: :tahoe

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"

  caveats <<~EOS
    Diffy is ad-hoc signed and not notarized. After install or upgrade, clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Diffy.app
  EOS
end
