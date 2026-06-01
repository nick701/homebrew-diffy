cask "diffy" do
  version "0.4.5"
  sha256 "8c45c2fc1ef2569b411ff73814660ed96152785aac0813b015ec7657337bd115"

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
